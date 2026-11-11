import docx
from docx import Document
from docx.shared import Inches, Pt, RGBColor
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.enum.table import WD_TABLE_ALIGNMENT, WD_ALIGN_VERTICAL
from docx.oxml import OxmlElement, parse_xml
from docx.oxml.ns import nsdecls, qn

def set_cell_background(cell, fill_hex):
    tcPr = cell._tc.get_or_add_tcPr()
    shd = parse_xml(f'<w:shd {nsdecls("w")} w:fill="{fill_hex}"/>')
    tcPr.append(shd)

def set_cell_margins(cell, top=100, bottom=100, left=150, right=150):
    tcPr = cell._tc.get_or_add_tcPr()
    tcMar = parse_xml(f'<w:tcMar {nsdecls("w")}><w:top w:w="{top}" w:type="dxa"/><w:bottom w:w="{bottom}" w:type="dxa"/><w:left w:w="{left}" w:type="dxa"/><w:right w:w="{right}" w:type="dxa"/></w:tcMar>')
    tcPr.append(tcMar)

def create_document():
    doc = Document()

    # Page Margins
    for section in doc.sections:
        section.top_margin = Inches(0.8)
        section.bottom_margin = Inches(0.8)
        section.left_margin = Inches(0.85)
        section.right_margin = Inches(0.85)

    # Styles & Colors
    # Primary Wine: #7A162B
    # Text Primary: #1C1917
    # Secondary: #4B5563
    # Shading Light: #FAF7F2
    # Shading Gray: #F3F4F6
    COLOR_WINE = RGBColor(122, 22, 43)
    COLOR_DARK = RGBColor(28, 25, 23)
    COLOR_MUTED = RGBColor(75, 85, 99)
    COLOR_GREEN = RGBColor(5, 150, 105)
    COLOR_AMBER = RGBColor(217, 119, 6)

    # Base Normal Style
    style_normal = doc.styles['Normal']
    style_normal.font.name = 'Calibri'
    style_normal.font.size = Pt(10.5)
    style_normal.font.color.rgb = COLOR_DARK

    # Document Header / Pre-title
    p_meta = doc.add_paragraph()
    p_meta.paragraph_format.space_before = Pt(0)
    p_meta.paragraph_format.space_after = Pt(4)
    r_meta = p_meta.add_run("ANIL NEERUKONDA INSTITUTE OF TECHNOLOGY & SCIENCES (AUTONOMOUS)")
    r_meta.font.size = Pt(9)
    r_meta.font.bold = True
    r_meta.font.color.rgb = COLOR_WINE

    p_submeta = doc.add_paragraph()
    p_submeta.paragraph_format.space_before = Pt(0)
    p_submeta.paragraph_format.space_after = Pt(14)
    r_sub = p_submeta.add_run("Examination Cell & Academic Registry • Affiliated to AU • NAAC A+ • NBA Accredited")
    r_sub.font.size = Pt(8.5)
    r_sub.font.color.rgb = COLOR_MUTED

    # Title
    p_title = doc.add_paragraph()
    p_title.paragraph_format.space_before = Pt(4)
    p_title.paragraph_format.space_after = Pt(4)
    r_title = p_title.add_run("Institutional Technical Specifications & Demonstration Manual")
    r_title.font.name = 'Georgia'
    r_title.font.size = Pt(22)
    r_title.font.bold = True
    r_title.font.color.rgb = COLOR_WINE

    # Subtitle
    p_sub = doc.add_paragraph()
    p_sub.paragraph_format.space_before = Pt(2)
    p_sub.paragraph_format.space_after = Pt(16)
    r_sub2 = p_sub.add_run("ONEST Verifiable Academic Credentialing Infrastructure: Seeker & Public Verifier Workflows, Flowcharts, Demonstration Scripts & Codebase Architecture")
    r_sub2.font.size = Pt(11.5)
    r_sub2.font.italic = True
    r_sub2.font.color.rgb = COLOR_MUTED

    # Divider Table
    div_table = doc.add_table(rows=1, cols=1)
    div_table.alignment = WD_TABLE_ALIGNMENT.CENTER
    div_cell = div_table.rows[0].cells[0]
    div_cell.width = Inches(6.8)
    set_cell_background(div_cell, "7A162B")
    div_p = div_cell.paragraphs[0]
    div_p.paragraph_format.space_before = Pt(1)
    div_p.paragraph_format.space_after = Pt(1)

    doc.add_paragraph().paragraph_format.space_after = Pt(12)

    # Helper function for headings
    def add_h1(text):
        h = doc.add_paragraph()
        h.paragraph_format.space_before = Pt(18)
        h.paragraph_format.space_after = Pt(6)
        h.paragraph_format.keep_with_next = True
        r = h.add_run(text)
        r.font.name = 'Georgia'
        r.font.size = Pt(15)
        r.font.bold = True
        r.font.color.rgb = COLOR_WINE
        return h

    def add_h2(text):
        h = doc.add_paragraph()
        h.paragraph_format.space_before = Pt(14)
        h.paragraph_format.space_after = Pt(4)
        h.paragraph_format.keep_with_next = True
        r = h.add_run(text)
        r.font.name = 'Georgia'
        r.font.size = Pt(12.5)
        r.font.bold = True
        r.font.color.rgb = COLOR_DARK
        return h

    def add_h3(text):
        h = doc.add_paragraph()
        h.paragraph_format.space_before = Pt(10)
        h.paragraph_format.space_after = Pt(3)
        h.paragraph_format.keep_with_next = True
        r = h.add_run(text)
        r.font.size = Pt(11)
        r.font.bold = True
        r.font.color.rgb = COLOR_WINE
        return h

    def add_callout(speaker_title, narration_text, action_text, outcome_text):
        tbl = doc.add_table(rows=1, cols=1)
        tbl.alignment = WD_TABLE_ALIGNMENT.CENTER
        cell = tbl.rows[0].cells[0]
        cell.width = Inches(6.8)
        set_cell_background(cell, "FAF7F2")
        set_cell_margins(cell, top=140, bottom=140, left=180, right=180)
        
        # Left border Wine
        tcPr = cell._tc.get_or_add_tcPr()
        borders = parse_xml(f'<w:tcBorders {nsdecls("w")}><w:left w:val="single" w:sz="24" w:space="0" w:color="7A162B"/><w:top w:val="none"/><w:right w:val="none"/><w:bottom w:val="none"/></w:tcBorders>')
        tcPr.append(borders)

        p = cell.paragraphs[0]
        p.paragraph_format.space_before = Pt(2)
        p.paragraph_format.space_after = Pt(4)
        r1 = p.add_run(speaker_title.upper() + "\n")
        r1.font.size = Pt(9.5)
        r1.font.bold = True
        r1.font.color.rgb = COLOR_WINE

        p2 = cell.add_paragraph()
        p2.paragraph_format.space_before = Pt(2)
        p2.paragraph_format.space_after = Pt(4)
        r2_lbl = p2.add_run("Spoken Narration: ")
        r2_lbl.font.bold = True
        r2_lbl.font.size = Pt(9.5)
        r2 = p2.add_run(f'"{narration_text}"')
        r2.font.italic = True
        r2.font.size = Pt(9.5)

        p3 = cell.add_paragraph()
        p3.paragraph_format.space_before = Pt(2)
        p3.paragraph_format.space_after = Pt(3)
        r3_lbl = p3.add_run("Demonstrator Action: ")
        r3_lbl.font.bold = True
        r3_lbl.font.size = Pt(9.5)
        r3 = p3.add_run(action_text)
        r3.font.size = Pt(9.5)

        p4 = cell.add_paragraph()
        p4.paragraph_format.space_before = Pt(2)
        p4.paragraph_format.space_after = Pt(2)
        r4_lbl = p4.add_run("System & UI Outcome: ")
        r4_lbl.font.bold = True
        r4_lbl.font.size = Pt(9.5)
        r4 = p4.add_run(outcome_text)
        r4.font.size = Pt(9.5)
        
        doc.add_paragraph().paragraph_format.space_after = Pt(4)

    # ==========================================
    # SECTION 1: ARCHITECTURAL WORKFLOW SPECIFICATIONS
    # ==========================================
    add_h1("1. Architectural Workflow Specifications")

    add_h2("1.1 Seeker (Student / Learner) Workflow")
    p = doc.add_paragraph(
        "The Seeker workflow enables enrolled and graduated students of Anil Neerukonda Institute of Technology & Sciences "
        "to manage, inspect, and share authoritative verifiable academic credentials. All credentials issued by the ANITS "
        "autonomous examination cell are cryptographically sealed with a SHA-256 canonical hash anchored in the ONEST registry."
    )
    p.paragraph_format.space_after = Pt(6)

    seeker_steps = [
        ("Authentication & Profile Resolution", "The student signs in via /seeker/login or navigates to /seeker/dashboard. The security subsystem establishes session state and links the student's unique autonomous registration number (e.g., A23126510162 for Mula Sameera, A23126512014 for Krishna Devi)."),
        ("Live Registry Health Aggregation", "The student console calls GET /api/credentials/student/{studentId} and aggregates four real-time metric counters: Total in Wallet, Valid & Tamper-Free records, Tamper / Hash Mismatch Alerts, and Revoked / Ineligible records."),
        ("Multi-Student Profile Switcher", "For evaluators and multi-candidate verification, an interactive profile switcher bar enables immediate inspection of candidates with distinct academic standings (e.g., CSE High Honor, ECE VLSI Distinction, or Arrear test cases)."),
        ("Dynamic Credential Wallet Audit", "Within /seeker/credentials, every credential card displays an accent spine reflecting its live integrity status: Emerald Green (#059669) for verified credentials, Crimson Red (#DC2626) for integrity violations, and Amber (#D97706) for revoked standing."),
        ("Official Autonomous Certificate Modal", "Clicking 'View Certificate & QR' triggers the Oxford/ANITS academic certificate display, detailing institutional accreditations (AICTE, Andhra University, NAAC A+, NBA), examination tabulation results (SGPA, CGPA, Attendance %, Score %), dynamic QR code, and university signatories."),
        ("Credential Sharing & Public Audit Handshake", "Students can copy their alphanumeric Credential ID with a 1-click clipboard utility, print the certificate, or share the dynamic QR code directly with employers, recruiters, and graduate admissions officers.")
    ]

    for title, desc in seeker_steps:
        bp = doc.add_paragraph(style='List Bullet')
        bp.paragraph_format.space_before = Pt(2)
        bp.paragraph_format.space_after = Pt(4)
        r_t = bp.add_run(f"{title}: ")
        r_t.font.bold = True
        bp.add_run(desc)

    add_h2("1.2 Public Verifier (Employer / University / Public) Workflow")
    p = doc.add_paragraph(
        "The Public Verifier workflow implements zero-trust verification in compliance with open verifiable credential principles. "
        "Any external verifier (recruiter, enterprise background verification agency, or university admissions auditor) can audit "
        "the authenticity and cryptographic integrity of an ANITS academic credential in under 300 milliseconds without requiring "
        "login credentials or subscription licenses."
    )
    p.paragraph_format.space_after = Pt(6)

    verifier_steps = [
        ("Zero-Auth Public Access", "The verifier visits /verify or accesses /verify/{credentialId} directly via QR scan or URL parameter. No JWT authentication token is required for read-only verification."),
        ("Payload Retrieval & Examination Ledger Query", "The platform invokes GET /api/verify/{credentialId}. The backend retrieves the stored record from the PostgreSQL credentials table and verifies the candidate's active standing in student_semester_records."),
        ("Canonical SHA-256 Recomputation", "The VerificationService engine dynamically reconstructs the authoritative data payload string from the stored academic parameters (studentId, institutionId, courseCode, score, issueDate) and calculates its SHA-256 digest: Digest = SHA-256(studentId || institutionId || courseCode || score || issueDate || ...)."),
        ("Bitwise Integrity Assertion", "The recomputed hash is compared bit-by-bit against the registry hash. If both match and the record status is ACTIVE/CERTIFIED, outcome: 'VERIFIED' is asserted. If the record data was altered, outcome: 'TAMPER_DETECTED' is asserted. If the student has active arrears or was debarred, outcome: 'REVOKED' is asserted."),
        ("Institutional Certificate Rendering", "When verified, the platform displays the official degree with institutional watermark seal, student details, SGPA, CGPA, controller signatures, and ledger footprint. When tampered, a diagnostic Crimson violation panel exposes the exact hash mismatch."),
        ("Immutable Audit Trail Logging", "Every verification request records the timestamp, verifier IP, verification outcome, and hash comparison result into the PostgreSQL credential_audit_trail table for administrative forensics.")
    ]

    for title, desc in verifier_steps:
        bp = doc.add_paragraph(style='List Bullet')
        bp.paragraph_format.space_before = Pt(2)
        bp.paragraph_format.space_after = Pt(4)
        r_t = bp.add_run(f"{title}: ")
        r_t.font.bold = True
        bp.add_run(desc)

    # ==========================================
    # SECTION 2: WORKFLOW FLOWCHART DIAGRAMS
    # ==========================================
    add_h1("2. Architectural Flowchart Diagrams")

    add_h2("2.1 Seeker (Student) Credential Wallet Execution Flow")
    
    flow_seeker = (
        "+-------------------------------------------------------------------------+\n"
        "|                 STUDENT DIGITAL CREDENTIAL WALLET FLOW                 |\n"
        "+-------------------------------------------------------------------------+\n"
        "                                     |\n"
        "                                     v\n"
        "                         [Student Accesses Platform]\n"
        "                                     |\n"
        "                        +------------+------------+\n"
        "                        | Is Authenticated (JWT)? |\n"
        "                        +------------+------------+\n"
        "                             /                \\\n"
        "                        No  /                  \\ Yes\n"
        "                           v                    v\n"
        "                   [/seeker/login]     [/seeker/dashboard]\n"
        "                           \\                    |\n"
        "                            +---------->--------+\n"
        "                                                |\n"
        "                                                v\n"
        "                             [Select Student Candidate Profile]\n"
        "                             (Sameera, Krishna Devi, Shravan, Arrear)\n"
        "                                                |\n"
        "                                                v\n"
        "                                 [Dispatch Backend Query]\n"
        "                             GET /api/credentials/student/{id}\n"
        "                                                |\n"
        "                                                v\n"
        "                              [Compute Live SHA-256 Integrity]\n"
        "                                                |\n"
        "                        +-----------------------+-----------------------+\n"
        "                        |                Filter by Status               |\n"
        "                        +-----------------------+-----------------------+\n"
        "                           /                    |                    \\\n"
        "                          v                     v                     v\n"
        "                   [Valid Records]      [Tamper Alerts]       [Revoked / Arrear]\n"
        "                   Green Spine #059669  Crimson Spine #DC2626 Amber Spine #D97706\n"
        "                          \\                     |                     /\n"
        "                           +--------------------+--------------------+\n"
        "                                                |\n"
        "                                                v\n"
        "                                  [Click 'View Certificate & QR']\n"
        "                                                |\n"
        "                                                v\n"
        "                                [Open ANITS Certificate Modal]\n"
        "                                - 1-Click Clipboard Credential ID\n"
        "                                - AICTE / AU / NAAC A+ Accreditations\n"
        "                                - Tabulation: SGPA, CGPA, Attendance\n"
        "                                - Scannable Dynamic Verification QR\n"
        "                                - University Signatories & SHA-256 Seal\n"
        "                                                |\n"
        "                        +-----------------------+-----------------------+\n"
        "                        |                     Actions                   |\n"
        "                        +-----------------------+-----------------------+\n"
        "                           /                    |                    \\\n"
        "                          v                     v                     v\n"
        "                     [Copy ID]          [Verify Online]       [Print / PDF]\n"
        "                     Clipboard          Opens /verify/ID      Browser Dialog\n"
    )

    p_box = doc.add_paragraph()
    p_box.paragraph_format.space_before = Pt(4)
    p_box.paragraph_format.space_after = Pt(8)
    r_box = p_box.add_run(flow_seeker)
    r_box.font.name = 'Consolas'
    r_box.font.size = Pt(8.0)
    r_box.font.color.rgb = RGBColor(30, 41, 59)

    add_h2("2.2 Public Verifier Cryptographic Hash Audit Flow")

    flow_verifier = (
        "+-------------------------------------------------------------------------+\n"
        "|                 PUBLIC VERIFIER INTEGRITY AUDIT FLOW                    |\n"
        "+-------------------------------------------------------------------------+\n"
        "                                     |\n"
        "                                     v\n"
        "                        [Verifier Enters Portal /verify]\n"
        "                                     |\n"
        "                   +-----------------+-----------------+\n"
        "                   |           Ingress Method          |\n"
        "                   +-----------------+-----------------+\n"
        "                      /                               \\\n"
        "             Manual  /                                 \\ Smartphone\n"
        "            Entry   /                                   \\ QR Scan\n"
        "                   v                                     v\n"
        "          [Input Credential ID]                [Parse URL /verify/:id]\n"
        "                   \\                                     /\n"
        "                    +----------------+------------------+\n"
        "                                     |\n"
        "                                     v\n"
        "                        [Dispatch Public REST Call]\n"
        "                      GET /api/verify/{credentialId}\n"
        "                                     |\n"
        "                                     v\n"
        "                      [Query PostgreSQL credentials Table]\n"
        "                                     |\n"
        "                       +-------------+-------------+\n"
        "                       |  Does Record Exist in DB? |\n"
        "                       +-------------+-------------+\n"
        "                            /               \\\n"
        "                       No  /                 \\ Yes\n"
        "                          v                   v\n"
        "                 [Return NOT_FOUND]   +-------+-------+\n"
        "                 Invalid Credential   | Record Status |\n"
        "                                      +-------+-------+\n"
        "                                         /         \\\n"
        "                       REJECTED/REVOKED /           \\ ACTIVE / CERTIFIED\n"
        "                                       v             v\n"
        "                               [Return REVOKED]   [Recompute SHA-256 Digest]\n"
        "                               Academic Arrears   Digest = SHA256(canonicalFields)\n"
        "                                                     |\n"
        "                                                     v\n"
        "                                      +--------------+--------------+\n"
        "                                      | Recomputed == Stored Hash?  |\n"
        "                                      +--------------+--------------+\n"
        "                                           /                  \\\n"
        "                                    No    /                    \\ Yes\n"
        "                                         v                      v\n"
        "                              [TAMPER DETECTED]           [VERIFIED & VALID]\n"
        "                              Integrity Violation         100% Cryptographic Match\n"
        "                                         \\                      /\n"
        "                                          +----------+---------+\n"
        "                                                     |\n"
        "                                                     v\n"
        "                                    [Log in credential_audit_trail]\n"
        "                                                     |\n"
        "                                                     v\n"
        "                                       [Render Verified Degree UI]\n"
        "                                       - Candidate Identity & Roll No\n"
        "                                       - Academic SGPA & CGPA Scores\n"
        "                                       - Institutional Watermark Seal\n"
        "                                       - Verified Controller Signatures\n"
    )

    p_box2 = doc.add_paragraph()
    p_box2.paragraph_format.space_before = Pt(4)
    p_box2.paragraph_format.space_after = Pt(8)
    r_box2 = p_box2.add_run(flow_verifier)
    r_box2.font.name = 'Consolas'
    r_box2.font.size = Pt(8.0)
    r_box2.font.color.rgb = RGBColor(30, 41, 59)

    add_h2("2.3 End-to-End Cryptographic Handshake Protocol")
    p_handshake = doc.add_paragraph(
        "The interaction among the three primary network roles follows a decentralized trust model:\n"
        "1. Issuer (ANITS Autonomous Examination Cell): Authenticates with ROLE_PROVIDER authority, reviews semester records, generates canonical SHA-256 hash, and commits the credential to the PostgreSQL ledger.\n"
        "2. Seeker (Student): Accesses personal wallet, receives real-time validation of ledger integrity, and renders the dynamic QR code for distribution.\n"
        "3. Public Verifier: Audits the credential payload without intermediary fees or delays by recalculating the SHA-256 hash and verifying that it matches the stored registry seal."
    )
    p_handshake.paragraph_format.space_after = Pt(8)

    # ==========================================
    # SECTION 3: DEMONSTRATION & VIVA SCRIPTS
    # ==========================================
    add_h1("3. Demonstration & Viva Presentation Scripts")

    add_h2("3.1 Seeker (Student) Portal Demonstration Script")

    add_callout(
        "Step 1: Introduction & Learner Console Overview",
        "Respected evaluators, on screen is the Student Learner Console of the ONEST verifiable credential platform, customized for Anil Neerukonda Institute of Technology & Sciences. In traditional institutions, student certificates are issued as physical paper or static PDF files that can be easily forged. In our system, every student credential is cryptographically anchored to the autonomous university registry. At a single glance, the student's dashboard presents live health metrics: total credentials in wallet, valid tamper-free records, tamper detection alerts, and revoked records.",
        "Navigate to http://localhost:5173/seeker/dashboard. Point to the four metric counter cards.",
        "The metrics display the total count of certificates with color-coded status indicators (Green for Valid, Red for Tamper Alerts, Amber for Revoked)."
    )

    add_callout(
        "Step 2: Candidate Profile Switching",
        "To demonstrate how our system dynamically manages distinct academic standings across diverse students, our console includes an authoritative profile switcher. In one click, we can switch from Computer Science candidate Mula Sameera to Electronics & Communication Engineering candidate Krishna Devi, or inspect an arrear test case.",
        "Click the button 'A23126512014 (Krishna Devi • ECE)' on the profile switcher bar.",
        "The learner console instantaneously updates to display Krishna Devi's profile, registration ID A23126512014, and her VLSI Design semester grade card."
    )

    add_callout(
        "Step 3: Accessing the Digital Credential Wallet",
        "Let us now open the dedicated Digital Credential Wallet by clicking 'Open Credential Wallet'. The platform immediately queries the backend at GET /api/credentials/student/A23126512014. Notice the dynamic summary filter cards at the top and the credential cards below. The card displays an Emerald Green spine, confirming that its SHA-256 hash has been verified live against the authoritative registry.",
        "Navigate to http://localhost:5173/seeker/credentials. Click 'Valid • Tamper-Free' on the filter bar.",
        "The list filters to show valid certificates with the badge '✓ VALID • TAMPER-FREE', displaying SGPA 9.82, CGPA 9.81, Attendance 99.50%, and Score 98.10%."
    )

    add_callout(
        "Step 4: Inspecting the Official Autonomous Degree & QR Code",
        "When the student clicks 'View Certificate & QR', the platform renders the official ANITS Autonomous Grade Card modal. Notice the prominent Credential ID banner at the top with a 1-click 'Copy ID' button for easy job application submissions. Below, the certificate presents full institutional accreditations: Approved by AICTE, Affiliated to Andhra University, and accredited by NAAC A+ and NBA. Furthermore, the certificate displays a dynamic, high-resolution QR code and the full 64-character SHA-256 cryptographic hash seal.",
        "Click 'View Certificate & QR'. Test the 'Copy ID' button (shows '✓ Copied!'). Highlight the QR code and the monospace hash string.",
        "The certificate modal displays all examination results, university signatories (Addl. Controller of Exams, Controller of Exams, Principal), and the SHA-256 hash: d567384e7960602c1a0971f03243d974dd27f307fac3536f58419dd094c57192."
    )

    add_callout(
        "Step 5: Demonstrating Tamper & Revocation Handling in the Wallet",
        "What happens if an academic record is revoked or contains arrears? Let us click 'A23126510008 (Arrear / Revoked Test)'. Notice how the wallet immediately updates: the status spine changes to Amber, the badge reads 'REVOKED / INELIGIBLE', and the backlog count is flagged. If an adversary attempts to modify student grades in the database, the wallet's live SHA-256 verification detects the mismatch and renders a high-visibility Crimson 'TAMPER DETECTED' alert.",
        "Click 'A23126510008 (Arrear / Revoked Test)' on the student switcher bar.",
        "The card renders with an Amber spine (#D97706) and '⚠ REVOKED' badge, reflecting active backlogs and ineligible standing."
    )

    add_h2("3.2 Public Verifier Portal Demonstration Script")

    add_callout(
        "Step 1: Zero-Trust Public Verifier Entry",
        "Now let us examine the verification process from the perspective of an employer, recruiting manager, or university admissions auditor. Under traditional systems, verifying an applicant's credentials takes days of phone calls and postal transcripts. In ONEST, verification is instant, decentralized, and zero-trust. The verifier opens /verify — no login, password, or fee is required, strictly adhering to W3C Verifiable Credentials principles.",
        "Open http://localhost:5173/verify in an incognito browser or standard tab. Point to the audit input field.",
        "The verifier interface loads cleanly, presenting sample test buttons for quick evaluation."
    )

    add_callout(
        "Step 2: Instant Cryptographic Verification of an Authentic Record",
        "Suppose an employer receives an application from Krishna Devi containing Credential ID ONEST-ANITS-2026-A23126512014. The verifier inputs this ID or clicks the quick-sample button and initiates the audit. The backend fetches the record, recomputes the SHA-256 hash from its canonical parameters, and performs a bitwise comparison against the stored ledger seal.",
        "Click the quick-sample button for Krishna Devi (ONEST-ANITS-2026-A23126512014) and click 'Audit Credential Integrity'.",
        "The verification engine responds in under 300 ms with a Green banner: 'OFFICIALLY VERIFIED: Digital credential is authentic, tamper-free, and officially issued by ANITS Autonomous'. Full institutional degree, watermark seal, SGPA 9.82, CGPA 9.81, and signatories render dynamically."
    )

    add_callout(
        "Step 3: Demonstrating Cryptographic Tamper Detection",
        "Now, let us examine how our platform actively eliminates academic fraud. Suppose a rogue actor alters a student's marks directly in the database — for instance, changing an SGPA from 7.00 to 9.80. Due to the SHA-256 cryptographic avalanche effect, changing even a single bit in the record completely transforms the output hash. When the verifier queries this altered record, the recomputed hash fails to match the authoritative registry seal.",
        "Input an altered or simulated tampered Credential ID or point to the tamper verification test case.",
        "The UI displays a Crimson warning box: '✕ TAMPER DETECTED — HASH MISMATCH. INTEGRITY VIOLATION DETECTED: The recomputed cryptographic hash does not match the stored registry hash.' The degree is blocked and marked invalid."
    )

    add_callout(
        "Step 4: Demonstrating QR Code Mobile Traversal",
        "Finally, let us demonstrate seamless mobile verification. If an interviewer scans the QR code from a candidate's resume using any smartphone camera, the device navigates to http://localhost:5173/verify/ONEST-ANITS-2026-A23126512014. The system automatically reads the URL path parameter and performs the verification on load without requiring any manual entry.",
        "Navigate directly to http://localhost:5173/verify/ONEST-ANITS-2026-A23126512014 in the browser.",
        "The verification engine automatically triggers on page mount, displays the 'Auditing...' status, and renders the pre-verified ANITS autonomous certificate."
    )

    # ==========================================
    # SECTION 4: IMPORTANT CODEBASE FILES REFERENCE
    # ==========================================
    add_h1("4. Important Codebase Files Reference")

    p_files_intro = doc.add_paragraph(
        "The ONEST academic credentialing platform is structured as a decoupled full-stack architecture comprising "
        "a Spring Boot 3 Java backend (port 8080) and a React 18 + Vite frontend (port 5173), backed by PostgreSQL 18. "
        "The table below details all key implementation files, their responsibilities, and architectural roles."
    )
    p_files_intro.paragraph_format.space_after = Pt(8)

    file_rows = [
        ("SeekerDashboard.jsx", "Frontend Page", "frontend/src/pages/", "Student learner console; computes live 4-card wallet health metrics, candidate profile switcher, and credential overview table."),
        ("SeekerMyCredentials.jsx", "Frontend Page", "frontend/src/pages/", "Student Digital Credential Wallet; filters credentials by validity/tamper status, renders Oxford/ANITS degree modal and dynamic QR codes."),
        ("PublicVerifyPage.jsx", "Frontend Page", "frontend/src/pages/", "Zero-trust public verifier portal; handles path/query parameters, QR scans, quick-sample audits, and tamper mismatch alerts."),
        ("ProviderIssuedCredentials.jsx", "Frontend Page", "frontend/src/pages/", "Institution issued credentials ledger; displays issued certificates, pagination, prominent Credential IDs, and copy utilities."),
        ("App.jsx", "Frontend Routing", "frontend/src/", "Main client-side router declaring public routes (/verify, /verify/:credentialId) and protected routes (/seeker/*, /provider/*)."),
        ("api.js", "Frontend Service", "frontend/src/services/", "Axios HTTP client configured with JWT interceptors for credentialApi, verifyApi, requestApi, and studentApi."),
        ("CredentialController.java", "Backend REST", "backend/src/.../controller/", "Exposes POST /api/credentials/generate, GET /api/credentials/{id}, and GET /api/credentials/student/{id}."),
        ("VerificationController.java", "Backend REST", "backend/src/.../controller/", "Exposes public GET /api/verify/{credentialId} for zero-auth cryptographic verification."),
        ("CredentialService.java", "Backend Service", "backend/src/.../service/", "Performs credential issuance, maps database entities to DTOs, and computes live SHA-256 integrity status (HASH_MATCH)."),
        ("VerificationService.java", "Backend Service", "backend/src/.../service/", "Recomputes canonical SHA-256 hashes, handles ANITS statuses (CERTIFIED, ACTIVE), and logs audit trail records."),
        ("QrCodeService.java", "Backend Service", "backend/src/.../service/", "Generates ZXing Base64 PNG QR code data URIs encoding the public verification URL."),
        ("SecurityConfig.java", "Backend Security", "backend/src/.../security/", "Spring Security 6 filter chain configuring public permitAll for /api/verify/** and GET /api/credentials/**."),
        ("CredentialResponse.java", "Backend DTO", "backend/src/.../dto/", "Transfers student academic record, integrityStatus, valid boolean, SGPA, CGPA, and QR code to the wallet."),
        ("VerificationResponse.java", "Backend DTO", "backend/src/.../dto/", "Transfers verification outcome (VERIFIED / TAMPER_DETECTED), stored hash, computed hash, and transcript."),
        ("Credential.java", "Backend Model", "backend/src/.../model/", "JPA entity mapped to PostgreSQL table credentials with full schema constraints."),
        ("student_semester_records", "Database Table", "PostgreSQL (anits_onest_db)", "Authoritative ANITS autonomous examination database storing SGPA, CGPA, attendance %, and backlog count.")
    ]

    tbl_files = doc.add_table(rows=1, cols=4)
    tbl_files.alignment = WD_TABLE_ALIGNMENT.CENTER
    hdr_cells = tbl_files.rows[0].cells
    hdr_cells[0].text = "Component / File"
    hdr_cells[1].text = "Category"
    hdr_cells[2].text = "Directory Path"
    hdr_cells[3].text = "Purpose & Architectural Role"

    col_widths = [Inches(1.8), Inches(1.1), Inches(1.4), Inches(2.5)]
    for i, w in enumerate(col_widths):
        hdr_cells[i].width = w
        set_cell_background(hdr_cells[i], "7A162B")
        set_cell_margins(hdr_cells[i], top=120, bottom=120, left=100, right=100)
        p = hdr_cells[i].paragraphs[0]
        for r in p.runs:
            r.font.bold = True
            r.font.size = Pt(8.5)
            r.font.color.rgb = RGBColor(255, 255, 255)

    for row_idx, (fname, cat, dpath, purp) in enumerate(file_rows):
        row_cells = tbl_files.add_row().cells
        bg_col = "FAF7F2" if row_idx % 2 == 1 else "FFFFFF"
        for i, text in enumerate([fname, cat, dpath, purp]):
            row_cells[i].width = col_widths[i]
            set_cell_background(row_cells[i], bg_col)
            set_cell_margins(row_cells[i], top=90, bottom=90, left=100, right=100)
            p = row_cells[i].paragraphs[0]
            p.paragraph_format.space_before = Pt(1)
            p.paragraph_format.space_after = Pt(1)
            r = p.add_run(text)
            r.font.size = Pt(8.0)
            if i == 0:
                r.font.bold = True
                r.font.name = 'Consolas'
                r.font.color.rgb = COLOR_WINE

    doc.add_paragraph().paragraph_format.space_after = Pt(12)

    # ==========================================
    # SECTION 5: VERIFICATION COMMANDS & CHECKS
    # ==========================================
    add_h1("5. Compilation, Deployment & Verification Commands")

    p_cmd_intro = doc.add_paragraph(
        "Below are the verified PowerShell CLI commands to compile, deploy, and execute end-to-end testing across "
        "both backend and frontend services:"
    )
    p_cmd_intro.paragraph_format.space_after = Pt(6)

    commands_text = (
        "# 1. Compile Backend Microservice (Spring Boot 3 + Java 17)\n"
        "cd C:\\Users\\SAMEERA\\OneDrive\\Desktop\\DE1\\onest-platform\\backend\n"
        "mvn clean compile\n"
        "\n"
        "# 2. Launch Spring Boot Service on Port 8080\n"
        "mvn spring-boot:run\n"
        "\n"
        "# 3. Build & Validate Frontend Bundle (Vite + React 18)\n"
        "cd C:\\Users\\SAMEERA\\OneDrive\\Desktop\\DE1\\onest-platform\\frontend\n"
        "npm run build\n"
        "\n"
        "# 4. Launch Frontend Dev Server on Port 5173\n"
        "npm run dev\n"
        "\n"
        "# 5. Test Public Cryptographic Verification via CLI\n"
        "curl.exe -s http://localhost:8080/api/verify/ONEST-ANITS-2026-A23126512014\n"
        "\n"
        "# 6. Test Student Digital Wallet Retrieval via CLI\n"
        "curl.exe -s http://localhost:8080/api/credentials/student/A23126512014\n"
        "\n"
        "# 7. Verify Health Endpoint\n"
        "curl.exe -s http://localhost:8080/api/health"
    )

    p_cmd = doc.add_paragraph()
    p_cmd.paragraph_format.space_before = Pt(4)
    p_cmd.paragraph_format.space_after = Pt(12)
    r_cmd = p_cmd.add_run(commands_text)
    r_cmd.font.name = 'Consolas'
    r_cmd.font.size = Pt(8.5)
    r_cmd.font.color.rgb = RGBColor(30, 41, 59)

    # Footer note
    p_foot = doc.add_paragraph()
    p_foot.paragraph_format.space_before = Pt(16)
    p_foot.paragraph_format.space_after = Pt(4)
    p_foot.alignment = WD_ALIGN_PARAGRAPH.CENTER
    r_foot = p_foot.add_run("— End of Institutional Technical Specifications & Demonstration Manual —\nAnil Neerukonda Institute of Technology & Sciences (Autonomous) • ONEST Verifiable Credentials Platform")
    r_foot.font.size = Pt(8.0)
    r_foot.font.italic = True
    r_foot.font.color.rgb = COLOR_MUTED

    # Save Document
    target_path = r"C:\Users\SAMEERA\OneDrive\Desktop\DE1\onest-platform\ONEST_Seeker_Verifier_Workflows_and_Scripts.docx"
    doc.save(target_path)
    print(f"Document successfully created at: {target_path}")

if __name__ == "__main__":
    create_document()
