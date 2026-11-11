import os
import json
import base64
import hashlib
import subprocess
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import padding

def main():
    # 1. Load ANITS Private Key
    key_path = os.path.expanduser('~/.onest_anits_security/anits_private.key')
    with open(key_path, 'rb') as f:
        priv_key = serialization.load_der_private_key(f.read(), password=None)
    
    pub_key = priv_key.public_key()
    pub_pem = pub_key.public_bytes(
        encoding=serialization.Encoding.PEM,
        format=serialization.PublicFormat.SubjectPublicKeyInfo
    ).decode('utf-8').strip()

    # 2. Primary Course per Program
    dept_course = {
        'PRG-CSE': ('CSE-ML', 'Machine Learning'),
        'PRG-CSM': ('CSM-NNDL', 'Neural Networks And Deep Learning'),
        'PRG-CSD': ('CSD-BDT', 'Big Data Technologies'),
        'PRG-ECE': ('ECE-VLSID', 'VLSI Design'),
        'PRG-IT':  ('IT-DAA', 'Design and Analysis of Algorithms'),
        'PRG-EEE': ('EEE-PSP', 'Power System Protection'),
        'PRG-MECH': ('MECH-HT', 'Heat Transfer'),
        'PRG-CIVIL': ('CIVIL-SS', 'Steel Structures'),
        'PRG-CHEM': ('CHEM-MT2', 'Mass Transfer-II')
    }

    # 3. Query the 500 unique students via psql
    query = """
    COPY (
      WITH ranked_students AS (
        SELECT s.student_id, s.student_name, s.program_code,
               COALESCE(r.sgpa, 8.50) as sgpa,
               COALESCE(r.cgpa, 8.50) as cgpa,
               COALESCE(r.attendance_percent, 88.50) as attendance_percent,
               COALESCE(r.backlog_count, 0) as backlog_count,
               COALESCE(r.result_status, 'PASSED') as result_status,
               ROW_NUMBER() OVER (
                 PARTITION BY s.program_code 
                 ORDER BY (CASE WHEN s.student_id IN ('A23126510162', 'A23126510001', 'A23126510008', 'A23126512014', 'A23126552064', 'A23126520151', 'A23126502022') THEN 0 ELSE 1 END), s.student_id
               ) as rn
        FROM students s
        LEFT JOIN student_semester_records r ON s.student_id = r.student_id
      )
      SELECT student_id, student_name, program_code, sgpa, cgpa, attendance_percent, backlog_count, result_status
      FROM ranked_students
      WHERE (program_code = 'PRG-CSE' AND rn <= 80)
         OR (program_code = 'PRG-CSM' AND rn <= 80)
         OR (program_code = 'PRG-CSD' AND rn <= 60)
         OR (program_code = 'PRG-ECE' AND rn <= 80)
         OR (program_code = 'PRG-IT'  AND rn <= 60)
         OR (program_code = 'PRG-EEE' AND rn <= 50)
         OR (program_code = 'PRG-MECH' AND rn <= 50)
         OR (program_code = 'PRG-CIVIL' AND rn <= 25)
         OR (program_code = 'PRG-CHEM' AND rn <= 15)
      ORDER BY program_code, student_id
    ) TO STDOUT WITH CSV HEADER;
    """

    psql_path = r"C:\Program Files\PostgreSQL\18\bin\psql.exe"
    proc = subprocess.run([psql_path, "-U", "postgres", "-d", "anits_onest_db", "-c", query],
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, check=True)
    
    lines = proc.stdout.strip().splitlines()
    header = lines[0].split(',')
    records = []
    for line in lines[1:]:
        if not line.strip(): continue
        parts = line.split(',')
        records.append({
            'student_id': parts[0],
            'student_name': parts[1],
            'program_code': parts[2],
            'sgpa': float(parts[3]),
            'cgpa': float(parts[4]),
            'attendance_percent': float(parts[5]),
            'backlog_count': int(parts[6]),
            'result_status': parts[7]
        })

    print(f"Total students fetched from query: {len(records)}")
    assert len(records) == 500, f"Expected exactly 500 students, got {len(records)}"

    # 4. Prepare SQL insert statements
    sql_lines = []
    sql_lines.append("-- Clean and re-seed exactly 500 unique student credentials")
    sql_lines.append("TRUNCATE TABLE credentials;")

    for idx, r in enumerate(records, 1):
        sid = r['student_id']
        prog = r['program_code']
        course_code, course_name = dept_course[prog]
        cred_id = f"ONEST-ANITS-2026-{sid}"
        
        is_backlog = (r['backlog_count'] > 0 or r['result_status'] == 'FAILED_BACKLOG')
        
        if is_backlog:
            comp_status = "INCOMPLETE"
            elig_status = "NOT_ELIGIBLE"
            cred_status = "REJECTED"
            ver_status = "UNVERIFIED"
            data_class = "RESTRICTED"
            final_score = 42.00
            att_percent = min(r['attendance_percent'], 68.50)
            sgpa_val = "NULL"
            cgpa_val = "NULL"
        else:
            comp_status = "COMPLETED"
            elig_status = "ELIGIBLE"
            cred_status = "ACTIVE"
            ver_status = "CERTIFIED"
            data_class = "PUBLIC"
            final_score = round(r['sgpa'] * 10, 2)
            att_percent = r['attendance_percent']
            sgpa_val = f"{r['sgpa']:.2f}"
            cgpa_val = f"{r['cgpa']:.2f}"

        cred_type = "Semester Grade Card (B.Tech Sem-II)"
        start_date = "2025-11-15"
        end_date = "2026-05-30"
        issue_date = "2026-08-20"
        inst_id = "INST-ANITS"

        # Canonical data JSON matching Jackson serialization
        canonical_map = {
            "attendance_percent": f"{att_percent:.2f}",
            "completion_status": comp_status,
            "course_code": course_code,
            "course_end_date": end_date,
            "course_start_date": start_date,
            "credential_id": cred_id,
            "credential_type": cred_type,
            "data_classification": data_class,
            "eligibility_status": elig_status,
            "final_score": f"{final_score:.2f}",
            "institution_id": inst_id,
            "issue_date": issue_date,
            "program_code": prog,
            "student_id": sid
        }

        canonical_json = json.dumps(canonical_map, separators=(',', ':'), sort_keys=True)
        canonical_bytes = canonical_json.encode('utf-8')
        cred_hash = hashlib.sha256(canonical_bytes).hexdigest()

        # Generate RSA-2048 Digital Signature
        sig = priv_key.sign(
            canonical_bytes,
            padding.PKCS1v15(),
            hashes.SHA256()
        )
        sig_b64 = base64.b64encode(sig).decode('utf-8')

        signatories = "Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS"
        key_id = "did:onest:anits:examcell#key-2026"
        sig_algo = "SHA256withRSA"

        # Escape single quotes in PEM
        pub_pem_escaped = pub_pem.replace("'", "''")

        sql = f"""
        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            '{cred_id}', '{sid}', '{inst_id}', '{prog}', '{course_code}',
            '{start_date}', '{end_date}', {att_percent:.2f}, {final_score:.2f},
            '{comp_status}', '{elig_status}', '{cred_type}', '{issue_date}',
            '{cred_status}', '{cred_hash}', '{ver_status}', '{data_class}',
            {sgpa_val}, {cgpa_val}, {r['backlog_count']}, '{signatories}',
            '{sig_b64}', '{sig_algo}', '{pub_pem_escaped}', '{key_id}'
        );"""
        sql_lines.append(sql)

    output_sql_path = "seed_500_credentials.sql"
    with open(output_sql_path, "w", encoding="utf-8") as f:
        f.write("\n".join(sql_lines))

    print(f"Generated SQL file with {len(records)} credentials: {output_sql_path}")

    # 5. Execute SQL against database
    print("Executing SQL in PostgreSQL...")
    run_psql = subprocess.run([psql_path, "-U", "postgres", "-d", "anits_onest_db", "-f", output_sql_path],
                              stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    if run_psql.returncode != 0:
        print("Error executing SQL:", run_psql.stderr)
    else:
        print("SQL execution successful!")

if __name__ == '__main__':
    main()
