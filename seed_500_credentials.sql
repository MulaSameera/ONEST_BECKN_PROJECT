-- Clean and re-seed exactly 500 unique student credentials
TRUNCATE TABLE credentials;

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502001', 'A23126502001', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 85.10, 76.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2e29f12fbe2bd2af9d9fd3b1cfb1e61bd4368e8f2dadf98502b7d47ae01c6282', 'CERTIFIED', 'PUBLIC',
            7.66, 7.89, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Q9itMs/ylt7UozHfWtVM9lIr+hGDYspfvBPIxFeJW6/lKcvXO1Y5SGUoqVy95zkgJA77+bFXK3x7eWagC4eT12nVY8yWQcoCnfAh+rt+uAITAdPH5i3Ac92/sJPcNLr9339F7+ZD6TUsVR6RPLA6qkgSxbf4y5vLhNamL8Heqi0sy4+XPkWJEMA3Q49FJIm3/FyMVo2FJ9HcQriH7ZAxnRxKifz97EsO62REFJCSo7PuKY65Emhs2E7Vw6CULarnapff3o549P4Hl9u+nD8C7lmwRKx+1oRlrTCujf/mZwPnKSGhOtK3zwv8WluMM54P3YhC2sjsm3OzkBIxbXsvXw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502002', 'A23126502002', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 85.20, 76.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '754acf4b30db88e1e0734432d55d36f6b1436a5393eafa6b15023aade45f22fe', 'CERTIFIED', 'PUBLIC',
            7.66, 7.60, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'TLYD4ZDLyBHF3a9LOxCMbv6jMQsznjciayMnAykw3WZ7/I41Xhr/xL/h7+7av0SCszhn15RR8CLYxfBJKO64KS1di8FYXqv73TWmXaZN+x4RNVGpwUUk61VczFEWInEXSrk9NvPLFq4js7RoeRfdILX0za1//7whYdWjPJpZUftiOP7iFVcxWqM9x4vDt/Fg58arDPXdL0gdCsBcSmvzm7uHZBMTzx1qcPcSc5qsm8rN0lVKe0BDy9yhroFeDkWWiQ3wnaZfDr9S1ATBbQhStT83LVSISr0xXEddQwEyf/N8NjR/dFf+YyF/QXI0/v9dX7BDRKxdnjk942sdHSlGNg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502003', 'A23126502003', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 85.30, 82.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5df715802b386ee25b5f2659b348023a1ffc1d0d73776b91ad0b6aeb7a1b605b', 'CERTIFIED', 'PUBLIC',
            8.27, 8.05, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'DOvhKMRLl+wy1R+U3jBDhHdGQ6OYc9LudSmL6EHdjWccYsyRZscu94nR9zVTiSWzZfn6YD+VhjDXa645U40YUGfSgps6SCMnq7vb4cKa6E/nE6fAk5/AyjmniDtdLP2As27PIWg6ZKsBkZsBvccGovn+om1CLM25LcW+gPWeh7hoeRccFB6QD5RQYP25qqbOfJWlseUiDCkKTRSjNFgu+I+RU4yOcUDqrsjf6GFrmajO8z1T59J07VbOCfQzNR4MVNitOZ3jKYHPd/JBm5zjAUXXS3WKEho6uRW6OjIFlV4V2Eu49q7lG+7pP12k3CCDlvy6JVWFcBVxFSXPFsPVqA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502004', 'A23126502004', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 85.40, 85.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '904eb73af1dd34babf9d17a9b1a719eb94c70ed72fa0638d36eaa982d4bbcc99', 'CERTIFIED', 'PUBLIC',
            8.55, 8.68, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'J3rwN1gC9o7ba1AsxmiLDiGnmxkGxw76fkTFWnDt/aSl63S6UCLKzcIlAjIAYEZLFJSORgye+cySer7zLjtVU8pxffeOhNVwvpk87i6xC0l5iwUvFlZZ4pZ1PZi1aURlr8VHLa8qXDp9e77AQ8TqxXK4vLzQPwQbtCVYESZwh0Vw78cq3om+FwiBWo9m6P5NfrrvbpFp/74Asksyskx+cHOrW2ux7CckQOh30vk8oiwxNfYqPgtPPcVLwb5ZlUO3u1vvRbf8Yblr4nx9WxRfWATYXl2tkvens19yw6nTJYHJJ+ur2xsDJyC3v7OSnr7DcVCDSzuHbop9Bgex0PVy6Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502005', 'A23126502005', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 85.50, 70.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '221dc61beb2f4e03379c423bab48331291a1fc5e250b14c6bf6cd184272cabe5', 'CERTIFIED', 'PUBLIC',
            7.05, 7.08, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'nuVuIpJzSPNqm6RaVhg/CGTAZ6TX9mRhcOAkdOJqUTCXO83TeEXAivyR85K7rBFND27cD9bcQJ8tpw+4j2yma53WBYw2tMA+MXTQYzyXZR4Qx85XLLuDESRYdG9tHZiyXGFI22rnO1qZw04/xL1BzOcVOIhpshajed6/PYQ3xWqS0iKlfrYS/TJDAacxZGYZ8tD1OeLDH1s5Qi/rWmknpoOe8cPSMcUrjCnjWZVt3kTZFv3JMfPpo1mpwWpmVWZ2D/dek5YWHknTyrKo5DWFxb6bPl+AKvsE80M/eJJXMoKDXtHx0S3vz+O2bpg8LGvltxwymMS1Q2LZX+w/5b1Osg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502006', 'A23126502006', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 85.60, 77.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f87b77645fba6eadd60cfe8e0afd6003e220a1f9d02bac6b000761f5ff635004', 'CERTIFIED', 'PUBLIC',
            7.73, 7.49, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'dBHMDOC/WfCwbVRoSRvOZHG9/4aPtlBuyRWohqz12S/FVpuHcVqDKdkqGh2KnRCIUiG0+cegI+VQSDyAeNeJgncAq87E7pMDrruzllcTT2KRRk5xg5TwO3VS4GDDtm+P2CKlCD5R1BeHcS8NAMAY2WtJknscyzGCupM42NUHVOoLW+vTtP9O424Ih3rt/iyzpET1MCJWJ4TILsNzMFjjWZEP8QI5Ct6V+ZTZeiLClwvvTbzFHyjcQv9SaC72lta1D8agI4j5qOh6T7snF98syvDeA+jbLjQhVAVbVkcwYO11iadZIB+bMh/r/lfUJkjbFvkPvaHVJBnD+IjfKuD9QQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502007', 'A23126502007', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 85.70, 87.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f968e602fb54c2c63a82214d56746f51ee58243acf6574ccf522df7d542bf1f1', 'CERTIFIED', 'PUBLIC',
            8.75, 8.27, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'aKG8Ro6DoyVs1sYR9Y6XfrjsAUkbkH/GvG65G+CYgnrpCQgcmJCbO6y4MMYSK+Z8pRvcxnnox3CFquKOi5kxgRZdDgCREATNfyd+6suTcQedVvdMLt9XMS0jmEvGgpQLT9rf4jcx3ARPpnnpd7C85njJr46SCUz4KKvkza/KbYRQhjx0Mdsyd/z3+gaTxyvzcr4e1Ls+bBnJHP0I1FBLdS0eK5YB5m8IwyQKDNZMgWWVqm6Ff+XjS5ljyHPoKB7pEvmvXwlROisIUOzXtPiNeECKrgbGfXEdgDw+rx9QIjVi5NUWz/Stl5l+BcMgULc4RLAWGjbD7tpjgA05usIjfQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502008', 'A23126502008', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '63d4dfb1839233663f98920125fdd9e1bd482a519c37adb138edd0395de7dcbb', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Ovq113HJohABcOcLlH36XL+oeChlzxoEOobp4l+V+4VMJabHd3SyX/2FcZ9p/thcxZAEwxS+7QQe3pLgMewxTJRfQrkl7SnI/rS8mzi+4sbJWJ7xpjWiX2nJpy+DPzfowLOtdp61bt7anDBad0WkffnJ5qJ1Lgb1Ep5OalojtcVEPfzLV8ES528+N8oOPRYQ9S/8CyEPjdSR+bTJKG6z3NWxxOs1GMSnAhuBrmOb9RGgvVx26lOkvhFzYl1bTWRDj+x3QkYl9UymVYtlZKM3GyFc4fBY8Ebwb8uusGfl4QnD6De2ol6y14QzIFFiApkh3b4sDfobfVjZcuBBLl58bA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502010', 'A23126502010', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 86.00, 74.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '693eb957e8c57f9ac7bf433e4ca924e4de19cfb2d6ce589a9ae37535ef5fac99', 'CERTIFIED', 'PUBLIC',
            7.45, 7.26, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'lPth9Npu26h2X/mTf99/SyB0DYT82xImaObqvldVpOgVZFgEUQi/5ndmcuefS270d1ptd0Kvq32zw7EIy0MSkZ6FItz1f84Ik4SxLjPwXdU6CRBlGrP1dItseTHDT83aSHNx+qGs21+IJ+4UlcpfW8r7h51vwVTEpZZ7T5c0/NQ4w+aVcWuu0epl5G6JMFqxJ+poyNRpsP0K+356OchuVWNaRORobcjYHrB1LcvQ4JcsBpl8EsaNZ5t1s0xKIb6ecIB/PT8KJPqxO1UBfsy8h1wMHK8DB8QgSTS8G4rMAgFJkdeK/bVzIAEOkY/Z/ambVbmX2m7jkweRc9hmjp8Piw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502011', 'A23126502011', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 86.10, 71.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '68c43ef983a1a2c0330230e024481fd9af59bcd50a170363bd3168ec367e6be5', 'CERTIFIED', 'PUBLIC',
            7.11, 7.12, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'JPJsR21xRdG4IBho+dEqjDx6EXsDpaY/GjgeJYVaMdPW+W9uDeqKmtwY2bmoQvGswZkNCcGDucYOfE/kf+uf4vo/FDDuUbOtg85egH3JVOcZdd0BI5a/Fv3B+BQEfHe9NSjDKY3raFHtRBuKcIQ6j8C72qZVFQuMdSbCR0FN+cZUEWQhonPqK+yCOOQXYj+HxsRqSkIcVugd8hNaPb770WqcCZJYft3jV0buxnSSw1Ju+NEVUnfMb9EkzUeAgjBfeGmqp3PxN1/8bk0SisOxPWDT4sfn1nyj1AziS0c7cWQMoVv640YgchCM91lyvJg8xLtvu/Jx/gR9bNyFO3z6Jg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502013', 'A23126502013', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '64eeb2127aec34d84b331016b2f75174f12e1c3a23cc2a849e0361499d2d3a58', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'mLBaPlQ18y8a4wJN6kKqrwHIUPGV3joqn9RbOJoqi4iygBnJHwHTuU005t4au3SuUXU3t/C3lM6wFJi+muwot9Nf51IbHYRvHyd9/1vT6AW4JKUBSgldkNATMpgYA48XkQ9qyFvurVXsSgAyXiasmcAhBcRU59xLiqAj8toS7UHReWxlB/65GFY7uJgLK1i8QXSdAxzXVGIDjOeJQg9ZEMdbrZbVKQRhU3zBUQaGP7V+ldKvq1ahtDr6a/bPDIQsDOO+62fmCwupycjl/f18Unw+fyBzqH5mziCa0a+kOnUO4yBzXZ3pddbdkhil+aRuTP8DndIxRiRQJKiDGFH6ZQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502014', 'A23126502014', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '92f85981603a91f4dac24bf0ed26c57ca349141fb59ac3938fd25b9296890f15', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'bICNriU8zjwdejeIWe3Xj6J2YHvhSGgYt/231VmcQNhrjJNpTA7h+JDQbhTijJRKkKJxh2/d7zYe9rxUNlXamcpYgbT0YJyuN7tn5OQobH9LFuhLTI6Igqi178vQFoub0QUiZIYwinmfs9Dn0T9CW3LIsLCaDICqaBX0EC4qzz2DaQrKLRY4Jshao8ksGTcReKWB0z/6kGtVjr3pUECAN2PCVXusGYtCUJ2UusKeJxF+3VK8l0HFMIlCJC5tpiMzdNNM0bVEfbUzN6DRvRhmX1fChMlGmCTDGCpLukSGhSalDQd296O8w0geqX8OhLPpG0VoLyBQ5ECimA+CzcTnQA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502015', 'A23126502015', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 86.50, 92.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '77fe5536467405f0bde03006bfff5126cd2c517ad15c01f852ab4fe0e4eb31d2', 'CERTIFIED', 'PUBLIC',
            9.23, 8.71, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'YMtmZYTim4sp6QAkZ07CXGUXwsSwOfSVVhzC1Fc7tGxxR7umGRboWgPzOtMGeV6DruZ6oZRe4wpOVc6CI+a47+EEi60eAt6Pyr2WIrtZxBRVNCjmncGoP3+/IpZ9Nh/aAFFJ1jGIxIM/S0BbpZfPLwzYCza8pLHkrSIZpOFzCTCbDz42xIFZ7Y2IJshXPMsMCK5pYqwEv4twUuTigRpJRdrfUxgFpJ5txGryUqP/Ub7Z+yztgzP4nbFhjGQoxSejZjQGeSIDT2IHrFFZi3BxPnM3p2JR36CHeJTsvAMFU4uJTXz9M6dn8rkWWuufPsEe+N5P4sIaMdVCuddzcB8KWQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502016', 'A23126502016', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '79918da50a866a01442a170821102318a7f12acf1e2def8fb3b045190c6a03e9', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'OIsS+6anwjk5GVBUJzwp8BV9so6vqHOOBMfwmrTUEM121Hqyc4BVM4s2jI+bJxcYXAX6oQsB2PNKG0F2n3FWrnJ3sT1X5xoGDbma7+fCDevSBdMb2jpvH0x7dfwfo6eSAxnH0OUXEdUDXPCHQpemV7YO5V9Q5pb7BhxzcMFJzgd76wpu2HihzXc/f1s1fMuP5F4ujsY5GM3R0RDkZ/FKD0oPd1Vog8vH5arRy6dxq0KSEfjgHGeoLqxu02NjTUR89CvJFp3wPYGKlw4oIr87o2nl6fb8OaQHkp+jUp5PFh8lLR+IV7/m/Pz3MmUd4rDHX2ANCdxVl7gT7G8gwnApJw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126502022', 'A23126502022', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
            '2025-11-15', '2026-05-30', 87.20, 95.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '924ddda5a148c320bb72fef266b33167035a960db7a17d47da9d5dec037d7949', 'CERTIFIED', 'PUBLIC',
            9.50, 9.27, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'kgj5zTG38wOYiuzi2a1YIZnhGWYE7Mamttrb/+Tzpz+pE9WHsqP7jNi1FxmlsGPv7GjcqPjSGQoyZIxGPaiUhJmWwwxQZ+SwLygY++TXvKKGADrNqBzFfatkZYq4s30lRKJQxUqoIBwUvBH2kVnGlTnc4cG82S7eMnFb8zT4SyaIal9xmj9ApWOUGMgV+7vB5WKvRsJepOsVTvi5c1AJMMjRHi+wwGCP2aGMUVfmZKfDFbNhy1L2sN2swYia8mJmnaYPlG1aHvv2FewaGQLmggfiVlkVzPMe9mg7wAqSALfvUiY0ixYp3a2+jLQ+w2PxirlMpwe9e+gOKgKOG1p/GA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508002', 'A23126508002', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 85.20, 74.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f16eb9595f1b1e23b931d444e22668e07a5bb4e4433803494b49b26b064c9e06', 'CERTIFIED', 'PUBLIC',
            7.45, 7.38, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'uYkKRWzdVtnivElhOkdSmCxhwKtFuELc/DtmGbi0bQyZInB0VWSqP/UC/uSjUSAZ95OoB/6encYJ+PdzvuiAJiVmz36o46E6DgAkHzZ25ST0Ik7FdquxWF5u5GBy8zote89r7tgvPvlQ6Xnb+0lLvKgWm7xVb44A0BOxC8RXl0bO8dMqMBZFLfUUPdpsBQKMPPrhpANuk2XZ4VUjgjpokxTV9viLJty7qr3dPIeaUlKRxXaGZKbDKuaKPSWdvunv/aQOVoTID4VmKiCcQWas48zw+C1adCfX95d1LZZzvFNKvg1wv9VQGPjPdNZdbd2Vt6Jaa7CfrVsLT11CiHpB2w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508003', 'A23126508003', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 85.30, 64.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '846eec57fa3544e4b2913ca67185303a37df2e5bff145fd55fb027217ba6f801', 'CERTIFIED', 'PUBLIC',
            6.41, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            't+WuDqnDsANM/+OgR4YFD8v0ttOQ2yTJ9LzVU3N258p4FcRrAwmpZmmPvk4IPHvfclyYYB5Dwm3O8KUetUzdu7u39Pp1avdH7ZQvNLLoqY1g93sHzF+yNhu1VYIzgRtE4F5tyQa/oxw6PmljrWBIhyF8DLtAc+oHHInmhFGOLIQ+EzFibQ6nrKXhAZi15rL5kOfpislxxHBA4WGe8TurALlQtsQPo8cX7vqV9kCaL3D8HyOn2h2+uzVu0omIXqNocGvsm2Ln1SMTUFBAIP7nPuecKu28yXG8xRKYLMe14BAxeuxqCPlpKfqfI9oe387KNLhuxIf+495c+wC5+8qb5Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508004', 'A23126508004', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 85.40, 70.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '3ba98f936d507eaa5bfa92bf5fa878f7581dbc0820f40dcd8cf199dddf629108', 'CERTIFIED', 'PUBLIC',
            7.02, 6.90, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'X6yHLPPi7z/YxwsSmG2TULvovyuqsXJBtxMhw6phb6kbRAWolrtGMlIUjBdeKpAbeOD51Lr1hba20vhyCeL+HDUnZTmBa/VbnXTUsQgtJS3xh467GitEC1jNCkx/jZ//gWvAoTMKCfWpHN5mtxScc/65sjdgfMgfHeLEjjPZlac2YxhHjQ/4CQBDv71RD1n2wRBEI78kDmLxFZGuBGBTHzeeWWa74PhSfx2XXJskDupYCkkhhqMFGRmOyYcLpugejkf1/L7SvFIi/yj8XDN1q+nLy1BlGqqGdoP81/OW/7ttfs/deO4DfFDmKY/v0+g6Y1g6gpDJwcKcHkZH+j38Rw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508005', 'A23126508005', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 85.50, 80.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0c89cf025c19f56d81148e6b09cfa41d7619e75f5a33c49b19df3029c3f2a8b2', 'CERTIFIED', 'PUBLIC',
            8.07, 7.92, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'A9LXVgtywd/iImhxqfdV8XUWZFU3G+JwS3+vyte92dsEj7afQu4uAipxdRoZzPOlex2r2897nmSdJbYCIWNHFnxWgOXhppQaG6sihEfzma5PiZ4RI+RVc7tQ+gn9Qcwh3ILkaWgEh0IzAG5aCjbJw/bYxInwkmtG9Up44lyjXxg95hCfwgfJV0LiS5Ng1bs+PSHKIK/3vKnMvJqcB3fycvWlHNyYCQAa8KqjZxRtTyCA9LDHrusWpR4aC/fYzDWla8b/vvoaFjhROgYPU9Q0URQdJIPQbVA2cmnxURI8vpOFYNylcLGYdkYP33FBo1aMhYHLqzfzKGiFsajuABtTAw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508006', 'A23126508006', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 85.60, 73.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ec7821bce09cf50f299d81b98a1dfa1d82ee9a2763c80e7cc72cf37235964db1', 'CERTIFIED', 'PUBLIC',
            7.39, 7.49, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'abS7UjOk8tbqAg2MLXJg9PItS+ox1q24UI9WB5+WqG+XL1GNlHu6z0axmfYWfDpkXA+gggnotqpE84LWK6mhxemVhswyJlVEhDuSxnKbvrOuGX7A8EmVyDJopVxJ38Kky44YpHi5VvQXcad3UsYlV0wn5WzNH2lRG4LMhF154UUS9svnEsnYlKpoUmH8o5cXfK03nrm53xu+PgSQnyqeXvUT7gYWsGh5w25ut4Qlh1ta2ZzYHiHCBMj7fXaor01ZS3gJU5L5Us0sXl7Tc4GpWYI1eAbkaKetileBqXlhumKzRHA4NQMHqGZZMmVrVCEtusLdV+M9g/B1mZiR3LBGZw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508007', 'A23126508007', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 85.70, 71.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '176181b3aa29d72a203fd229ce0ae123a6fd54392a59ee807e468a7a6ba89571', 'CERTIFIED', 'PUBLIC',
            7.16, 6.98, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'BuOqfVmojUxBckQrZZnJXliBnwTFZxvhDlb8WHJHEq+xC+BI6q/8jsTISprkeelEUR0TrrulkF7/AMWWap4/q6eNAyAg0l4rBWgjn+O347Swe70txwHkzcz3pU0TogXpvVsGXTAPYoGf7Gi+Pgn/tIfPOVhtBAJZkBakxf1MfAnPS3DQ98wxVDXS02orRrXs162tifm4+ytCilBpVxuhIUUMR260B7GnaigyNM3SRor5sz+QhZjPduzF5te9G9xRkJHZMUrvtZP14UpqmYHupdjSXYQrSX9922uBfKzen3+uGPMxulbPVTUk3iFljP0Ok+6WtjjrCvk/+W/DDFS6zw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508008', 'A23126508008', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 85.80, 77.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'be149d00b2a6334691d5e168496525bc06d4ea0362e22e515fdab7d03dcc82af', 'CERTIFIED', 'PUBLIC',
            7.75, 7.49, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NAKoC0u2oozMPVxnWVRQ/2f1kZ93h/v2aO64dzmDMtBn+74ZGMaNZcMHO8bjaHRZmstbY1jHhXErLAEElgxYJcLd0ekYkuT3r4on2HtC9Vlh+r/Ri5PuZhN8ZxHrEAc+vwvE7BeKMv4HLCE1NsmNR0TxVTYPjcfSBjrr1LoYY+340QJ3NrKOvuv5Psw8ZfY80pvi2HiMKUN8ymEfQWEATiqn4NiTK9Cnpk2JVvtoHVVbZWX6vWV76j2mXMIm4lOJ8HM46suTDtxXFvbN2E8+a/bOQls0FHhY2gJGWkA3WK1RLRabE93oRt8NZ8Ao4xqpD43Od9QJJyS8LVTO7d54Vg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508009', 'A23126508009', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 85.90, 76.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '44f624d0956e47ad2664f0982283de3ccdd172924d65e9d655905c7276398959', 'CERTIFIED', 'PUBLIC',
            7.64, 7.32, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ZyBHWJqgkwOSnuyxziTe6czwqaq7NSUNZtPdUvwM0Cp3+RhwbPRD8MnDfnJzIyXQo0rNChdvbt3Rj/ptlwRs+Y1RdJ/zdsgWpkOTw/5A8DaHeMq2kU+W4Kj56Kx2pPRYTS9Es2LcrfRf9UhfNN6Tv0xfsvuBRj/5zWHqM31ZwfWOyqLCnmqqtNopKXAvldSSrwhXrZPD9orTxhsdCQwRSVp68tsBQs3inKmOu88fd1tCekeJ9xvgEUnSGOImt33dAqY4SianNS10uqzSkeIJ6hzSi/6vy5XVRjp4Fuh/lPh7HwT9azDgBheSKhl/3vRTF54NXceS4Hbdl5oPfaUMeQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508010', 'A23126508010', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 86.00, 59.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f3dff4975611c7f5af34114be29d4f4d5ffaa9450f5170db46c90d8bcd5c2916', 'CERTIFIED', 'PUBLIC',
            5.93, 5.68, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'mJ30N+LXl1AYpqUL+Lj17/Bu8Y9aZb8umxxUHX5sMmuwbqlyI9K431dCnf1SORVrisXP6+E+hmSsWk3nNQ26l7i8WT5GRB3WSn6jSrZTvzr4BVID4mJG7927XFaQasA3M7o0Gx2SjxVoPnKu41lWFMSgpO2LbIy2PFiD3ZL31Akl3X7RPU+0gqUT1NpFKLBOCdyQ47mqTrCVGRztACgabe/R4AcIp0q76FFL5cq45tcvgxEqOMpPfbLUZXpd4Ln6d+vqOf5JvbgnkVtHzqUv65MUNZYjG7Wkp2Sft69V8jXJwcOBkTuctjfLHViXlwBSICp5OAP/f7X5AjLVZp/qdg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508011', 'A23126508011', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 86.10, 65.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '4b1439c1d3aaf381dda1541c225697c722b4dc5f8b0fffd0f38af48c83cfc3fe', 'CERTIFIED', 'PUBLIC',
            6.52, 6.31, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'e0tWcs73uPLiYzoD1tOx8HkT+3dIWhRdjVCinFYvKmbXEW9Q9klbgbKu377lfxddhUu0AI5OyuE+in1N+03d2NAPS+Qk5vAynEVk5ozwv6CWh8vBgeG5DhdjseEnweI6VndcoASfAWkzUtaVBni6qhi0mspw2beSelAA4E1pgUI1R94Pxkrr3GlOCS6skBg/Hl3eTxosJLkUrWsOiqJBOvDinD52J++li+CXW05oi743vzoJh2r8A5cKWa49zYf0K0OuxVxyS6v3Hqzhh4y+TYgKc+D2eE82NkzTwjatAYYnyEbmiycvfVN6/XGmV/riXKSmlUUelIuwyWiU7WejZw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508012', 'A23126508012', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 86.20, 77.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ed667754704df48ec4faac39fd2e6c25908dca094c7d4ccd6ef5c0f5cc29f76c', 'CERTIFIED', 'PUBLIC',
            7.77, 7.38, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'XnEKLxxXa63ivzKclRBJ/8MAd/fPfFpXkjFt8HJbCR+hwe4DJZ/MhN6SbQmszuYHPYWZ2Kcr9B44nxPRP7sfek0AeGM2zjJCXYvo+TAOKn4XB1Ktr5ldbSBXKtvKnIZJIWouAUFGy+p3NzZsYIDk9F1v3IbQX+n5hI3UwOFnIySSG+2lXsmE4CazDIs8xLJdw3iAfqWThCeO01HqOlteWLHtNWjAaxq04siVQzP5P/keK6ag90vGICTfr7iKiANtIvYCY4Y64X4eeAwtBfASKVW8lT3Gut2sw/Z1gCW1gT4UJtFmItE/s9hDj78tHZ1i9gpt/rm+rlWqgbtjP+DNxw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508013', 'A23126508013', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '05f47ed47fe0089081e47b65fe43c0fcb6a75faa95ab64a5b320c0db10030c8a', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'pXjF7oLzmo9T5hapj8x67XWw39JoHOUqGt5b+3U2BBSVjkeXqH3eJQ5NoNQDIbZ3gs1r/5vtjGuMcVBuR4wfxT6+hyIEE93J89WqF8J4FpwifYoXZEHvKd+yc8Q5yrL5OW4txAlfTxIigQOf7+g6NswQJIrVlETzwHYJFZOkcy+7mcfVnlQFIGifoXSqpN9Ez73S7OsCz3Ps9OdOdaj79Gc46eT6MrPWHNLYHJJwgPXEm3v5/UbaiZjbZDFavMmlylviCLkCrffnPTU0OO/+t86+Gf+YcviWMFnMqLnQ4wyhaTat+JuePPlkoYexFhPTDttq8zOQ8XXO8bqTh+E8JQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508014', 'A23126508014', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 86.40, 68.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '48059d77ccb4b03dcc03cb53e75b84ee853b0334f38bfddf70acdf63f8a3e2b4', 'CERTIFIED', 'PUBLIC',
            6.89, 6.64, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'vFaQu1EW7bqMIon/m9F/xCfWXvO2yBLolTj7tqhFL9SroF97v+lSm2kS7OSHwY5BOoqyKnVwq5VznePfZOSyzXL/OlfBygYQPnz3ODNJTKGXe0x87PrL3j0wFx85BQO6e0pXawqnoZq19+elkdmRGk5jHEmshBM6Q2OqqBmK+Ch5Ev6q2fdhFYeEnfqBnalKjtsGWhlLTlz0rSh52y+a7AUJiBS8Ns2GJaNXT6Fg4pr9ZPW0MNzoFsAi1pwfizua6nACeHy7SZCM/AsePHyeV66PGTH8SdZ07cdfkcpQx368cmSZhOX6Jvwsbfdt0efvav7VAf8oHYh7YkxabRYaUQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508015', 'A23126508015', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 86.50, 82.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5c2855c47c1f750d12f01ca9fa4a55c49a713e67b21f4088e7831468523d9aae', 'CERTIFIED', 'PUBLIC',
            8.23, 8.29, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'bBDx/+tr4RsBQLzTtcNwNGi2+1s1l2o3Y1mT5JV4FKeOCOS2QFquc6hHj1CLSaBHE3TZoA7esFc/iVjSKwxRDWtfNy/QM2hC2DGdIVkUxgt0qJlhUm4k9pZ6UNdfeuG7mxx/k8HYFAzM2PyGxo4T9/as5G0qRz7FKzn6TpMosxJWVBtNrj4qrOYYjrLtR1tLtNCKX1ofxz/+AWbtldhwuBo47RP9Ng8XAj92WTsNNEePQKbreWzx4pRG7IG2UgyLhEVadM4xAgyK1fYbIaslkQRv9fns4gksb5oiXBCP65b6y3tDTnDUQGhs8eakMaZbLN1lN+r8PdwFOGYYP2TiXg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508016', 'A23126508016', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '0f844631aed5cf13e54da680a454badc5f482f1210fa8af5fbafb01e17cc6a11', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 6, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'WB1e9zNiPRV6JryMp4nc3byp9SrzbEjvrwRGAUdfLAw2CfOMw4PHzHeQi2UZc7/4cHOC49TvuBGQDU9GDtzMmiTnc6N5Cggqdx0Sl1NzN3ijY9MKZxPpE91rO2L2ANXxft6JlSDaqPBaJ5sxqZIPDg3Ehh1DmY6hVeysav6sMdOwYU8FlcBLr9A3LSYlI/15WLW/e6QFVhq1vcCRRIoKHlvUrNPIG3cs9Vi3AsRrjS4V3+qBYKqhUpQbyd32FZoj6VAz4m3bH8lQeLfog+dcFgEPTTuq6r3E1kgukCPtlsDvo5abuBU/i6Bx9Rcjf2cUDIieOo36OmPW7zq0tRK/dg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508017', 'A23126508017', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 86.70, 81.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '8b94108cc1cd1c03edbcabb35b0de4b07cf80187fdcc956a60b0f603eae46b7c', 'CERTIFIED', 'PUBLIC',
            8.16, 8.35, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'rx1AGdfdpb2qdOSaM0ADpIqqxDUCXy0aj1/F0t44UNBshwcQnEvWHCgBM2fFr5WyjXtAG+an3YBHk1YHta5Dt1eS3HNlL8+b0loKr8uPfr0jWtpkbIff8SCCiGY6aY7XYqaHiq0XcPbH/FGKx43VWpopv1ebZjqzf4mcRWPvAKt6VNO34GSLuwpwXK5OmfdOomsXCIQBJ3jErlkPoPrqg5rcD6v3G5WcsDvPHpttj1xU+aJYcR1Ww7sjUj+YYEHbagLnxIsZ5HhtKDKlNe4roKlm5BrC6+YFPiH7zfhMcPHFe39fljfR8fBKaYRQtKurBAoOBL0Cct+aNSoZ86C8Gw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508019', 'A23126508019', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 86.90, 79.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'fd800ca5e2dad48a44e20c01b8c03543230f16083ef5bac61cd941ffcad61c61', 'CERTIFIED', 'PUBLIC',
            7.95, 7.60, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'dJqB/D2dZ16FkJDtNyxYopWJdCNlVAZ8g245GqWLE8DpD1sljsl+ztvtUE1E2CjZ7Yxk2Oqvm3OpwGZWNeaBjNUopSJPm5vuzTPQIwX0x1TrY17ekE+2xmMxkozNnkJFq7BZ1cZyh0H76ErZz5kotlm8zxQIgq5IvdTmVqnRCnY59BUOWyNSwe6Z/h2Z5TJdneW5kGyBwk0xg64Dzs9ik4giHtHJsCJ0luRktGQMqXr4PeFUtGcOjbA+T+PznQpqXGDEzwBj44tp6wmGJHCiNrnAoUhFv71pwtUxqipCvERo+IcgUEiYvpdw5ciwCOgSHx4XUvEeLx1gGv0tpCOBJA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508020', 'A23126508020', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '9cb76d0a7a8e8c1bb166003508edd44243cc7eb937d80065d3eccc0c64acd602', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 4, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'El1zeilzb1kBg8WpNWPYSxkh/l+3fg86v796PBgAwcvan6gyRE51PCd2rnR7QgB4Bn8YNYNsWuDGNUGETJUprG8a07/EUTdyNwhrZAVT9meMUpNeB1noW4b1Kt60tZCz5HfLp6vFd9ydA3ZulN2efPrDOAWtYxX184TTIGOzJ6EfEk459/X81p1EKeXMZEPR5/hErrQpbmxsOGFu/y/un5TjHbDo20p9PeoiErHjQStAX5wor0eduqCnKkrUbDjAfA/j2+qulObvspJ1jUoDV9IscjBqd1WFqEkPPuEXN+KN6t7SCSChewpWPVhuIO7IcXLN76+bxQlFfveG0EcAUA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508021', 'A23126508021', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 87.10, 72.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '9a0952909ae78fb153c94f5869dc4f38b51e574d4239f9a6418e566d91e04f2f', 'CERTIFIED', 'PUBLIC',
            7.20, 7.00, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'hpKIEPGIJdMkA34KD5+6rRH2xKEdYFvPrBCKnjxOhNRD/6x+H1bfRgMYHDm2uUIyXKh1rjJrTb3/makTwHJ5YwTcqdWWQ8TwpVFfIb6CMpyVXPVxCnpj4AHisWCly1iXHyJnmnCOx7uyxQiKekTtZ5l7NwBOfWVwaFIXa2Uqah6MDax7LtcYOagCr5r6gKDxx1clqbcUwEPJ4QSeUCqzfHyLsQgBdojq7UrAMm4CI+WF5L4kYXXNbuzUMjG4XnjO8Zax8mgMEvmbOITMQ3Mzi/pcmJnmU/Ho3b0WguuOa9PvSKlnVn/bAkcvgpVmGYwDyKXceFfsLkwyL7osH2SbaQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508022', 'A23126508022', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '2c036c785e2889c32e9bb8fc2a284dbbf2659d92809618e8855972fc2526cfb6', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'UrAPnTMhwGQjdgMyljlcfBT0DXtb9yaeAz0nojjTl/5mvYU/b5qYSV5Cy1VCxqEvrmcteefu5mog61IFPCXf1kFGH+QsUrOR05DbfA8qR5fMwfEJIeLYGNJ0XiEFLmih5g1bag3Kjf/hK7MY5v4sbL4uRa8lzlGq23ff3dUfxqZnxb6/nHBeYfNRRNsb9FgvxuMfhpTmS34nFRyke+loomVvMHmVHGS86C+Fpc8Qo+Y8WQorGgL+YPKv0sfWBKERk6PdKyx4fbFhCcwJZjLZw0wecB5zfK1sXxK3yf5hb3+el8zHrncoe9Y1hzgYrVmwNfZfpcv1rbvEJ+bQm0GGHg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508023', 'A23126508023', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 87.30, 70.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '45bd01f79c87272914d39f83e3d86b2a4c1244f04a3365b295100f56ad9fd276', 'CERTIFIED', 'PUBLIC',
            7.07, 7.51, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'iWwrVkEE3U77/0+vYOiR0hbuo7hAdsKDf0n2kY+4pcFXGYZ3iiQU2l5xV0WI2pTsTg24Dq+yrfNYbpoHblxEVta4ePXXQbLjSD7UJW5JX2E4RfLXwYybC16FTHIiv4aQ6tPNV2NQgOX9uPz8sArx5++iqDlb+mHYQftex/8pOYvUGdSRaS6O6amJV9P7snPn/yniLe4tNMeR/kF6jjl2xlZMnJwFVk2etsAQxaRYi0bHK574eJRC4LTXZ/z4LXNhuJ7//J9zhcLx6w9ktpiTwFh+oCC/ZtWTXGGXM/V4ycZ1amV0CEwT+6jMVYvAzvcqMwuKc2pGd0q3wFD0IeXSAQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508024', 'A23126508024', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 87.40, 74.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '4582c4605afdabc10300f2c3bae69bd505cd329ad5001861f16fb35101822eff', 'CERTIFIED', 'PUBLIC',
            7.48, 7.47, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'TsYdL/+Ymerok+ag1of4VnU4zKMkLay3yCr4kbnebSzNaNe2hWTTtUOULxPEDyIQ3GxoJM2Lc1JiGzeoK9XapKSxIy8lY4EXdyCcbKeYCpn4w59wVcplM9EUnZkeoUoNB0Y4KviPH2BS7aWh1aC35Gz3KtCUGnr3Ej+5jzIZ7xutULP+Q07LcZ1kslU6uJFqI7PstOVyyseRXyy4Bu0ZAei6D2syk0Hp0H90eEbIak8nuBixQcTmDSkPU58ytWKC6yCtxO3UhXNT7jcBO8CkDT3zyU191ZNzUyqndYztF7lZUMjyTZehrHGI2M1ErZRaqlsAuyyxH0E5864nsRU2ZA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508025', 'A23126508025', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 87.50, 76.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '9db77c7ae17cffb590ac99c8f2d523899714c43a49376bc3001b3c902bb74295', 'CERTIFIED', 'PUBLIC',
            7.68, 7.51, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'pgrSSZHREU91HVZUUuNGzmC5/HMCvOzsWHYO8mglZj3FvT7V6ks7+tcLUW8nybrWCDPtLbhHXO+79XuP+s8/0eEuG3cSqBQuACvFKIye+6wqHhStOf0AN3Xe1Qc6nDjPLh/IJq9fKrYNx9s8nETgnQPezcn2TdULxJht6R9r4N1BBmZzrqZ9PM84uJLPcGo4Q69TxxhjL7D9s7tsVNR58Vf3zyblp91NA6IRWa3PqnA+aG95XEpQ2wFfO7XLcdQbxVDh94meD6cizZa4PqOo285tRCBcKD6p/4E9U13PE321ybOiKHn8QYYW145U78IqMWv9IwOOsXRl2qX4ybXHrQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508027', 'A23126508027', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 87.70, 86.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '3a33a36fa5fddec2c34caa14f4da8841a4ce94114fb0c007fd6421856b06e2c0', 'CERTIFIED', 'PUBLIC',
            8.64, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'fz/05+HgkLq0PQ8czLXMdj96uxBPF+Y9B1K5iJsooJqZHSlA2Et6DmAKmYzcLjF87Bq3imO5dmL8FJzqxhVIhI5Ey65uZvWa8Yb0Q4mCYJ2KtnttmyAbPt1Hf8oADZCfjYmc58EAR4L/picRmYzcNL3blnl9FylLo9oEFmtNLE/NR41WUvPqKR7FjZ7uY0EdoirFhp5F81tCXXnBcg5Yz7LNFyRGJ13V2YWQS5e7tLo57zQOOAEX9Jg4WZIDJi9ucqUfBFN5cZLBV0rAZks4/k3SHpBMV6jOKb88rDyZVIQLx4sKgE5GsYf+wNxP4kVPnmNZbpSI0YXtto6ZTmZkFg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126508028', 'A23126508028', 'INST-ANITS', 'PRG-CIVIL', 'CIVIL-SS',
            '2025-11-15', '2026-05-30', 87.80, 80.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd1884f98a11c65d4e1abf9e79394f37407c00a46074cbcb99af1eca89abd7ce7', 'CERTIFIED', 'PUBLIC',
            8.09, 7.48, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'JjlgBELOmhKoYo3b2FmLitTqedyiAmftjM11ntNS4m7o+i0xLSH9ZOywyxUSYrRV6T7PDcN9zxdJfrWrX7H8+ZlRxKBTg2VZhJdirB6eDI4Kbesxl6SBxI1aE1yiYpgtWpMJHNaYxSbBiuAfIUm6Fa4Pxl+JzOnaaSvnMXihXP4YwNWqdWuiOSeV/A0mSMpUdA8B83UQfAz1+qRUSDIvnCDiJfJEbmnxxLwFTAjRJLuf94ntsxLvxD9X5UEzQBzrc7Gvfo5dVd8/WcTTm2SqVLrAzjQEyeTKccTAbIuvRhav7/UGsiJzrMUJsGXBtdkgGa+Yao9NhAEp3//UjZwH9Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551001', 'A23126551001', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 90.10, 87.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '43827df3af03a8666c1154be34968293544fae2566df82c657b43df719dc8e5f', 'CERTIFIED', 'PUBLIC',
            8.70, 9.00, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'XrBAHMPI56edHxlDfbdzJsVaTf8WRq5cpIa0OEEU0UboRCY3scVIjJpZnb98cnBCJvFLPI7TN2zxgLo83oDPFp03R03E71EP8MYco1T6HX9KOWZY71aJ7tWax+s6bsfbFuTFX0YUR60yRpQYkKedkn/eOEVlyJbLGFx6qNAhTsk1QWZg/zsUJBYtkR2tRZ9wn0rsiqtuXNm4yaUQwFe+6W0wYXV4zgKBMJDYEUrzyFT33idX3qYOnL+nW2OnGOb0X+VPVoD3uR1fGuHGbvdpzvvd1bF9vkzrOAPlkV+z8mKemn1L3szzU1Vl5GVYGoelqLi354R3JaGvh+sqOD6bjw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551002', 'A23126551002', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 90.20, 90.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5c3f232d9377b74833acf39c4e7ce5a4e930a54231967e2d179041698a9e693e', 'CERTIFIED', 'PUBLIC',
            9.00, 9.24, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'cmGeTz/nJvHA30TzRLNHahW1392qUjMOuELMMAluvWujra+coihKq/5ziaZbnYmQJgQdTx7CgyMrqFFYHxL86lOSaPW1XHonUJdZSSHnvL0UX8Fb/gCO+ZfUWcpteevkiL99GLZjCa3uit5N4oukuLRa3SFeUVvd7xXUFU+RYzwFNC3Rsd3XZ6fZEO98xZt1g/85G0wGL2R0Hygmg/IimktgtcMXvs2jtQxke4GGH03iQ+FLoFoyNX0m47uWrHlSAfiHe8bSk0SYllVxPfUt4r7A4+dAOCgpUiDK8CQvp6xh6S1vooF+FYkCLLmolWE0Uf7SdByP+rDcDIUattsYSQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551003', 'A23126551003', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 90.30, 91.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '033be3754e46a85e30a0398cc15075e428515ba389163fd070bfe5e9b9f6b28a', 'CERTIFIED', 'PUBLIC',
            9.15, 9.54, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'WT7ZIlAsYhV/oCRptGyoGjfmfnCdGLvq468urUqGyK8Y4qSm6dr445r7wDTJdy2AjtQmM6VR9FKL+/Vqegh6SYkXizXoeGTlowDFOUkJe1bV5Dp4vEypWtCFQsOwsnemeJRHeYtP49JxXN8BmucQmji9xpOEZ5NNU/pvlV3decdRWIEndiSgoqEFhH8rC724cPJ8B3yM+rCG4bd9IgEjXHAy7R8pELVUn3Exg6YK7reiiK4wKhizsFJtF6DLtqPeYCM2pGHlyLO+1rOXYVStMDXAgnmv+UfNKjZHtp4hjZnCM608EZ/hC2jopYcGy8RyiWKWKseZIa5OSJN8JvIFHw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551004', 'A23126551004', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 90.40, 66.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '80e7636428c7893f9fe5e338bf3680a9b2270a69ce56e7e97f760963bdb3b6a1', 'CERTIFIED', 'PUBLIC',
            6.68, 6.87, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'V9XAGgUQ4WEHbPGbgCrHUWX2cn2fMpnIFH4vx73noZT7MbwzSrzzu6oQj7n0ergQicQhDBjUikUy/fT4HhUwAM/JlDhj/NfBP5rYPtI6prLwoM1kkrjVcfMdL5BG+n5xb50SakqJnx38ee/DpuXkGdyTpktxYvsjtg6r7bOEVZ0WRINXBoZS0vvn1gnpgR3FPjmqKgPgQV8t6lkMGGb3ioVACSt+sWPJI99NX5lRBC55E9De6w/xfuB4YOf7l0GSBP1EfC3BSWdRQuQVid3nrTFxy2wuHbT6Pa5scHvMoa5doXjVYpSPinwc1PPjRX2E5tqibTRRSKC4xowWFQidSw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551005', 'A23126551005', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 90.50, 76.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e5da2ca749af484a4e2b9d01314c93a5190ac0ae0ade088d1682df0cce55d746', 'CERTIFIED', 'PUBLIC',
            7.63, 8.03, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'IE9Pb5mtIIYPxljc0gPvBZwerwEXk50Xz6V6Kg73axJV6Tz7+db+EBpBglpoaZ8rCCWTY9W1GmjOp49ri3FJw2NMzawL1BAkN0RZt2L9TReFQX3Bd2tmpB6Oeu6InlFCFF8dfwjCWf82dXeFZwj9ugWNg9mQyx9RjTwMgznlM8bzy+tgfZ5Fpn0DEMzqfMBZ1n07+N9be4HD+6eUszgSYpLW84KZAn0UkUJJQNggThfNDohlrDOijPGwGzeRSaaU21JAAEVvcf/3AwEzoR6IkEUbtqxsfzdgGjNfLibRFdc8ztGCuNC4zSszg70KujukxwvqZKr0uhYLhNr352vhpA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551007', 'A23126551007', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 90.70, 80.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '77d510556f29dcf87a0b19f419c32cbde57525b238fd9e53758104b7eef203e0', 'CERTIFIED', 'PUBLIC',
            8.03, 8.03, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'FC5w+vrvME6fRH886DermueQp46x/8gsMbBoGZpCghGJyBKo0XM1V4N0F0AJSD8qRt8Kmuvl4hkjdlKjWZqMLyqjs1DoDyHB261FBFGmgGfndnWlyW0w49RSHCTqHptyUNWHJrxDKYVWZIeAgtKv2d8v/CD/0l+0/tykn9ZGyQi+QdTbGAvFS8VmJ8PTty4D2rvyO73ZYNd8M0gyOwPbjB9TWWMaWgiXBjKFPnhTENMaCw3/SDJwsq/p99ADqatDS7LXUSCQOAdoSXhaHZ1dXLMypSYq8d1MtEzAICBmCI477jb72C0klLWq1lK0R6+j0v5+i70f1GmM/DPFGHA15A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551008', 'A23126551008', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 90.80, 79.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '8606b62a93edba745451aa95a10b4909f920eb14cc1862e301bac7d5fb0a5efd', 'CERTIFIED', 'PUBLIC',
            7.90, 8.21, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'TGqx9RxMRI2uLDzU50bVMo3+dCXjAiuQOuVM+fT++/DwT3Czlp5YEebCoQvzbRXXJtxHsZF0JXANLL3SFJCeNB55kD8ZnfiqG7FETNoZMx3KVdo+BwdcPpxELdCQZIZw8d13npnM8FNzzQ/6fvHiwVXQDj+qH5rxPcNlTobNHztuHa24sH4hs5rzPT9LCajitiE/NKCuZQNffwEhfbiuVLel4TojPp8XnPlU8Q/KrrEkhAPRnBad5YqOf+ikRJ22aVdG/RC+K56yLEW7XWF74UmPKVIjW851p+nEpCSvi94ruYXao7UyvbrjkWCFmn5WKiyIN5Nfthi5Njb0BYhhIA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551009', 'A23126551009', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 90.90, 88.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5cb50d2823c2dd27fb57c1a934aaba3ba102a028d17831cbb44b18b805cf9d26', 'CERTIFIED', 'PUBLIC',
            8.85, 8.89, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'OWaP7v6yri2JEZTirTTsSm0x62F1RWiV6jT3wwjWeonKoQjImXnSpEmu0E4+zLZeL8i9Ogu06g1ziZQ0ogwAtIZz/TIDyGNq9no3K9+58SWdP1/LUyDDXZeNOx7Y91N8lEtYasT6viuv7iilTwgSUr1axNyIDPqScuS00DxCstfIlOAOrG/pUTTVoKgrmL1VQtNNDp37tre2W5avCHttrxUwW1cMeUT0KdRm9t9m+6MYK3mGCqcE1OVhxA3xBhH0ey3lquzANQRwlMEVr76LYx4hxqJN8cfUeduWrJ1eNwygZjKUFZtP2z9xVn/JVjIiF1OCRq0vs9x3DwCUyURfFg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551010', 'A23126551010', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 91.00, 93.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '333f957acdbc1e52781de66bc68afb8c9306e4dad60e79cf348af7eabb447306', 'CERTIFIED', 'PUBLIC',
            9.30, 9.23, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'GE6JNEQPsjZ05VrG8e3fyKnGQCW5Mjscyt3dnjNxO19muuCZ9Jvdnso5YuDnFJshBKXn1Gt/StYfejIsGw/WP0zSErgSOZ+e4ioPOIf802HUIzuJCs1FPAbX+apKHIb1edDJIQNisSK3fshFRyCGd0syQ/tKW+Z8Oxvqsa53lWdGLDs7ugOMXVl8OWiD92oB7z0qA2J7gazWSHqOSKfaEdMg0CjUbj9llnNFFeUYAo8UsYmiBrobhUd/cmJFT9NU2Fkn4bK5/dPIQB8J+j9DhwckWW/tcUor5q5XxmilBxMhoAUc8xoUhe5eVd2WY9zHniEKQCmLsuH29IecKZATTw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551011', 'A23126551011', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 91.10, 82.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '705482306aa412146177acc3885e915eb8d04159d96029c71dafced0a8f58359', 'CERTIFIED', 'PUBLIC',
            8.28, 8.40, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'sErZXHmqRCeQ6LfpBC+ji1AoLhhl/+AqQAe6RhDnIcj4KAiTR33MQTbJECFmP3OXnFI60x8Tvtyyy61EUl0+InnqNZLwrAEqYtMOwxAtV0pZIdJAw0Z+JS/m8Y02XP0xt/kJ8AnRz2FSo7wGvD67wiBm2yeI60bG267OWbytBKFZCFLPtD6KNwiCDQti+NX5T4LBn2oamwXPpVCav4Z3fab9tG4Jr3O4/DQe4NSZe+haCD+CwvU4LBOUbHuswCM24edasWXc4Vx+EmtbmeF3OKugkAfgNkPup45ytyIJSkmtZdq1lcwUKOddtNTEmfllDnB5iInBc2Mm1tp4MfKSrA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551012', 'A23126551012', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 91.20, 68.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '9ca7fe8770d15444bf9de3c65194bbeb004b16553b6b1c4d17d268500749bac9', 'CERTIFIED', 'PUBLIC',
            6.83, 7.03, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'lrp0xwtP6Pu/HEdDGb9RSo5QYyJ/vObj9QOMiH+3wmq2w0zA+m3+FiJkkrj7RAEH+bsagqj/rgIpYN883RO8YgJ5rmIt3GrlMLeRz5Z0Ip7+DQoryTgAqpDFrJkG2uE6sCO4FVxd0FXtGq2o3Vzg6CT7u9u3RqR9GGTAzydwNZc4XNbcOab63werFCbUSXQvTF4sR/FUrMhaXGqg8fe6hnLVBYgte5IpZK0Xc8ks2Kl0wjBpS7EAbwNBYMmEI5dYjCxxqZNgm9R9h1A4WlKaE17hPehIoiiuaYSMqkcnZ8zU6iMOr50aMj3MCpnOXK3t8J+SDAKQ1xcitlzy+FfcjQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551013', 'A23126551013', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 91.30, 76.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '9b3813d33c9f2e63989c97e1811ca093d59e1859ae2797f0d6af9872853e3cf4', 'CERTIFIED', 'PUBLIC',
            7.68, 7.36, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'gcopACwN95PbAmlpQ5iNX7m4nchsvrDD3r9QPV9zX/HxTGr7WJY47woUK3Jcj1vy1OsqnVU13x1DXOvfhlc4c0EK7gAXhWeuqUR2xYf0nGKUUbJ8c1TdR5xTDhlDwZ/JL6Xa9jDb8jIJoQC3GD63MpcDgCMWqtTGG6hX9OtYeSr9w2rft2FpOfnwGm4r3dsnBVef1+ROq+NcL0cK2w8JsTwaBipiybRTzd8WwOEdqPHEx64Xc9y6LzwmzHG5Ix4L+agDcxrYeAjUiNB+ChwbXQW/UYE7MQeEUjqLKDDma6UKEOugP4/1hIF5/GUC4ro0N3DU2PiHCtgJEIg73+Cg4w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551014', 'A23126551014', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '22ba8afc775175966d1a082755f05b69a26cb29796ed1382f2d1606c2297c4dd', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 3, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'C8ovFbMbTTXe2LoB6I9OWQHo3uGrR0fD8G5/uAvNp3j+pHiv9mlFi4wKUziKYFK+TiUXVq4ooYJNAYZx5klwpg3V0V3C2ttofELldjH02EmY6QGLioY8LKqr+PVIveWFG2lyiMg0ycZ9bvwzeBXGMgoQTv99J1BaXEp5I5TNOKgVyzMee0sxR05OZUgsC65QXVY7Lw752WNZpBMnOi5u2tMMH4PrcTe5zYnqOp/WNeOR8NoActlDd4nBnm0Y8KU3BJIpMMepAFOm3qAe3ng6fQ9GUO/SqguzCI2gyHulDSolDXeNxQCRd0eHG1lTkYLhcxB7jeTZDJOsPxCngccXAg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551015', 'A23126551015', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 91.50, 91.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7d1f4a2a8608be40814a4bc6f03e41c2c231fdea988bf5bb1f1a0af5cd94a02b', 'CERTIFIED', 'PUBLIC',
            9.15, 9.23, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'galJUGMy6EUskxiM+H/5Wjda62+jakAiatQ/eTmcDodW/5gk2OXojsXUNYzcwyu084AFb2xFOkEjA3pSLLcNQSjLJb2CzzMgQiDIszlnZwNXa04oMCT71KLrW7sgdxozONUPJ1cFwt3++LzAXxS18N+CrrwFQuiOkvumdsmYISQxB+h7UxV3hRpNFmGNYW0cqk+ZRtQcbKwxMMd87H9a/wndVebu8exYIPXMf2Z+LFet0K2X/dHVTR1+3RH7epm2Q4JZcBcaILkHlbLwb4gPYZevz1k5ghAGJ6iHlKE5BO+unTKn52mkAACj+bFqhkGWeWVmwzJeHsV72pW/SEhrMg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551016', 'A23126551016', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 91.60, 97.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1d43a4621f03aca6af9ecf9de5ee1fe32790a77a0699811b84c4bd07de13c3d7', 'CERTIFIED', 'PUBLIC',
            9.75, 9.43, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ZzmTt0D/zIQXErlP0SSRgcNsro2nXKBHWP1p1fcddIduQXUj699A35ddpzaIW1KJEycZZR2PjjutzzL5AK3bgKlu0zeXJiNtLkwFYpys76nEfsZLzxe/mxa9x+wiNH6mHaT6E+hbs6bWw4zfERtHwG7BYRDjg3aui3cbv6zVZShgKZrm4HGg9phKfXLkdsW7IOzqUhJn5ct2/xlQ9gw9FUrcFIXaD6yY8VzGJC4eQay1VxlYTn6RlspN55M0ue2W9xBDV4XIJwYaVHl9Ym1rDTvhdth9fcdBxix8FNyux7n9P2z097SiggOK77oZxL2Hmcr4P5Qi7EjjY8486wKtdw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551017', 'A23126551017', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 91.70, 89.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5baf370850e453dbc63d7acaf2bc948c1fc19f074f5331fcf60b15b5619ea2de', 'CERTIFIED', 'PUBLIC',
            8.90, 9.35, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NnSHfpqVr8Mr9o2dg4sUPeNr06Q5qbWBRMY2Xc5yi0CQh/R5w4Krfz76Y6oDjefs/WVuwSK87wsVsbN7CYWQFDupF1og9fVF/2oKsMBEVxkC0T8DYeA+Y4T4tt4A2bMo1ovBRfa+CbJ6R2wrznLJpcgdVNPl+glbqMrJndevCOwaHJL0EZSC0T8CWphgIZtTf7onF3icZEULqLwahT9xsNRj/olBGm8UqA3uh3gXSGNtUtWbo17pEDnrUoMdNfJUg8Bu3LYmJZg321PSYu/u29dsmQRR1LHxlYUtwBDqRuSe6mzknuECVI/a8ts3qW57Y2jXyIw6nH4t15ysFLoAaA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551018', 'A23126551018', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 91.80, 67.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0e9fe581ee4422c55ea705433d031f794deb91f539aa3e2c61a04e54bee8e1e3', 'CERTIFIED', 'PUBLIC',
            6.78, 7.10, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Dh417bl1XZqcLweXB+WFiwch+znBWi+3B9AXx41vyyolFmr7McaL93GO6b+MWWPD3MbGQNw9D7rg6lAQmA/qNOQ55LanvqNsTYB0Y4bgHCAiNhgIncLCXfSiF6XBUjexehEHyxcjQZnLGF7wA0CNyFFBO4rA9XAMabPs/aKh+SCqHG00M9jRY6Mnl+HZoH0/ODqiiMQKul0YDTf4yAU9hB27gaVXewuHErPBwCiQYdyqjwiltriaiVO7vrtDGDubT5gyq4So/oCS4zmvxO04llkPeiBVIJMFK7a2a3AwHM0maaI/vq0i/zdQHc+ii9VvL9HL/kWJgtczGrRslF4cIg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551019', 'A23126551019', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 91.90, 88.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '34844d1dca04c336748c68db79bc7d0f2d6411aa08e38fb7ff4564417945b2c0', 'CERTIFIED', 'PUBLIC',
            8.85, 9.20, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'hQRHpkidrNzidepMOpB+Ubm+pOC2GeIUs6QotiPiy5J3Q6KQXhSobFScUcnmpvuRoHsbp4EB9cmvNZ7LXwJIPGF3Oq6i0V6tZ6vWreSsdDYkgNWOUA4rrjKfH22M7NFB3g9iXyACesIVeeDA3bMXXMCn2ZCpbZLjzpQOPKyPXxict7CMAyxFoOec/9OPbGB2jjRDbuIoK5X3LIQA/pnxaObd7v9tTTerlofTdz8t1b5DY8K/wcx0xVOaPvia7ZnMEJ4u/zyqvm9WFXHT5j948fqccR9z5KNXH586hzff8wBderxdA5p7Q+fKZtdYCrdULTIgEsmQcrmwQXizyXvbmw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551020', 'A23126551020', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 92.00, 80.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '786c4fda30293f7ed39fd0415712e5b5c9ff04e09a6b1ca61fdcda3e43b1aebc', 'CERTIFIED', 'PUBLIC',
            8.05, 7.94, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'TwxsubPekA/+7BNZNusTEC/dQLfE6Jw+ArbtQozYSrzfzdNqV+lrq3qIs7AREMw7xLcE7MMpf9pkaNCOdjUOOhLiullYt8cqv0WQ5yPG0EgxUFH7q8l2ga/96lhAS7hdN/md1/4KTs9maCFY6by/y94i0OLBvs+Y6qnxQ9szqQS2IdUUDj7bwt4ETsTjT16mugb97vSw1ADyjaqkr9BnQdPoNZcZI+XktdPP8CQfDdqfEGKqlPLlNxY7OHX9muwPalYDeSa11OPBa3jtq4fH1i0mxPPP7HdiVGjg56AbqYeeIxpg29tf637+0X4xdJQ71+D7wEAbu83Qy2r+GN1Mcw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551021', 'A23126551021', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 92.10, 66.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b759bfd1d3e27b44eb3895f0662ce9a749554c930461b94a8e9964733e8b59fa', 'CERTIFIED', 'PUBLIC',
            6.68, 6.98, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'iAvHuYMH8PN6IOJ97LyPnA5UFmhaXnQvgs2wQvMl6ST8tTvVK/KIOlHByHvw4XTXuI5jwJyRL5Pu34jvf5wo7fTlghXaB+75fdYug+iqRM0edE0ilQciT8YLHzXckUxyQMhEdpwpw4ndiTqL8BTLTVenZr40EQEb73XFMlhYdQhaBYk1pqaA7SRZQnjRj8D/N5apOJEjex11g6UnHQBcKNpbRHSLJGYO2zRTnki55ObmfwJpZcDTH+eS7YI5AuDgopn9ucbCt4PttpujY6U85exVdoJzdLbQxss9qpZn1gc4PNKhEq+dy3GayRwwV91ppACKa3mJ3rn3iBHwiOQXQw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551022', 'A23126551022', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 92.20, 78.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1d1121a083e7953a823edaba4b0ff389aabeab76f1c28fea4a6178e8aef701b2', 'CERTIFIED', 'PUBLIC',
            7.88, 8.35, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Wmc+1NsXf/Avq5J4ot1biPQddswcJ2SVGJHiN1TU+dHm8buVEew9kBPAuW5oHmN1q2gL4MgNT0Em0iTwtDhsAY4774a+QKittXfYWe6SJJzXGnwkinwtau1F5DMIm3h4A9SGs/f3Z5j8+JGdnSx1CX9dzulW0ntGFf8q0PK2a1Is229ik+vYPpo/9bnSJAhh0IGZ0aBEpmnzsGj42FR3aoD/4huX9Mr2dY+PvCnu7To4ILE9XY/YTp149+ElgpgiYYqZbiIxBlF09gWg3fHDOt1DvV2Imb9CHkWOY3a8zlnD0HflpbnRRc9PmCNh7LPcsKfvml2CKmyjgJv7hdU+xw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551023', 'A23126551023', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 92.30, 82.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '8d9a5f62532e42bb739c3db7a8d45cd666649b2a4c9e4825afd61f00365e5a1c', 'CERTIFIED', 'PUBLIC',
            8.23, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'q+r4hdugrjov98s4KuukEEhL++MTm4l4U/+gUdN/jflHFsdmki1E0BUvzrAfehmstrhuJqODwLJLZDEMvJfYk7R40Nv9mBSxvw7DAb13HxgipUpgTpmn1KGwA2AazUo91dTqIJcBjitssgU84GDLx8dKSQHFHO1cRij1jl7vOzzCYlNPU5WJWaErOhTkIJbv7PbqCH5AWtHawX4D8uT9ulibj+w1Oek1KsXNKFD1njmGOrRP4pfSdrCeA/dHFJrRAypx/ZNtTk3IPuIrr1MZD4lD/lzJGdvQFRD9AKXoR2zAJeHwbULRbdW6/JlLUvmOQZpn3zRQyskkHvRFgmys1g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551024', 'A23126551024', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 92.40, 94.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f95c299b2caf6aa1e6a03b6a57037d85e713f8531c26bf04e4d5bfa42092280c', 'CERTIFIED', 'PUBLIC',
            9.45, 9.43, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'YDzZvKVuBfTcOXwI9VN+kUaoYN03CfL/D6YxjxsG6wdvrhXA/FMVfHqh/RIZAl5+yuMxjEpkjHPX7YGeo/RG5ecZIvN2YAw5Ou0CgwA7lyTgAW30Idaz8q+vIifCkgLAHGZfUG0sXnuRMjGR3fFQa7l4ZrVfMfqne8UCwET5h5dyt0Lp9n7RY3ih8WYicCzbvaHxvqSBxmI/jv/hEHfNkjYllYHCSZ1Nj8dPgbg8RI2dENhr1YSJV+MnCgyrd6NfZynaQAtTco5RK8Ljmc2WnhqyWFEzgHayC9q8TlViI81T0XdJ6HWb/ZVOlpXDYiIPNk8f8M24Ggy8tjFqvLfHBg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551025', 'A23126551025', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 92.50, 57.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'fe21fbedeed26107413db46198f6cc1056637cbec150d09c5cb4848528b6803d', 'CERTIFIED', 'PUBLIC',
            5.78, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'nJ3EUexZw3erXGbjfHGszX/Xp+5o1+7PI4YS+GmUWsf2g3xrGclxbcYxgRzohVmgN06b+BbHtYD3yTy9EFb1BwhZtUT68JYsPMEAtUZL8Pq9T2qitv0APFPKYAlzos4iaYh09G1FoX3C5aiyzWOMi+xjcLpLVHH3tG42Da/6177e5j92CsYZI+YBpcIHBs+jWQdeQrD8R4rY81eCEgklHBaoSFMFN9a80KjTLw3pn4prJVeqkvBMW+HmVY2EPcg+feFEoCno6IbH71HSTHNLfoGFYDlCa5rngcVyXKRXLpp5bcXGCDie/iyJ7sfch/mOtpoQKBEAUop/ihqo09MSxQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551026', 'A23126551026', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 92.60, 88.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'aa8eed125ee922770e9b782df5ab1e354051d699442e6a610849eedbadb04f66', 'CERTIFIED', 'PUBLIC',
            8.85, 9.12, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'OV68I7ahayPcjbQUmO9b35NJW74VPwMmawpffEdrlDdK98AsInJubP05FrjjKZHm6XjvZN9qqi1FWsSkw2BoESrhiIQetXz2Q5ttYg7xD8AvvC3q7P34wrO/+MRu90Ipww/E91GcxAFK1yhJb5MpQ2imBsdCYYf1UsUNyTTQXl50xoicqME+e2t9EZCfAkRt7lo7yYRH3NvthVwErZsePcgoWXz40y3q1i6ZSIreehDmh+7bG65NWC5OGPqlaJ484aaZrTQucCfXB310TgQ4OYEKssNSNCrJ2g1G550w4QBYkJS/9bDMzq+4zRZscaYX4r8hFE6rj+Fw3inuUYW6Mg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551027', 'A23126551027', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 92.70, 74.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '98b7fcdf64933f340b1b1efdbf5e0e6fe4b97d654638e158b25e38c1b60490cd', 'CERTIFIED', 'PUBLIC',
            7.48, 7.74, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'hKzVeVQgC20r/dml5Thd+82oVwcKpoXjRDNvc3ziAkyNOLy9ZokzVevpEA1rC0v70nHjPNSqv8F+edC4U+8lZCWEMCkMDNzz6QmUxa9q9Ld8naHQCntRpyPQQuvNeCMOSMQ39t/RNhUvZcHQaU5YRdDUtg4Mb7x3zSl1QHCB7Vm3A5/J98pBEnj9gbOKV3/NIdg1Ok/aycoUEMiLKANvKHefpfP8J9Pqpg1a9/Ma/bWMjastaLWT8HqEq8kwDLguUUwpBKKKigMYEdcNm9EO27NJjJFwP46jPJkpljAJGH/AoFlAr3iUiRpt0GFOSea3qEW3eesjspR1DRaVkLZ7dQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551028', 'A23126551028', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 92.80, 81.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'cdfe99b0ea332c434b1bd0a3e1e4e227d09411fb1ef8644c033f23ffa663b64b', 'CERTIFIED', 'PUBLIC',
            8.10, 7.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'rv988XEM6zEgeSwA40vHnz8/8nk6R4iAuep8RlFM+L3rdYh+l7AJGsYy1GD2HdpYm3owmyYXcGhUkpxipY62sfITsnKBjO4+qyt79dF9AvyCSnlJ9+wXJjqROc2A3WpwAkDkcXfCmKAwS33KbYnhOGMZV5P5RCxDcFgIX0Ed2w9LgoMN9fnFs7fkrqFYnpKc58XJcUS8j2knJJRsy9EIXicN4BXueen0HO/JAJtW1UkMxz7eyySfsPHMhHquqNLpCRrP0FPOSasUJCqIWNhnv2EBeF2Kt0wgqLova5SLidApweOOPyvKDR9R/ehrxKvclrt/s3VboKAazPBhUy8VNA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551029', 'A23126551029', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'dc59a356ab9b48f65e160d65887a189f294ea360ed69ed3a181fdf2754f4ed4e', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'iZ7qwhuFML8kwkc4VWOFL+XLkj3NOARAWN+m0Si+3NgjJafa7YIsQHd1u8xvDCjQP0GusYBXNxUp8Lxl0aioSchvAGw7DnKe1IiD1w5ljrBN668mD79brEyoFhbsvCv05Xvr1nnidIij70nuP9t16bwaGVacPSfJcWAf5/GphQk6da6Y+1fqEyX4oKk8jD+tu+xkCiM6Q9SrAgGf2jS2Un9XVWqENpURvQV8tZ3zHt2fjyluSDDEjATqupNOU/d5/7B87f42CLx+rfVrNB/lgS/wbDuVfcSM5ZRVAcblm2vWkHRpefToGCLLB1VRj2j66RLDjCIXji+8s5edaNp1wA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551030', 'A23126551030', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 93.00, 89.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '4d47225fd3a1991d6013fca58d3b41d33b21747e9251c2c1595bfc079d24e284', 'CERTIFIED', 'PUBLIC',
            8.95, 9.31, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'dNyf9lDj23HV7nC/ikOjgH91vgnapjfkU7vL/JPfNkvhO1llcRqYV+tWqSgrQD0ijzBkqDHTNmym/+fCUlv9rrqrHqAFV1pT2V8Ha4C1+BIKlmWfpKu8UNPh0HGbvitPNI16iCi/mAgpGsSWW/jeoxM3hhbk0EIXxkYt1UMsBtJhlKaMMJ9CkgMNuKAFU+KxjjW79K/oubjffzcdrgW/DDn1AruhK3MuuPPXhJ9amZqvNxqPw9ALduqIqjY69NTHUK5JxFJgUJS6bDX/Tg+ipQM5g7leADq9jVrQtlmadcEMCSO7croeMtYMSglAi7mbiItQFH6gz6Mhsv0phxJ85Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551031', 'A23126551031', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 93.10, 93.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ff5a6bad3c1a28b1ce958202652d888b2c94d3a6fdf5ad2e1eb8b145e48f7a1a', 'CERTIFIED', 'PUBLIC',
            9.35, 9.40, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'HIlPDDwv8dfXe+FSt4t9j2QxhkUAfk3tPxyPXCy0KPszptyvILex/fXhRuhpr3rBnSMsD1Clk4kq5gzCQ7gf0ZuPmw/XCNErhgTuqlC6rO9Ps9X1/IPRoTCrf/6ZDpw2cH9f8o9Mh95GnLRIRNw6a2mABzYgUTpqsFt7jxy39tcbK9+Lym17SK0kAQWTIG1ibWgJlkWhIM/6X/2GMevkb6NUG/2/y6SxyapBqpOKVzgxKTmAyp/g7y/KhH87JX1P4eRJCUs4J5Un+5DAGd3eyS5hUdhD3RmXU/ZYovh54PKFJX+pBIlG5lh0SI8DFlj321r2ZQAW9NjR0g1LrGr8YQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551032', 'A23126551032', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 93.20, 83.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '21ade52feb12237e5e3718ff32550b5b28098cb408091587eed746461f47d7ae', 'CERTIFIED', 'PUBLIC',
            8.38, 8.13, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'MrRl5mtx3Y97IQXMOVVgjJTKDtpFDwJcWIiF96gtVjFfHHcm7RzAbFZuFq23zCIGJhDJB/ppI1Zz9LWS+OT7GZhpKVkbiVAcbArqYaYkxPTPGRnja9NmAehX3D8McsBgbqbc9m8jF65iWa1/Tr5OPbkFg9bxniDmNMaMkqx+1ticPWFd95ob/l8JHMOgoyQhVXvTclyWXD4YCx0LgIAyE52ecMba+hR4rlrzKWBvspD+8UGqXYeNuHzop9Go23r9WTYP2wnCGR/rfRtqBonLRZ8Y0vAEuWMXkJlpyDrUC6sfCL359J/Q85Ns1MPRSmkCNeawMsIyAvdrfNyj416CnQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551033', 'A23126551033', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 93.30, 90.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f716680b356b442caa4063b1e30ee3644eb7b104dcae87ca99827255b81ffecb', 'CERTIFIED', 'PUBLIC',
            9.00, 9.06, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'B8TGK9RGM1ydvAaRhW57bv+u5J5/cCHYFhv2gft9g1dzpBmMFy06bq6dwG1yhLRKvohJEwpPXRhCz9TvYZZ9MK/FSypW3KNjJMhn4QNxnMVu4D2P6Z99FrdyDqVfgxO4sQRfPe9P8yNuybKUUtxlz1T4kH7pMNLDvSagd+OA4fjL1y+NJiakAGtUeJmKyhJRwJovH7gS0psg7NLyi4LVONcbjF4TewvmWeyjXG4POMpSKdnBizhO4AT7JAepXIi5bSBIxvAzAcEKQxav8eUshfknh8Ovvpab8NHJI7diI4qD3a/AGQVHpp3g1WilsTA9lcMP05rBg23zdN+K3VRojA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551034', 'A23126551034', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 93.40, 90.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2af4b34d11ef0a88efebbbface79ba6cd6f277658fde85cf95ccb5f3f8ebecd4', 'CERTIFIED', 'PUBLIC',
            9.08, 8.95, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'BB7Doztbh1PKynajeI49igeKmC65TBv9ebbWURtdPII+Qd0R5jFYQ6nRPcHY5WYcGxq41yInDrvgjCsH4YHhEBOR02SRy0elkTmyppwxxbhpwzi4QkZUfu/4azOIY+UKF81OmZEJr/3vH5gAoa//OsDjC4sotABt3Z0u//vsltPKSFpPwU/v6oclQsZgh0LKaMSNXfEmCvmnnXcsTEIfM44oIrfQX11ztNrrofnWApf2GV0SJr5D/pcWUgS4aNpHrMLKNYao5AFtdtZW92StMDsCVVu1/clwUu7CPdvaku9XQ4q9/4W0AwdggfSVXpcTkaK47v5JlCHLepBfMoMcBw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551035', 'A23126551035', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 93.50, 86.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '9c543f0e5294ed2ede70e1b6b338812724085a2ff9ad30626fdd2ed31358088a', 'CERTIFIED', 'PUBLIC',
            8.60, 8.27, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'LIzMOMpi9KRsHOrMODU8U1opGpx+Q0oMc/DNuk72N/2RBW8GggKd6e8G+zvybiMQrytPKSVXPWJi5sm8N/ti+jDVkz3Or7XDbNAwDK1JbReETMJZq4OlgOuwIFu7Dzd0ppINSMxYxuZ699N9uujzfV9Q9TmP/2VO+yLLUwGJQoktOJxsS5JG+hEddSxfhSOj6ULXrbQ1X1xKF6aG1F6vLNuqybdPZrAx/hh4kz4x61lOKicizkwOcgnZuo4ZT4tju2yLlGsqiQE86/iXQtRimXkUWKRZqeGYUvOtckiQweVNXFqQ89Y4DdVISL61vM1xrK5Y1emA4SGk4G3zKZqTIw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551036', 'A23126551036', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 93.60, 90.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '3195b46c16314a3d93bef41e4d04208030ecade896c35146a054533559cfb261', 'CERTIFIED', 'PUBLIC',
            9.00, 9.10, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'HSvKJ7P2WE3xPmqORnFNoQjVj6XcOWPL7ZA/jvlUdImYaWGUJhNrVSZBeb5lFRxQyY7BsmrOtxgWopHvcN4YeiMCiu6h0THHFMEEHpwhBmcfxml/E8gQd4QDAaCyjS5//rpKvdppu9T8M/CbCgV6zXflKlJOJf0f/rktgOCU3pUPSy/B4x/ZL3TT6OKi+3m9L794K7LfokkjE6cXdI6aS9pWpP6JonP/52WAevmNlJguaxU56YeV6EIMSI1Qrk8qHn7DpIoxsb1kkKS6FeCKyg0KIwK71C9x+0hcV+szzv/meyVprmxtwY/GW7jRGln7jCDEDcwmEpdKjn4eQ6yB2Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551037', 'A23126551037', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 93.70, 80.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'bdc1b54b1f8d9ab661ca5fa96fb5524227b2fdc540317bea25fe25e2bd149099', 'CERTIFIED', 'PUBLIC',
            8.03, 7.46, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'MP8MaiXlAVTgoJ4JEgROboznDP5kl9gG5PwK01TVEBiwalFM9bu6DYU7qAe/7kxkC/qUaJlzaKIvCBXw21Uhk9+b5bV9EeXsvAwUAHo9l1MP6dsvpx4L3mRlUvyss2DHJW0BCYhsbRZgN4NO1pTFnUvgAr+Tac0Uo49s95saMwu9FTtbyPYWR8eOdJiqjv+4F7fTa8UeaFigG1EYbmuoOZlv2AVTRJ2PHdvP2WeqfmgSGklZmgaDHx1nYYQTXylyCL8D8BVFR9kKUpV2VKgoGngQkrcf6gBk/WJrNGIeuZAooz/2yKerKCRVEGM4R0wxt6sHRVxpxYZm9Kfr9Jdnmw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551038', 'A23126551038', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 93.80, 90.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6b1a70c370b6170c20f3dfda176498d51f46d09f5c5befb1b8f0bdd7a7172e30', 'CERTIFIED', 'PUBLIC',
            9.00, 8.99, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'qhU/1gusVUCuSrZ/SMdNk9nOQ9N7X5PZw1DIixVuNQn2H95BZDRQEJ+b+oCzKpsLzemL0w/mmyQcpwx0x+o49ErlLTM+vrbnYhf4amCfKLoudQtmnGCI0MkXO6AUiBps1zNLSf74Bx/i5K/pRYrrwa9UVUPYSLZBQAIzjFXI1dRwimU9eQA/wvrs2yIo2mTEE4+wIQaiH3HWCZwwurNYxMwQT2cnnXvu4z1R/txnBNnYoP8YIY0Hb8H7tVOBmG9x2FHbIVVXkUVbZNAbk2FyLYjjNw/SxuE2TjQNXrE0OHHGx+gYNl3NHH/k2iUmRk8UEB+QYaHzFstSYd1tXAmaqQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551039', 'A23126551039', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 93.90, 92.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '28129f03c1075041c5bc503bb2f68e15ec53bea0994d1dc911505a44600067d2', 'CERTIFIED', 'PUBLIC',
            9.23, 8.82, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'RTsgLvq8Pvy4oZkKP2rB5x6gp4ZbPjUfZt2c9LbCrjMBQesEHD7lunm5JEJZzUYIvH1YtPchRkESKHpXKyx2ZjUy+SxyUdmtBKYvX0CfFMzfFQO1F8XOhQ64hNOBS0lRVtHr7Ro/vAdB4PQpw3JHN03ndpQbiEoaZ/azXJlABQAG40Ja7pIYidB3MNuy0RzlS4Z93VzxC3y3ygN1C5pIKaVTg8ENYQKyxc/oDmycmAD9Qg0sqyNY4IOgv/BrBeonHLB34CcIsmXEyWiXpJvFeimnWZa/KqIC0PVm9lnail2MYgi3dOgX5loA0slDzUx4k3BCY6g9OZEEFUrvk4kHBA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551040', 'A23126551040', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 94.00, 91.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '871c7982ec4b3b00718290ca1d91fc2809a1d0ac142d640f379a3297146105f6', 'CERTIFIED', 'PUBLIC',
            9.15, 9.25, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'PPGGDYm75hVNRU86n7PM4IzeY5V9nEscafsqXxtZsBMR8Nfa8+IwlZlFiKVT5M6i+fU0aJnNdXCRaMcMNs0x7wIdB8JrjFJL97w5wM7aZQUI77CAVs6aF16djO6osZDZk1qtL78uBYTisD4D3Gil128DkJ5OhuLKH/cQWiWsrycN2AjejfSbTlypyiKh/3lorhT+cnwX6ssKWeN1ZkTJYOc73NKaUZ1UF/hFt5jtD7sgycnxzrRdamDfAB3W7/6TaIEYB9jZsRIcwKjMGQ90mJms8WPohYmG4lkufL+KNpAnnaW75fdNOiF4Rz4arEv27IMkkHA1bxDyVpkpTctCwQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551041', 'A23126551041', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 94.10, 91.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '088798dd89ee380e0b4810a20949cade2c7303ac24949d263f739ab61ff10d1d', 'CERTIFIED', 'PUBLIC',
            9.15, 9.04, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'JClnWsDQbcX/4zxGkYi4aoqacsaclb81JFOtwijVKt+Ir09TBrg6e8KIhPGBfhZwk6a9fNjnHEMEJ1RGYKxGJqqZQBVcS3O/7s9cM0oDK2SLlsNddgaNyN6Y/xmHIdnVX4t46/JltRkRKsnn2V6P2LGXpP2/kHOUnsfl2PM+Mt2lxb3enl9PbWuOuQzk+NwZJ531WBjpRm7a55miDAy73RDEtfdDWGHCfcO6bdIfwM5uDZqbftP1HuaNAY0mDk1lajGTO2+AREHBOV5mkCRfotC4o4ZLg8kYAfNSH3s2/bRBWxRhkjkmLS2Pgy+IESx2FHvx6TgeLHzhgIajuCtxIw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551042', 'A23126551042', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 94.20, 94.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'bfd1969c5504865d02bd023c52497e967872d04fe0dba0c7a32b387674a4a362', 'CERTIFIED', 'PUBLIC',
            9.45, 9.23, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'lDA6Gl89D8eo1ufPMAWlSzO5Ggsnsdg3fMm86pTMevVciajQLcColqq7vCWaVQOi6wwNWkXt6ot/sdlcn0lxdtf35Q4XrpAsy9EXaSIfW6/Ch/2bi2pkP2frkymvXxSsvWa58OJzPdLwZ+PB9ppj/y8vhZpxxFMNP/yjjO29+VkTKHH65kM66dpb4VPsbfGv3/DO6mjFxfoBGCpj+ZkQw4yxES1vucHsAEdDujgBGq3hTnNieq5zZMx5BKA9Binyy50tu00puIjvD7Zxlm+l0bp8Mn+aEvsp5F+cABEvyhw/NKciRsAU/PzO6wvTItwv4n5H16+RxdABCG6dzvWllw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551043', 'A23126551043', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 94.30, 92.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '46655bd779e0e4478634119af470da80870702a34cd10773b945ec0a2569ee51', 'CERTIFIED', 'PUBLIC',
            9.20, 9.12, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'fFpnsNb0dm/uQ2gcObXsEfBK3ZV3qcdzEW7U4USNnWSgY9O/Mmist83B2y/6Zs61jGpET+VgAd//QZhY3cGQIOqCKOoDup+QvO3fts0hlZ7BFutvltn0QQqm5FwA8iyurpROdtnf4UpiIVhOVIH3Jp4BBIfWaDtGWv1TRlcSlRatkaqPPPzmGxC1vnRudaJ8p4LkljEMPEkPePTMXZSEz+q0ExCS0trNOPuPY02yokEFCOnKP/zvpoahAm6UaP9Yca0rRF5fFUez+XAbz5DARp+Izp1prkgpwT3/hftAYmhrC6e9vLwsxp6rw7k+1qMiEPeNX+klgdE8yOejqfnn0w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551044', 'A23126551044', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '6d1e323e8fc00dee3ffed11e5a5259c31880c295c22db6d1684e70ab3b1c03ce', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Vdo3Mg9OqaNdxKgj6+GYrUmrvDG1guJu4/YEYM0+zrXRUjb4odM1jy5ARPoVt2b6TqGK7Bk/bXVHscSkULYRN5RKHrEqAvYkFatfJAzfxbvm5WggGv6OmOZ9/wNtkfJwYfpXk6WYNVRcgEO5RTfOUyJvanS/oFN+EcqVkXNbBAmochyG1/Z8GZEQr5RJLN+ymDf6MqM9wP84Q8b+jW1g9UyIC/yubje/470jJ2R9IaM6qjGI18sFJJ9H91hzy4C3RooPADze370VQePSqLaDwrRvRYl4BM+xoDEVzdYNePmSEqCjBMJd/UKlcEppVkcJAAxaIOqN3a0ymcgt7CeGHw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551045', 'A23126551045', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 94.50, 92.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f286b5d2e034f869075aa47ea387fc70d49a23445b9273360497153d37a82284', 'CERTIFIED', 'PUBLIC',
            9.20, 9.23, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'vT1i4YyEOsuRAsLiFCyt2ACNP0eP3y6NuUz8kDdEYKVBtEe1VyoQIVqO6+rDlTD9Gu2fJUjsak7q0NG0JmVzCpfAhCI7NOfHH/Gn+zhYsl57rcmDE5kWinVDgq2FvBRC63ngbCQaaoRHwjB7uqCmL93DfzKyAotonfzs8u36il0i8fLkJqJNW4h48gWtqjfk/UBwiMo/toMM9fui1l8YGyX0HfLpgLYTAvSJ4/02Bs1U5QOUpP828IVPiqrufQ0R6AwuaUuI4f8U6PKwNUoWQV1QaReTR8YeNO2dfvVp+eDwe73mbwSdwMTm1sP76oCgRnaJKyYAP4DlkwU/bkcAsw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551046', 'A23126551046', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 94.60, 85.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '3c9c79a2e9b0ef503204964f618516104b21ab46a846d4bd89bda833bf5849b1', 'CERTIFIED', 'PUBLIC',
            8.58, 8.46, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'IktDHOltuXohx+MPSbfwP3MSgiw+rLyfF4y+2LT1+nfshoHjzJa+fY1kBQhdge0YqOozjtJo1A8xdu9gxlTgytb7OuSaXC/dcOqnRVVsqjhT4lY/D50KsD+e+7r+iYXFZtknJFiozkD2zjzCYLbF9boDeD6O8aguJIlIQb1nXPYNBct02vYrgzJP3TLF/bN2JmwqNAChVs8ipR/GAvgyzbLF0T9wDLJvcLQV1X11Zd4gBWuA8p8VFcoLmOhu8m30PoC8ADuQTZFmj3DwhTUmFtCnropIVk+blUaNssDgg8yIXYq5E0FWOFnstu6ZSfH0OhRpob3iPWnR9pzG81Ewvw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551047', 'A23126551047', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 94.70, 75.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd962d8f5ca7c3c0100ef0c2472fb8f0b36ce8741871e262b355ec6fd00e8fd58', 'CERTIFIED', 'PUBLIC',
            7.58, 7.19, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'J8pcy6VSfV3rzlW4N+iG3g4qc7V1146KvBNk5TF+4hLtSdJ/LmM29Y51FTdCemHCiRsxRC9xEy66tnOhOfaHVvEsemUWe/TxW0yRjD03LByph6ny7tdse6y7qUS1jreDXtYYXxL6WbFG3EzM3/00Ivs6O1g+w/AdQWLWyDNC1i7S9GQKUUKJ0Qkg6CxTjVyW+aCbh13jumDX080DfQSoKyLm1wekeH0E8IuPVzPyd79AHpiHX7uA5+Do4Q+dR5kfVuJg6cd5eVZx/Vl8ljP9XGjkKpH9YBXiV5c04WU3MaI8lb0UUy93JKNMhSpgbSMBY24+PvfJsq8n44p2J9T+ow==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551048', 'A23126551048', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 94.80, 80.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1476e07826afc3b17d6ee5305bc7f00eb6a9bb4ec8a8763528fde82f38e10e7c', 'CERTIFIED', 'PUBLIC',
            8.05, 7.58, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'p7hsV0WGeoT0O4GHJKF7T8yxWWO12mbFlW3iyQeqMKPnSq5x+fF4F7bPK70/YKAt8DAZzoe0YuSULKXk13hiQsEqCUvRgItJlEiuK/n/LqUQjNagyOJnCLy5HKigRbn2q+x8f4oiOWqFPf+h6orJmTOTidbtEhHLWyOYa7BI8+a7+0a0eQL1z4N1GnzXZGIc+CerThAWELtrunmd5wYRpm6iMT96z7J5a8cUm1csUiu3zl4+lgkq/GeVSlT0p/ySkzRVVsfYLfLC+ajIZbpuqYmqw+r3Yv3UAvvxThxMU07yN1AF9gq3PwW1LmszFDP4FljXqyk1ezGP01A29tUjxA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551049', 'A23126551049', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 94.90, 79.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd17c31bf250617ee1c0d534ccd087115ceefd78ca3d32b63e2b767dd434952d0', 'CERTIFIED', 'PUBLIC',
            7.93, 7.98, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'E9/1cUFegsWT2D5YJMXlamUQYE8/K3FbZA9/UygCCpa3nDK2r29DGEuO6K7d7q4IQlYTqqoCM310n4cKwKYOXaicxoHHfYOICiXPJ5sDI4uJsT16ZR4kXTNwwXmW//MdvfMFEyYjCip8Z0i4Z3oZ39LcXAh1EsdXBsmQZImPEWChBKnsBxfl4VkXyjLHTNshgwsBjW6OmP0nlteVq9/onTadoIwP4cjtSMUfe8IOdopDep0kWDy8PfHylrc41eGzOYZEY1Tcu9aOY28bigtoHPHWT9teVUirgGA5kvy/Bce7djMn7jxUev4GFKW0E2siC1BaRZdR99ko0IGK9zGZVA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551050', 'A23126551050', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 80.00, 83.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1235ef50dd9c6e773f5c68f58434021a4083e527b896859d28e33197e8e5675b', 'CERTIFIED', 'PUBLIC',
            8.30, 7.85, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Rc+5bzDdauLeTABp4ufPFqZfnD0pzO0x8zMZT9t2jT+glk9Xmw/4+Zwl8AvaUrELlxurIWciYQHHsvG0HZlOtJlZ2RlvF0wPH8fpGtD93KGEDlzM24dJI3+4aiQvMMiIgo/EDhakOQQGvJ6cyKVzCheDlHIiPZ4Z6CA3a3SqEn0SCuGEZIb4JghObKel11Iw7eqwzNZFBjGVeN7eRDJP9Soytp2sjc1Gvq81TZHpkaTIF8ZLqbnHc+ANUitwpulsOtHOvnbjoEsJUKjMng0+7xqh9qE9zzl6rUZHX+wi5YFHCsW+ppaiydoDWIwx2dxnor/IX8d6ll4xTINsUAkM6g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551051', 'A23126551051', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 80.10, 81.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'bce3297ecb9eb0184189634ae8f45ded53ecb727ab9848651fc717fa17d24ae1', 'CERTIFIED', 'PUBLIC',
            8.10, 7.62, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'DU6+RP9/me/tWOkxxm7hi4Gitym0ObOfm0Abkv6FqP7E6REo9T67NEqwR7eGyvoX//TxSPlYEKOCoE6YiN/982tnWsCi0wbPpyOaYJYHOLe0AoxQfGCveMJ21bITHwFym4dXfSk4XrvPVy1NxH9P3KlaoPoQ6UPTIa7sYeGhNPH3v7aR3+doh/MHa90Z779skPI09d9cz4WL1kcHnS2iQyK8Uh+zBJmyFS9MpBVkZZmc1ldcfuCGxrIQ++tcvtkDO/IY0CoxRg8RYHl/PhhqpmE2SUik5hRM2ZH4e94ZVRKDjCviadUrPQk0VJbtSumI5Su96vMkTjn1a8VY+EeDeA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551053', 'A23126551053', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 80.30, 84.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'bc8a4368bb55d5a5301c04c8d92bee68d44bdbc5e6960aec73b10c2bc4b94804', 'CERTIFIED', 'PUBLIC',
            8.48, 9.08, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'mFNs1EyyP32Wv+TwQSvysc9qaaJt9yuxh4RoR9zmSw1l7qUHtpU/jPbBW51mBAF+UgKupmBdBsL41eZk4K/3akyImRpLWkolYDz3kz7dhJJj0ZuHnevWnAKc5OxG3svT3TWQxqE/HZ4ZJNZawIRfSWA0p8U5z3GFVc5gMpsrYsjDU6H7D4O738mJjzfQJJ0d+13dwEr+OMSPOVRr+1a5hw58TsI7On2N24bf4pAUdpDMvaPBeBR+hKgyKDNWgGtTGSzQtQ3++hXazdgHiGc4J1vQrn1oxcfhi0DCaXKRkIXgkyXxPs322JsPM7UWKNgbii1r0tEpMLjkx3EcH5WiSw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551054', 'A23126551054', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 80.40, 87.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '108336333c7942f92f718bbb2f52ea9fe3b0575925936d8271faa7a0383b650b', 'CERTIFIED', 'PUBLIC',
            8.75, 8.66, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'iGE+YGcyYXw9g0aKzS4ZmaKWSFRzTyEbXTB1J78NlbYznRzLx/Sh1VKsjxvOfZ2Rq48AJFWe9nM5Fx7KRugQzphw/50aWgUSbNpSL1tZXFTnjPTbYu+HQ1DWsStPR0hq/0jcNzs7C8ThZppiIlR9uJD/adjACyKpvCoIE7He/WMU/0PpQLc/1tGnvvxa4T3iQcQxbqRafA2NZs1uesuO767Zi4CKqsdmwiXkJx6RcGAPkHuWN7p4H8zp+4fa4k966fBqta+asf526mdKcbm4R3b+Hn2/G1K3cYA57IbRd21zVXc9j71/CGterOiSy7Njh3jgjDHLmse2+LtZkt8woA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551055', 'A23126551055', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 80.50, 75.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '53494430a7fb73603b8410f5709525155377b958e9a836598cc481bc458a35f1', 'CERTIFIED', 'PUBLIC',
            7.50, 8.02, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'HpEiKHaQ29sOOJpeZlXR3pDxA7tWvjawooNuTwAFwURLpjWUKj1cP2S/hMzJKP2vnyc15G1oHA2wnfolx2lS+tkdXqXgnF3Gz7HVrrogyGVVznhN9Y1bj4SRTWTAIv3ZRmNqNs3BjRe+j4GCPranHN0zP5atUSYkShaqMG2H2aQa5P22Y/zIMTo8Eclgl1apZhiMlaf6Vl7J0L6h+AHdzoGRb2NUV+U/DVRudJdIh0TKnW2Mj/DUWJ6TkO/Y0/9YxKaPRvxT6T4t0jsKmypLOin36aQCR7lZCu7ur6FUPOT+q0DJzFZg0pEMlYVnRiDCaaYvsiXWuk27k8P1WwVAYQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551056', 'A23126551056', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 80.60, 80.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '464274a0ab018ff66ec29b7b87e71112940ba6f42ea486be5dc02a4bed0be4f3', 'CERTIFIED', 'PUBLIC',
            8.08, 8.19, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'L0yGgPcwDu2ngiTw7UiSu0pQHPZiW0Cd9NgaHhfCV+LQM5HDzvsbRRDhINkAOT1uqEGgVYaKF4B7cqKgbfHPTikWHWNcw0RwbzLFGdUJHIcbruAPwnYpUF1vzXbeGtObmjt6B2k11DKuKRTGV5NM7R9yxiyBqvtVaCz+pXP8f4xQDDVWgS0lTexf6TuJfvrhdZxhp4f7E2og7qaOG66Dw4lrKNL7hqoBJlf/0ik1ya2A/mLby0Wpe5F4pyFYp8Ysfy5xxsr0d7NiUWINS3jWzEyQHsrh+Wyi8aFn5qM23FAEdTMHJEVydQNHRu0PeCEhnCvJBnxAdlZYSYImI9mg5Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551057', 'A23126551057', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 80.70, 75.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '38de8959735ef70411e12d007d56c5b48ee6c120f70cd08c30b558882310084c', 'CERTIFIED', 'PUBLIC',
            7.50, 7.63, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'tL3yNkED/J9cw75hkM4ddpFOktKEiBKTAObH5L+2bQcVzvHVV/gTWSWul6NfyJwwR30f6/TXjM/Lsfnfq2h+FgF0JLXaEEsKbAP4yLhvzkMMAeQ0Dda2Xprjgn/hRzCzWTc+qE7/9CrdmhsUl7a2YzOH5FVmpiT1gcHQAHRoOx7nz2Xqq7ZaxJCKHhi8Ppvy2IT0iW/lG3o0BAiIv1mP231Qc8WeZzomNjq3lGmSlWlVxlYQ5hTkeS1yx7LV99ecNV4WT4Vi1goJxaDdZhIuswCeuMRx50lynQrqNO83m9sns6rNhGMIGvkwIpCrBH2UtqtlvlWR1t5ft/bgLHehiw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551059', 'A23126551059', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 80.90, 81.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b49fb1442e2e24a082c4227ea7518f716f177423f8c2a83d52aa1e65c86fbf8e', 'CERTIFIED', 'PUBLIC',
            8.18, 7.69, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'uuEiVEhBkcwfLfyufvYEBeAcDrx04GdEZYZVkl4ufJ62nXEArpN73bJLetaK6zMhXWwoRcLtouo1qNpu7Bwe9RVAu6x18wetY2TH+JxACYLWtTvm/1SE+R847mk4MpCtn3aPDcNpJJvUjwJrxoHOA1NmtyO4JDvK6a9FMAopZYsdVVR5pxNY/GWytIpkfsXkuQOgYE4WDs4bNjg/NWB9XggdxNtyldmFebK2pPiqz285J+Pn7s39TZzbCqdITb0vj4mt61f9gl1yH1lH1U1wvdpTTEv80maYF4gFDJZMHRjZR6+u15Db71e75jRuJOJF0jZO/PCh48DKlgq5s30U9A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551060', 'A23126551060', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 81.00, 91.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6a2a68aa2ba06299f50e8e1b969c8427ae68d9a489f4b7b4ee18cf995668fc5b', 'CERTIFIED', 'PUBLIC',
            9.18, 9.35, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'D/5qHIkERpe6I4NzqcZw7NWQq7UFo2mQD/7pykHTOHKpYjDUn7j/zkdYgPKXC14372TEyQVQmXSqwxcHC8yP6h7NSK+pBexq4O75LsVWGmJczbSs2BhQeYPQCjLJMXTk6TC7VMWWnY5HD5jpAyfAYP/wnzlaNPFOTU1d2n7TRG3ssKpvZqSPfoRul9MPUKK4oofVdALSQHqgMKtXZQU5pT791vAgIIVR5zJUq7T7a3eYvan+Ggx1F3SBl2/Nh0pBo3FgprCIML2pymbHa1idMz1QmW3P2KqJqx0PAWs5Hbf4QRxw0Vt6JjzLMQBnzlKUl6KDkL/r2UiW/sPR0ufkTw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551062', 'A23126551062', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 81.20, 84.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ab2231b6ecef8a87682692ab025be69dba333e7eaf9ff90aff9bb269d2635710', 'CERTIFIED', 'PUBLIC',
            8.40, 8.92, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'He66ISRRXjg2F3YjRKRXWQwaj2sXhf1qS9lcC2DMIAa1a3U0GqZRKEQQ81dgZBg789EFxazPHGtykZucuE2lKDyMuw3o+c1p/VMdSFj3nryRF27GCD9ZMCiC0hzYgQWVAeT1YAVDW0OKISjQU+z9dWNoLJcYYMGNvA7xVeDJDG9WdygyTK/96xqVRR2qNtT452t0gDIdOJKsLd0X9AYMT+6LICJlSP77vknbcK5PqMbusvstVVFQCIUKiyYj9kWgVqevP5tVEMtqn2UE6w82/XRfdTGafIJEaOQq5b88OcTGVvnCiXU9b3T92dD5Bu9B7t8zL8AI1xxNgIEsWKDK+A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551063', 'A23126551063', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 81.30, 91.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b350faee459cf5572fa8407b71086e7975dbcdc199f8ca63973bc0e6fa354f9c', 'CERTIFIED', 'PUBLIC',
            9.18, 9.29, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'HDwm0Gb3ZZkCwKTY3W4eVA2o54PnDGQ9U6nlbCUlc4mp0s3S+88RjMstLrvJ3SrOzE9rA/3Ydn2MnMEny6l9G+p/YKlyWqPe/J1NfLAypnnfevmJfXXq8R3WH7Ia+dIWQmEIXznXvQ0eUADPNZuJBJRdqYkntmwxtzef9O+gFCgW9Ri5czNDMmoSDnyj8eOkIWbHBKvd/lij/eDSuoFjY4jgneiTzMISfWmzo4IVrlNRtJfKH43/lOf6DPvxl83eBjL3vjrLzPhKeMP7F/S3hAapNzdwxrSJxCCOrcaW0XKqeI+epC0/DMWnWRNAco2o4alMbFqINuR5lPJChfuH0g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126551064', 'A23126551064', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
            '2025-11-15', '2026-05-30', 81.40, 81.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e4838d499e6fba4cf6d783bcbf55037e09d008eee7dd5631af3c09483316b8b9', 'CERTIFIED', 'PUBLIC',
            8.13, 7.82, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'fQOzMELMBIWm54UiW04NBlzV6L1EYhQ92lxDlbr1bNO+IwCDRIhC95pqIY+E3Rnt83XvJU099B8qIgMIg5kuK14o/Y4yrLfBa9yvkWOLBBEsK4UB/EYKQSOl7/+aGfqFctRaxpR14mmHlLcPYTL7ubDtzA2o4Hf5RXIgMliYOIKjv+5R2MeQaFMu+1AA1D3rupecxrrcaAG34zOr5R6GgunUML3fBZrY5O5lEmHZEA7txVENcSgk+ftDkQxypzlrTtHbB3uU7PdUd1lDmcMYrxu9sRYVoN+KwcfIEjUIGPkbVt2odqWX/mTgpXSXC5AYrKBVjR/KKbnRhYPddKSbIg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510001', 'A23126510001', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 80.10, 92.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'cbd141adbdc735cfce252488e282036e4485dec3a600555b5ff876c3c490b654', 'CERTIFIED', 'PUBLIC',
            9.26, 9.36, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'eEKI4TLRzY+/w5wslPuz5EF9hFk4TgrTHlC9QuqWAWlXYHF/qqMi+LUxkpMl8Ny+8CnZwgtYmsPz+h9MbvmbtTgCBPT9SbHXT+SKg3xvLxur6uYVNClI6whLEDSCb7y14w7+niwFwjfR0M7wd/o4EI//qYRf+OAPXN2ShaUVixfMo10ccmmeCFSU0hDJpKCy02F2Y4u7L5NkQd0RL7qfw29vPUH+hCwXSABPPgEmitHJHTbi9pLeKQp/MGEpSnnIPX4pW/oJgCb6OZmAxUGJ8zutZB4V697v2l8aeVMbK6iGn1SgI2c0oC/uYvmUDc69gCEL9QWnt5oz1ty0MrFshQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510002', 'A23126510002', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 80.20, 89.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5d7f30f8e3317e534dad507e9f8e33d7b91809bc1a465c473e371f7d084dfdc0', 'CERTIFIED', 'PUBLIC',
            8.91, 8.95, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'VJnR+drA0WFoqB4ZyOE2tksPRs7eKQxJTOT/CLGUOQc1JJ7iQAo0J7soxMvz0yll5Hu2Dvg2NZ80BpOMtydY1vYvDa2T+jZvotp4h07OA9wdm3wEI/GVNfQKUCNi73pPmyAJWcOyvsk9pp7ErWMzLEFcxeMl6Gt/ZEhnSlkvBFQkroqZ7H+R+gqpVGw6TAwRJm6CzUiR4LOeJRFgJnPpJuuIUWfNC9x7jvHHA08ZZIxu/Hcuq3k6SQwyYtvhUmsBlIn5AwhtSDavI7N3Dx/guPYv9ctDM+QoWbEa+WAbFxRGBfC8jcN+48he+LdZpRl8eaAOEIdpqjmlr4snkfw6Gw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510003', 'A23126510003', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 80.30, 74.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '533991a8f9e8df04c8042e1a9c127f43b8b957b3d81628f5789f91ae692d8516', 'CERTIFIED', 'PUBLIC',
            7.47, 7.84, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'LlvANQRzcJ3iUuEbH1GJl2scdRviPy9xSnK3LtJOjhpxMcElz1ZcpCsvH83o+MbJlHP2A4+D/ZMwNPokMiaxEQfwUUn9BxmvdIdzJiXITKxuHAH2STyfawYtOZpctY2b2h/+bcZ7sw5FnVN8s6fi0B4WewI+VLFqOqBYIYA1RtkIq9EkBUZlUvYcaiGRJuseKHzs3e7EX5VcM0pGQ5y/qwccOoHI6B4r+8qDiiVK1oDBG0V216qdjiBNfBC151BqrvqIXQesQRAOzyjvvJwTdMA5uNw65d0E0SdNC/vWj31hSsQvBBF36wYgLJPJVKy/NNgwGXfZaKmXKAkuq9Vy4w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510004', 'A23126510004', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 80.40, 80.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1b1c7e5361d5a88686f2c10432b80afa34c25c31f50f6576b2b8dd5c775308d3', 'CERTIFIED', 'PUBLIC',
            8.00, 8.64, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'bwI3+7sQ6RRPf4xEcRXzzb1Z2yBI8+Z0MHATiTV8/luhPc8XT8m8uTyvHklPf13MUFCIDegey0Yw6mhRI4U2D7Dv3j8qrEFIsdt4pdXIW/RbZd/y7jVWY/Eu7EiTKlzK4TX0JnfB8dB+qsptDNtfblsNic2mkJoqwfDQ7xceRfY7fHlUkxHHzfU0vunjBWGV423MKCSifMX2wqC0JcwZmoLDYmG3XZQvjKq7tB3SAE1jPmWCZhkoiKDOR3JB5Omh+meiEiLFrecYB0QprWiPbGkOiiFd2vhT6W0VLqDtsDAh1s0bYRCmtY9QGiPIoLUpWik9QZtIgBf5R/S0fAdEnA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510006', 'A23126510006', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 80.60, 80.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'dca73489fe67cbb6b667e7e56c84eeadaadafaff091562b6afb4ddebe210cb94', 'CERTIFIED', 'PUBLIC',
            8.07, 8.35, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'lFu7peM/H0r6snxPfvJsx9ulcwnlU85UeoZVb6c/QENQuVgZbTPtn5XMiHB/hKUU3NAcFzF9BL9f3ps/qsoY2E2jApq5vUa/iomF5bhqPNwBTvw6SuH4TBwqsxuIaTMaR5VGKOcOLRkCToptjYZhilEJVCK0sWpaELN/3Z88qqqDmZ1o8LZhbERogVrCrFlQOgysemnuJJBRVmG59azVDHunqxqcH8PkUDdJxG0S7dCvgjfr3KWLdldt945Fv437X26+PHambSO/kegKVC14VPmUeVx5XpGhHAFzhmdNE08akJwZr7FPE/Afx0O8q03SSvf3tlfPr+yjcP6vPMQQXg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510007', 'A23126510007', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 80.70, 87.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '18c5ee8afee6c5ca8d2419b2a059aece9df9b71ac9a215f7663cd94e70a540e1', 'CERTIFIED', 'PUBLIC',
            8.72, 8.63, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'j8eCaYn1Su98SXGypI5AHBgK1GymxRCY0ftGohl44y8dZuzg6rrU+sGx2NeFtKBCd5tKnEf8IGOK837tr9BXDyoRX0T2oNYU01x+miZwdOuazLpN09YrmM82Cg1O9UBYbZ7ZYaBb+OEhCFVHtSJn0sJJl6gB0nXEruEvecvNoVD0CFZrUiSseR4W1FtL1R5KJOmWrJGi9dxkfAkDPf+gAN8SbgLXrGouOx2SCRZUPVYA7l6QjTMwB8ZzE9S5NZ3QmPVydOewGi1hzxHlfWISusIHkaHq9HINbXcxIuaNtQy36G9xzfulEwE3PaXRirlr29EN3/tEecQkfF3+VfTgAA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510008', 'A23126510008', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '8580c7c3467f5d381a37ce6b271a73ebcbf3ffa0bbe36c92979a99e83880d69d', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'txGhsedja2+dEo8GNTr0k85n49HLffX31O1k81AytaaF50YOvdNCkA5N7WXq5bhSFLw7lrYRn3VF5ZePxlCn/mRRtqQ4zE0TmIp8MGPj7Sw8zaWuUcinnILaxdW7qkM0DBYERkwCKZGQ/zTfQg44vwduVLRWfuUAyRFJrERbYzlL9W5cKJsZQmbMW3LuL8KGai5Sid1IvKN67J0yicLZ9HrkmaHon4x6BAWqMXQBahvJIk3LTbxYBldAiBJ33ZCYFc6TKFofXly/qJuz/0rMgsRso+yEO81xToJjxC5+Cts8wmtXpMWm0lmxt5ktYvn6yB5sGeADw4xcaRbDp2K/DA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510009', 'A23126510009', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 80.90, 88.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd15ac16510fbf1b819db40f476471a76eaf9476b98a241e6975a5e9a30373dde', 'CERTIFIED', 'PUBLIC',
            8.86, 9.09, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'DZSRJ96xUvP3427IaTPPcBi3bnywsyvMkfTfRg8zpVx0NzlsvLyW3dWPDCrGcqYH5B2wKEQV9jHuIJRK87lLUshnghXJASY502k3WteikZpYwC3RfHkODD/d8+ovokfZf+pEKwdzRKgAf7D+s57Zo5kH1OFpxxiitpcQwKa20Zf9QZu3LArtGyU+LX0sBc6IoGtR9bSTkktag9XzZrzR2URPZlSQ6l/5G1Cb/v8DK6XCcw9LvTeUT2VlVjfSXrYNtoFD0qL/1PZS+Ar1lOthK2ctIknwsDyp985WSZId30cgTYRsd1wRl2u0FKFaiYS/M4PW7kp4KvymC+V8GI8FZA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510010', 'A23126510010', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 81.00, 80.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '78146796437e09d24da1afaca23430dcdd14822a828e150f1f5a88991f5252ad', 'CERTIFIED', 'PUBLIC',
            8.02, 8.12, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'qqC8hJw2PAAiRPN+tvDC1SuVUQZhNiSX6a+nzIY7m7Y0jZl0eg5vWda/JOZ/Ksa3frllpuPskim6qw1KdQ/X0NM6vILEXJSTFWU4x9btc1PtIr5Z8KDbneXPfa1K+uaGZqf1tVP18XPv4FW0oUX14moAsUXWFoH5NJPxOLQ1FNrW0dxSQPbvP2qmBSXxRlje897sOOH///nN6Gmg3SJadfIlfcGVil7UUJwXn61X87KRQB9AaY4Wbui2EVIGI85rh6B1JQPr3e9cyCGFh//CYhlxDGHjGNm2/Wv3C5/6HNmHZNz7mFgdu7fbulfjOn8wD0ksZKTIizOsSIR27T6FNQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510011', 'A23126510011', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 81.10, 87.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b34cd7e9e77921c1a240a72ea4772d3597ffd2bab9990579c1bf48cfe75caed1', 'CERTIFIED', 'PUBLIC',
            8.79, 9.23, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'nYJQOhuoIktmsnXPeGSi3vVZY9oZCKqj/2m6R21JLM7VCXHLHjYNP4P6lyDpsORLor6So4D0K1ijJrUlLbw56cHc+8HzZ0ITJSL6ZH5oWNgai8xfnomoqOfWHEPCqAsEc2ojCRK4R+XbIoXVh4vE6tGyWuHqA3lea6I/pYleKvOy4UH9UZEcQ6xTQnNzg2hkYABdQWTv49Pd0XkPA+BX/3n95j51Kml27p84arLvYtoR1CmxW8B2Rua6mYbpzmumqTJkGNgePIyv/UFnOWy8V62hPFakusL8aBI08YyQ5o8mymr2ZJ2Y2bVvzMahAqbO6dh2x9TSISxDnKq7f7l2iQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510012', 'A23126510012', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 81.20, 78.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '219440f7192f6d9e2bab063ee4a7a64d72600c3e7b7b22e0f5baefc291b38bfc', 'CERTIFIED', 'PUBLIC',
            7.84, 7.72, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Swosj9abfu7hbo1cX/7v90jZtehM2t9gCcasF2mscyHIG+pHoIwKokrqjVU8MvpnqXdpBhYUCdJTIhQpr4+KQR6hDN7IkyPpZLTXZMQ/skrxYTR3ZUDFWWkeKD3IkULuWnvmD3m9fqznnqScBQ7ZxT9AtGxGD2/kUIpWgzAJbAHcai2UJ/TVBcSC/ABWUM1yGfEZkdOGnJ+nLK1ERtMvE2eUyo43ZNV/VR7vqY4ziUYGTP4usrgS2O+MsduyYlhExTT7cSWe2BsEpzKjokOdZV3ZWapSLhKhq+V8BIyAlNcFTj7AilW5qMOI7LIK4WsxwiT1994pGozljU6RRD30rw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510013', 'A23126510013', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 81.30, 88.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '8337c6d62a1275c3582c30b7270c5ce386583e42859872d11905bcfa7c8f3a3e', 'CERTIFIED', 'PUBLIC',
            8.86, 8.94, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'a42YpNY6Hzx9hV22nzFnDjzt7qjQI28Co+CGzR/seUQikhDV4Ke0Rg0vNR+uRcK6gPDbouXMJMI1uw9TJIjor3bR7rhZIJneY6GiQdKBL7CSwhEdSUEjSAmZkIJaVOv13XfehtmmCkiFrXKejFPDdQQ4mPGQ6veU9BJmtPeFDN26JlYb4VoKs3dMm1stW6Y1aNEpEYd4XrIiAl7/WvBS/dvO2MjBernKqcXm/4bc+nQLOLozwRBpbU2EvbLaxpCXayNRixfhE4XduZ4uoWKJdhQ5QMapjU7iep9L2+lQZJ3leTgv34be2S3FgGaAlHSTwDAFhJ+JYOz9EwEY+T6xRw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510014', 'A23126510014', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 81.40, 84.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a2ca2e31e06b71c51d2a05784dd9561e6a31ef5f3e61e8b343d9e7f64344e923', 'CERTIFIED', 'PUBLIC',
            8.42, 8.17, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ARkZK5FF3cqj+pyafIN0mRAWtHpa6bbuTbHhoBu3qTbppnOZyW9YOKMmGkw0Uajg+SBlTCCTUUr/pGfHBr8IoKs9zlqHE+awCI4BA3ekpWzBq8hrd/angiRJvMP/6CFAd4WLq6HXI96ixNt+84FP80SbBDIdmYHAYCHGcHMpwPEGDwYsAPdfACzGQjf2ZMAjh2+Bp0hLKPSgRDahFMnMXOh82fnxT8ElbjS6XMDq3UKc79yWf67U0VU1JmzwoX/GY5DalckGtZ6x9cso5GJHGYihJhqoU/wG977Dq/AJGCV8kDPX3GORGoghAL/H/qYiYqPvv3ps3bIc8ccw8jm/9A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510015', 'A23126510015', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 81.50, 87.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '107a6831d0bb4ac67df9bb2b9d60a1018757bc496890cd43e3a6e59f233edabb', 'CERTIFIED', 'PUBLIC',
            8.72, 8.38, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'MXUWsUUKAMzAylwIbr3RjbGJYt3EfF4gEIRm+gN1EyLO9Rlj14Ce3pPAcQK0qPWlFiSUO2xkDJhYGZcwj0pypI/oO71P/BJ53QlVuLcfrONlP9RhybKm2MD7sV0C+BDXfGT8Sm4Rqh/Sr+n3G+uC8vPBQiRQOgy4q0Dtd947zvMN2OQe+c3Zir6IeQZtNHkO9sqXrKQJ1cZjRWR1CgNE2K8vs28EO+6JWBq5p3aqDVXEWFPI/CYvO3RFzuGy2s14DqHy+/I83y6Q4e5Krt04Gf6it2FGcBXOeeHpzU2dafikw+hkVeMveZxRH7QWge9SU1xASRYCGXtR72N1efucVQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510016', 'A23126510016', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 81.60, 84.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '578a19442977d790b68bcf0ea4f3beea56e5212391722c8365cd2287d0f1316b', 'CERTIFIED', 'PUBLIC',
            8.47, 8.61, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'c9kreSK5y7qD4YPQwwRAnYfOWH1ixjldGwsTc/TUkjy92oBk/XuLLizBThAsckmmqmNn9hB/SkD7mgIeMNosnzTRRqveOXHD+umNF5MHbPOsF6ElJ46lKQyBheCZTjGnatjp8aPA163OQMaSJac6ECGp1zH9Dk6l+7VBb39Bp5QjTVCOWeeOZQFQSJyT8S+cBV378hdHUgvedmIIZbLB+eufjhroeabE7VX8fYVif5F7r6A/hrjRJchBk1R41opwGhIYvCl2qGzmuK9BAy/NHob7GP5RSLfjYWvhzJjKkyWhSWiSEV+wSJNg3k2rgSYk4rFRiEj9FASPGZHdTOfPxA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510017', 'A23126510017', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 81.70, 87.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c06552c71b462c2b751494a3c125e2b01ef56c8e7098cae9f981e3a5317391bd', 'CERTIFIED', 'PUBLIC',
            8.77, 9.06, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Fli8GeQ/R2+z6oHVTFxnPIoI7xGqaIeOhzFE3l9+QKG7LoBduX+LWwew9cjRqx2HXwXhI+UzwWH8ulYG6Fsxl0rDMYNq39GLZHZhtZQqWc7qrLDGNXUY7mrBjPpAUCu6Af/iDswh8EyqqdDCwEzF480LYtTpKttcOdvQLaGTL7JbQ59vWyZl0kP0Dw3T74kJCv3PJwBLE50UwxU5tzNrjdp1dw/ZVXn1zZuiaBquoKlBCL9UHwljuYgBrW6ytUIndQGaeKAreKtp3J5J7tsbaRRlsDUW/yG5kFMd2ceSQIZotzsB3aqKlm992yjvpQ+mZESkt3bKlaSpihlQDCwzrg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510018', 'A23126510018', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 81.80, 87.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '464410591e83021a25c1fbe2297592f649709573d40596c0066b24664c3014bd', 'CERTIFIED', 'PUBLIC',
            8.74, 8.88, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Ad543AjveU6ZYr2CUVpujWoLtNySh/m0j6Pew3eH0XmP108hk5LCNXHhS37634mJ4K6Mv0bsoEUejo9srvq//RJGdqvQyJwZYY7mSPBZ+/zDZIMEuEtaR2erp6ADfT4j0IwPS1V8vZ5zxK23axh0ZClrgWk1k3KzIrLCxz2hK3O6Uh+ikTzrflBtv+9zo8S73qEWQf+GYCinOc9B3J9x7+W74DVYh2oWpcfw3AcqIbFALyjfuT1HHyfrHkrhkRxLm3/1CmlqVLNNmd2P445nnS/XD59AxWbEKJOftjGYCpFHld6ecChEDTALtGKfCye2td64gUtu3EtNpP3kL5Fbbw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510019', 'A23126510019', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 81.90, 86.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'da1ff5473e9b62110c8390e33b2618a245bc28e69b50e79b59c6871df0a73f74', 'CERTIFIED', 'PUBLIC',
            8.67, 8.48, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'KEHXS9v3DnA9fgzV5lJK/qJoPq78y5LsZYs6Fw66xenwXRSdqP7gQFMOdhgZGHpq33VEAnVvZ5DDAZqI4sZojljBgFN80hIKUeJl8aRNpXTUG+Z+erollmxScno8nMIY+uAybCc3Pq6xkVr1PCSuU3cpMQadFlew0wb9JBMO+jdADMLyQiTVkcBSBe1fxhHVyTvVVMupwA91YSS9s41zGAFXO2rPp2SyQJ1vOlVE48si9SpFHLshNwOE3tlQNisJOz73693PFGfqEMTbJUpHhli4Yojx7yY6hWdm+idJ33a1RBP5H1mXez/wnYiJ30wHE7bpsGMAY9KlUHYtMNtxUQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510020', 'A23126510020', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 82.00, 95.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '38f7464dced42f0c0bfcd57b6847415d264859548b35150dab2755145dc818c1', 'CERTIFIED', 'PUBLIC',
            9.58, 9.61, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'EZ5tuv5n39iRjInTlQL28Lg0Fmg7+cIdqSLiQI+yxZO6NLPDl/NUM7U61SuukPfssHI1N1qsGG0zR9tqzcKAnRT0IZuLl3IkpOWXSmP4DgOJwoJpUlrEhcNZiPJKLvnAJXJSZtC14lkqHXUHla7rB0Y7CIlQuKMZu509oG+d8Ra7yhMVikK4e7M5iCyTulXFDRD8omIcif3Q0m9n1ikGEDoArZd7XeJviBSuJejglXMjZLF3fOksgMoKk3TykD/6Wh5CHCFaGTg5yxmKD3CJlp/YXEJayKDkXfBlbELXF5UlXbxXWBjNfC8ZpfhZ39gedLfEdXYk1XJAc+PonotfVA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510021', 'A23126510021', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 82.10, 87.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e5a2519f1c4324af26e30451bf08b911bfa98e72fdf2dbab57ec9b44e6877403', 'CERTIFIED', 'PUBLIC',
            8.74, 8.44, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'PX/jjnwbpHFbnmExOQds2X1+jVztKMIkCPJb9ZCmnSxIkfyGt6RT5yqpIaTIbPzwjPl2n8+Q/lulyOmGRvQbyBUh0ZDAbe99z3EnnAbeXqdvgV2PvQ6xYObZpkzAL4a4rIXOf/YLcA6f9QIKqPDnvuyC5cf6U/PGOyRZRzNM/G0AULuUKZuXcrykIPelG7ZzIYgCG3RTjvKIKizrNAMh9p6U1+dKFJpakyDc2pZrROuzqUAWbE6uh/EuMcCpuCWwy3ReZ69Bsbr9+4HxRu6mVzOijkKfnEoe8svnO57iE69s1xPcS8iy2v214BJbyPWS45Sdby/nwFotFp0NgIkNUw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510022', 'A23126510022', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 82.20, 67.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '18ea075d8ede49df865de887d7df773853cd2e0ef306894968bd7c08e7ea31fe', 'CERTIFIED', 'PUBLIC',
            6.79, 6.77, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NGKsaltANpM12D7Qy85DKYG2Bh7T5Qhor7q+fHdUWuERrSJP7E3YcqBbXhb+hpo5guL1IE2mw+dm4BbXe5+YfGIYRvU0Ym/JN8hxu0+MecnE2Is1RrVxgpMG1z9PthYLOmRNItrmC0TTfBc8LkZa7CRRUI7kNhuqmToLcwOo9kzpXycsgkwq/sHToKKrAyWf5rd2DNscNIxNbvkDrHLJLEzrINv0G1M6l+J6+dyOuvM3ZWQl2PD6lhQx0OPsI4h3vHZWc+0E15kVCqOQGyd9VFILp8fM4l+VwL5+anFreKYW7KXCwcdYc69hndL3s6Yl9h/tiCqiB2MANSioFTvs+w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510023', 'A23126510023', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 82.30, 93.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2b6600bc57ce01cf75fbd31dae9c5e83929e75d11afbf0f48ed235ad1e0af39f', 'CERTIFIED', 'PUBLIC',
            9.30, 9.25, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'VIusF7MEU9Z1ATRcdo1W1kgYU7dvFNDnSzNvQKup5MQitVvMChO1SKx+ARHX7bo74hP+bq9o1DQuZZ03Y14Lwv5mUqWIjVvwKj5a1s3AAF0YdxQyLrhGwr2GNUusYMP2HtE1rvSZrfVuEOalJ4qlKVhi4B3aZCOI2/2F/SD7pSrpIf5JgWpL5GuCHv7SboOmCJnps2IWgOXzs5qRHsUSyay6lyYpj3QUek1zm2nsZ667pGtr2b5tn6JYAVY365akd0RozKM4lnBphNXoFCBV+q0BCqHG/y5al/bqumAzY+gtovJD2D0Qo0POsh4yDizTnYVlUH9XBb0YzTn5LknnyQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510024', 'A23126510024', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 82.40, 89.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '923c168e2530683a9f32b11f0d4995d8d0a37a720840103946888f5be03f31e8', 'CERTIFIED', 'PUBLIC',
            8.95, 9.08, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'obIoZr7TMAosdnsL/P9iP4xG5zhgXjk8CpyRnrU/+NlDwLB0D5EZ8uAAj6PJT76i7MjweSaCyWYYq1EVGS26foZZJon/Ur1x+fAYErysdSt8E3YS5qbAYC04ejPhqGe6fSRgQ8n9ETmgrM3LpbKr2Rc3mKvsXSx/F54Fw7HeinXrJHm1rL7JpyL8qaFynZglQAHhSahzlKZCGkYQRQsQn4hBo5UGJdKUxC+OYMjG2byu5ZumrpPYH7gkzzSejr0M1LgeVslbnxiI1E/ZxEpUJn/pLjX9hL7zJkjeLP+l3G73mP0DykkUJIWPrn8X7q9DaMETWGEZAQivvDwXt4ryeQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510025', 'A23126510025', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 82.50, 88.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0052f5f553aff5a01e26f5c4ad051fb6f6a034027d1255036159c396e8f2cfeb', 'CERTIFIED', 'PUBLIC',
            8.86, 8.79, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'DBPNusX59iUI2Kb/M0idEOUIP2UBsNnZMPddrVSldIge33K0yjGglcaUbJhQ4al0ZIY3ofwaUjbaydGfrwJ/o1Ph/q8kqCFEIqGG+jS6pQMehJkwDMX/o+PSb2vvbzD8zyza8qySPl3WZyxCURZNmgajVJPJrxxFHf3QbHYJXTC3OWN/IDmn+jWPS9g5MJhT700rmjPvCosrt5KzNRTHAEhgJaqfr15zfJWaBLSBsbPcEkm6N4/j+JargLYMG4L9jpQCXpSoK+eMojzYW5H0lNekAT3FL9MiJbgEjxmBQvEGpwDNK6zAIROAVT3ERB+1BFzGFo7ElMN/waOjXvOM0w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510026', 'A23126510026', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 82.60, 92.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '347a4e5cb8de90e6bade65ec3a722f186904e999bd7c1e8cf5738d9fd2ffe0f3', 'CERTIFIED', 'PUBLIC',
            9.21, 9.28, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'H3PWmTNfcWbg5n6nh9FWDemg65SXTm+l79p0tTinsC4oO3wZ/qlm+gecDP8YStR1hFseOccyQS6IbagaJZY+DBqa+RMdozwxoIPxWN/x4G+whQcGsASy5fSe/1ht3OoLEUojuNYNwPlNAp3yBUC7QUAGDEtGBEfx6P01dRxO8+ruFQfrhrUIdewCPyH2typWlHhQ5g3u5heV8JA29mJQc5roB0sbZiuqZLCehmrj8gP8y6087hV9qdJm4rVrbdmrYxsV0lNF9TMdMFfW+sTIRgFrR898fcdrEW7XQbEe3BixKJjucnwq5foa/jL5AmVRHT69dihUPs5XP3QpbGKZuA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510027', 'A23126510027', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 82.70, 90.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '58d89004988224eb90c9e2a92265ad5eed7b01864d4c15d0345d49f37e2a7560', 'CERTIFIED', 'PUBLIC',
            9.05, 8.97, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'KGHRJXZXqSqck5jFYq9YTt+KGRxE6rnV1hGmD26mPXhX8leNuSa/vHW36/GMfQqucmdyXu4MvA86E3AL4wmibDfJXYK9xBJhQRCDRlrI3qoV4NF7O5V36DhP3UhicMJCYokeI9R6HtGq8/VD/lRI9DUgNWbA6FhHrbJTkz6RxFQZLIVyYHiWSIP+2tLro9VAEPZEwEQNua40Y+Ou7p7o/2z/TAK+RvmP60Vu1xvyrnfLwRuTTWLUj4uR9DcYECMsQJ5MMWiYy3CBCWivZq9dAHyxoMIPTHUAe3W2LbUgt5lkHQx4ui/c+1uS83GfZtG9EOoJBSHEt1WUN7sO6dDIug==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510028', 'A23126510028', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 82.80, 72.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd17f7aaa2b4773395b29514043a256074a80280505038d7b996949bb52b554e6', 'CERTIFIED', 'PUBLIC',
            7.21, 7.91, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'uJSBhRGgXurf6mJqPPfWX5xU8XEOrt7oyOjX+NIKy2Xedkgf2k0zWhcx6CKjs9f1peZCmGGwTGgwF2qZRMtXBfk3iptz0SnTNpzeVgLuAE8HPCkZq5LyIuotdcLmpZYAjk6+QIU4PQ7JJI1n8knduDv/Fl1j/nYeFNHmef9uMOTBdFtz0tYZKzE8spuZ1/CuPWF0YBlk2qzfkAW/EOrKTteNBdZwb6O7oCyrjTtfjEPxaPnEzYTLUGUpp8B9f0TA+mVOaH5arGiNMvwgvKlYjw/kHW9CW7PttrtGcoKBkNtQSBwhr5tKmXW+PLphlOxZbyYQ3niP892kEeRlNgyifA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510029', 'A23126510029', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 82.90, 61.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '57a17ddc159f8e46a302290b413e4c93730c296fe9588a84cfb1e00a6124cfda', 'CERTIFIED', 'PUBLIC',
            6.16, 6.16, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'f/dMtuhc7bcj6Whj2gTKjDdoopBNnGxWcHKhxSN+Wu+RNYkOe3OgMwgaCG+HaY/O/CfZc1ywgW59NZqDat/UTlxS3idSekk9fM0cECFTL8iEdFb936voIFGQwGzH2oOx6C2FfK81Dvo0oY2Rch/BjANXIhV1US2HFmgJ8+6N3yNk3h3Q9kuvsr7OPN7kEZPCsR6wvRzCe6PXL05ruyHQ1Jcw9upaP6qVmS9Mx1Ajr+7U35RHKFGz799miCttvqXx0s/W83DmAdUnmIkkqLsu1oPiiUr72Ey3T0sGdSrLoUU3gYCEggskh8Em6H+77jv+2YpMFj92dJNLj5DN6Ryf0Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510030', 'A23126510030', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 83.00, 84.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '41e0c160c36f6cb1aa8da9b0a7555a27e28029e9303856d4d5ed1dcb19b34e64', 'CERTIFIED', 'PUBLIC',
            8.40, 7.89, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'vhyB4gqp0+2nyCY644MNa/aqOEzXqfm2G2A6uzHv3kZllu7eePR5N7ACu97bYmt8E91Paz3rhjSEJBL/iXg4S3THq81YRSmi0Ze1cXxjy1ow+sjPbelX8rXDLgWhIp6JIDWzFqWdpjLJ8zo4eqi3XKBDzimN5vDtYsAabBS4rZPkKuyAiv9c9DCBk715Oq+SXI8ZTnd/5et5yx6hw6aiTX1VzTNPzpf9pLXhkXmGbcDiGYw5kSKW0WbTN0m3X7eM16oFujd8vPjGxVNSfgDlvJWwOplrF9g4st+azkkO3gZOqfOJ/SK938jepXMx0iizu/pktg+OGW5+rptbi7mvlQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510031', 'A23126510031', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '62cf538ab6936dbbd42e54b6fb9c9c193d574adff22e7ca3c26b9049fe434f6e', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 6, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'QibqN3edlFDKEZddei2RIZeAybS7WWwuURdGDopGbgQw9U0Sr55ZO/2cEFpoH/D3PkOhnWIveaKBtDe4LpASBKN72EhYVYdF9jcT2qZ1DiglLGycso9ki+EUGk+rNbzWi1NB8ka/3SRACngfXD97I1+N2DubOyxupg1YhVMnLWey0FD8kt3mkch86IjCjIEIFKiakPAx8S0fpAVkTKcrPxaTTFjmo841ZnjEYweD99+lFAM8aqaUE7hDM1LLtE3wPU5CmdTNU336tf6gvUzTKn+uR2HhaPA/NVT+11vp4AXIKYX0Q3RACkiATouGPZeufXXxgvW/2i7wSj30ZotP7A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510032', 'A23126510032', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 83.20, 76.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5afdabb16842362a1c4c30dc2ac5ecb17b617bc4533483e407d349c8255e2a7f', 'CERTIFIED', 'PUBLIC',
            7.67, 7.66, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'OkNLrMaqVV6y7jXMWWLMOP0D+G1r2alC9LT3cfRRjAG8DDVIivei3ugp7Ju5ZoBridAFkIXaXUQ+Z5tQswb7FGuuj9P8IxETKn/3Mt1Fz84O8G24cPjiu99dqWHvblOox1L9QXcYbYfF1OM0dDWL0pmCYjeMQ8lwFxzf1EqSCjdV4qG5V3P5XWHt3vf7Q02o/ygDV54/G6hTjCfsTH0i1+RjQirH2Dhlq8Y47OsrkpgjZj3yMHZ1DP0ebldgcYOABWGKr6OmeCeAtjCiagJGs5pzObP5W6XQCrR2SaquBtF659pDAUH0N7L3cdz4RQhL63Xm8z8YH09/TZO7X3upuw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510033', 'A23126510033', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 83.30, 94.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7cf1e721194a8da569c17a9013ffe4942f834c05505dcaacd7eae12a37b04c08', 'CERTIFIED', 'PUBLIC',
            9.42, 9.30, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'N3yOZwU4UqBOorPn22a8Qj4oMKzCkrhK7yjmXgpb3xkQ231iMWUSHk6fU+/28m6MdfLWSoCcESnMvEzgXGVZ5trHOb/EXx+0cUOF03TmSLinfm1hxKJtlGI64mCDcp8yA9wKNAf3KLy5XCxF8joUc8LNCA9vSRYUc+ArczfXR6wmMWADFePQF0C3g+fhQOAcBOUU6kpiBCSs9RmRNQCz0tCnSAHV+he5iTkKY6GvgqZxkH9H671U5/JhMsmgOVejs3iXMNzf8dt31o5gapLngOrozlLlG6svCTwV5umrBRp4A/rxs571HSRtoH+Z+YHbi7GARBIkHqfEsdLU5UVpRw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510034', 'A23126510034', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 83.40, 83.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'fb8ad032383460cdd00e5f944e8e55eac0eabb3e81c28e58763c247f25a495ac', 'CERTIFIED', 'PUBLIC',
            8.37, 9.02, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'U1JSdQV559fhjAEuDDgQR2w11Lgb1JzZiBd0sFi0ARuGziKsDYpCRHOP+MPgMV8ed2s8p0W7ukCQwJ8LRltuYydE+5Swh+v1UfxrOG/GHGDFfguLf2ZAvzcPYsgtLOe4fQiBpMPlnGbBfrQRboNgGRvqW5l779mcDOkKI/6VNbr5uoELup3UhwfEsOxCyRYOy5c4/8mNP4ORhwvX5lPfS82e0BYddEoZ9gNdwVeCiWzMldTCdyjBsFUBF3g4XCbsjTez0bxHcImXUVvKhgiPTVyzpPHB+jvIboLwVrEvNigCO7tOlXIoshuip6n3O51oEOW5OsNdnYXsL67hN2sgUQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510035', 'A23126510035', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 83.50, 77.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'abcc8023e6c75e2552e8b994528022ffb6a3ed9a4c2f1261381dd5a78ff2cf45', 'CERTIFIED', 'PUBLIC',
            7.70, 7.83, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'C72d9PliS59hwl+rRQ+C+pFIEkXLPJwI/Ja7GWf+R2WMkE8UdsOxqd2gWjQ6qvx55qWBOXBhv721waMI448BNXKpiR/sbp/VWTWP1c0g3k3t81yL7DqOITRrjhIDpImN/6Cri+b4ZdiIEFzNsCwSatX+jzEQvYIKH8JViMkqJDKP/XFsyBk/r60uOLxWT0xW2ZU+Z+JUCz8/E8cOStjHLNVS3ss7o8/ObyreRBWGlFYj2e8Aga9bHp8XsyM/mrqyITmLfvS6HYaCR1lQuqIPv2ec/zOmNgy1g3Wv2ujAvazp8zRXtb6BAQqoHMarPtr4BOvL1ugCHaI7+5HeB1T8Eg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510036', 'A23126510036', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 83.60, 89.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2b4adcd4c823635b45e0de3e965298deeecf40fddd2da86048647dfd5f68ef24', 'CERTIFIED', 'PUBLIC',
            8.91, 9.20, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Ym5RtRaSD/pdmKzRS9wDroG1bM+i9l+nC5ecGRJMZKh/KxqQA17dq5LZkKCY8o4tnYMpzemAgAbzL9W4bxhv0pxU4RTnVfQAJbqyY7oO9kXPmt0Vmbe/ePQ+Z/+Y2ELuv2BqHigwwLgzkCUzsN+GYeF56/ZsmnGpq2jWl4o0xZYuGKnOL4JOo86wwyYHvJz1gh302S4c3YA97Knp7MkVyUP4EZA9OfMd8B4g2DmEsBYx5E5JC6QqFo97ydH95vlMDjDLGs6oGM2Zsi5tsosEdtIQVumYvt3LULkiiXmmI2PAdHxI1TpMDz+on+5WpSBqaKzTx1Pt5RgdJ5F83BePfQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510037', 'A23126510037', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 83.70, 87.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'eb749c14f4600eb74cb891fd3f3fb52ed13e5352726d50861d71d90ae611b699', 'CERTIFIED', 'PUBLIC',
            8.79, 9.21, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'cCoiXND/Rur0WJPiQvoLyjB0ms8+Uh1SK8GgEtsP+Z9A83NcdiJKyyxkY2R3Amg97+EkrlfDqto1xA/F7bmA/aa0yPi/LXvmRjaxYDe8jdN34vovS4MECmd4+1LaUKLsXtvYuxHtnSmabwtFs8hzo02jfn9DWKXb8RosiYxC9RHTSCgIpKDXgEifTpK/bIQVsZPmzUI7X6RJRemEWvaokIpm7aV70dKhvDNi7iHXB6URdIF/xdxPa4FHLt4qxd9Ebr5cAs8m2uC8AQ81FuW5huoE1KxCT+iy7bKEGT/I/qBH/HXSZ58wOzjPPz9cDFqfGmkjmKQF5vFdk5IQyYi7kw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510038', 'A23126510038', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 83.80, 91.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '958c99efad4e44a133b0b84cab7e7edefed5a90c937541a0ace5df1f0d508dc2', 'CERTIFIED', 'PUBLIC',
            9.19, 9.36, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Z5KcMYYMREgY24cj/A7BBYIZhEzBj2YA9VjeRnTXsi3s/SHfFC41STElgEr8BIMJzH3H64aiwfeo5YmrquqeuxrNCXnM6Frg/ThtpZlejw4gqJagCUF63YNET1DO/hfn+wgo+uH1X2aHu/IfpmATTkTGRUtAd/i8F8BICmnJQF8UY4eyrWwKi/1KbCAMycHFHXqmTfeuqxd1ML8Z9QyDSr0iRsOVu81QkktC64OK5QFImUICjZTlK3WdoN45Atk24uZ8qj6e59GwpXlI7Z7wwp0hiw5ej4XG4CtHvkLWsf7mujVD3SORBPEjI826mjCN7pYQ4FUbVOmbPHH93r6wCA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510039', 'A23126510039', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 83.90, 89.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f4f475fad48cde969228839e56125614ac580427d0902a6656721c0ddefba0f0', 'CERTIFIED', 'PUBLIC',
            8.93, 9.36, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'pPVA+bOx0zhpk4ZKq5p8uJTJHo/ZtNNkLpkI/4dKsSZNcWgBE5kOsKXqGFXl3XkytVhLpBtqkbloCKYYY3JUZuahcErS/l7xcD4zIFkcm6ST0P0MZwWYUvtQD6zCWzecSQevOL5tnenjZOZRsWhsM9/J564VRR5D3BDth9a5pollsikyhYbgGyVd4xcHS1WbO6naxYPCaqiW6+J49Wo6uIYX1t7GNVDQgVyKrMKOo1ouGHureskLLYUPK6p1x2fMmmbo8gPCLRntFF/YYsotU6itcCW9jqt3neFqJSSm24UCXXV5sBv0rwWKxYsTdndHvaak5vJFsA23DT5ghlPfeQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510040', 'A23126510040', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 84.00, 90.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '95bae51826268d4189cfbfcd57fe71bc4eca9f80802454aa27ca4e067b6158f7', 'CERTIFIED', 'PUBLIC',
            9.05, 9.27, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'lyUuK73c6OfT+6gcs6oh3pm4seeBkvJ9ZOkJMoPUZxERaS+aR7alCGV9bAIEtgznfMmnfKuxXXxPEQcadn0d7UFrRBfMOhZoe2CBVOeRtvi8i1dqh4Qv+YBQUhx2ievneoOuF4UBfofxJuTurl04GhWhSOqLJvqboiK/+w7346MpipSiGpxoGoLwWjUYgXWhIzMx7Z1qvKXzL2vFUSn1K1PPi5sMYzqtjFXD71vBtfD8hhw/N3tZTKZ7KvPOxkuqLpOF30jgPpeNEzoabXk0xvP2fn+7RFlbO/LX8FTtdpL7NOdNeJ00kit149ZbmqTgtjmJN0W2pAArexUGj+byEg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510041', 'A23126510041', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 84.10, 79.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'dc6956a134b1fcc4e1859e8d363ce78eb476d563dbd81c8929b23115de9653e6', 'CERTIFIED', 'PUBLIC',
            7.98, 8.02, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'D2tEkHBJoGF8oesYxjUGEaPlRJaSM6qL99pg4qnXyUjgz7yHxBXcuyHgTkBmqawMldWr7kPYFRQQokwAox1vFjKGYfsWxc1APPAE+anExki3vOc8iAeuBWXN11EaecY0jigP+nwCvnKE3GDFaNS20/fdA6zxHyhSBYqfz67HKvZQTASSi93fcMBdu/CwABYsCXilv8lShTyK3wqr4Kb/2KmPT0Oiy6E10jIpYVXt6hWty2UvpA1gihGOGIEe8QUvcu5kjAKj76ioghFf2h/+x9n72viPE8XZIpjnazVbc1g77sfVclmr+AWNIp4vsu50M0MEWqjQ+RUuqdJUBvbQ/A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510042', 'A23126510042', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 84.20, 90.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6f9b4d81c7d5baf5e42b9ec77177dfc1750652772223e1ac03f1e3523ab621df', 'CERTIFIED', 'PUBLIC',
            9.00, 8.89, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Nv1Z6MMaWzv9vwP+TCT8WK5iblksorNFQsyNsC61Ml0YNwrx+W1KWBXwk2w1Bk6QwFXnGgVKdTtAY2NG7OiHC2UXvkBvUL7Lu+zCNiqbkXsnq5pM3WnLleinL8en+QJaDZo7U/DSuni0PYM/bPyUsg7ThzPZ7g/BBnnoAuYoh0cHwlxpKEWwO73iMC0MRKXPy1evUMo8Ld0MPBXAGBBUhUT0DIO9D41w+aXYoDjVNbalrjAJz0hhjPoz2mM10kICaicMiq7iBIy9thUL9fLvHx/fTr01u5I/671GCpGO6D1wsViCbMqYG/6Q6OmsfLoaiWtRlTIM3qyPxAbgoglyAg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510043', 'A23126510043', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '8ee62147ef6f8383618084e68368ea66208e75749db69b34df9276455dfe3907', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'i3u+OQMDmvJvW4+MYQf0ZF2MxRDlzWMV7mJ6WuG1sICLWXBwzI5J6Dx1BbTX6sf2XRumsL8tCBOqsA8VrfLv6qRoRndMjuZfyO0RNCYka1cO8FOmkgPjGMtttzofMbP8vFKzmV4ewQHe92VOrdoCu6DJBO2Z8JjPdVf9+7nkcAsrNfkToFNEWGOb8POJMuK/HAud+U2pF9LJjjKWDj/l79exXParvk9034OlJUN4RNeXVMu+W2cYA3W1T1P2/u3nrXFsXXiLVhc4w+l/+PjYZdbP3bB2KngceBJDnc295Dzbfdh1+g//DSYgQunpRCW1PCfEHmEKhLpH4OJntfUkuQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510044', 'A23126510044', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 84.40, 74.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7b7ce0b4389f9f33c1f52071ac8c4e2e8f9b22a84a54ce7bec365031193368bd', 'CERTIFIED', 'PUBLIC',
            7.49, 6.99, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'kImv2pBxf23UP1tXc1/4SfX6dw/rse0bE9t/5AJRE8exxMecWdjObNwP7OluKbW9o3UK/PDUoFfpYbQnZmQQ/vJ6R3DSvEblohNxxvVZGh2bXdjNMHuykAomfO3MClNO13epLwFmOYKhWVQi1ya/LQ/fXjOvLyXhVXaz6TJQKlw8hcJW5L0o7ZlqvQ1o3KzTFrLmazmYTG4G8lOboOCXPnKeX9HOcblB9or4Ppu+ssj0Ap2+A6qqFqNZ9leNDyGGTLLVz0e/xmjCuYNjDzxPaN7kPzlKacRwgiBnRo/Iz5Arb/1YyttF/AbO01Jl9nQ80JHFyPiJPqomO6m6qPyTrw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510045', 'A23126510045', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 84.50, 87.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f78ae0323095d5fd02c44e89ab0e254263c792eb275374725dd5e99c54d90cd7', 'CERTIFIED', 'PUBLIC',
            8.72, 9.11, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'GK2Jd1mdmL2nHCVocFDUxagu0TS8Xis0VOlRkKBZJav94+H+2AsouxOvHCiNc5MCNkc58cBORhRor2u/QXntFxRkvcX3cRIgWFlNEhyqHC0PvEzzBJAnIXgf19dT591ISRqbYM0eiMULp/ZHwfVjpPNkcCDVJiaYvtRP08x2igjxZQ9KGih0F7HzJ4qfNjU9a2MzR0dbWGVUU5wEGgBSUjLF8mOq/25Ar/RRGiyEB6OqZM38g7Rxv7Cszlzi34JE1Rloq4ZOF9nE9I6aaLT08WJKzDHUE6QQCds/tXDYvuJs9tCMcadgyn5r2McNgLvupnVsLR5QDuNWhdX7JeWoHA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510046', 'A23126510046', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 84.60, 90.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e17a6a5b202bcc4637cd4881dac2e583304b5f70e7ece803d962ca9db2f39eda', 'CERTIFIED', 'PUBLIC',
            9.00, 8.89, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Gv3JNYA7E4iT4OuvIsh0Bs/Heb3/DKzwf2VE08oAAo3Vb12Yz8JgF3x/UqADxckq3fiiSSzLimPD2HXitkrZHcRCRyEBEOw0UtQH6q3rJjZCeXZhxiZvD3I517XCMpIzIWJrthUbwnf/qZlLlOqAE82KmNhCDCByTRN569UElg21EsvK8jHTsHpEfeRsFm2tl32I2bHOUpTKjvhOF0MlPdWbEb16fzjB+Wk1vLmvibQGt+gp3Pszb0NQHgByrhY3KxljbnODugk/dCWQ5Zhbj0KCoiF0rjZMP6Uh5Mvkz3m6A0gzaRz7hRHyzfLI5Lf6fr8oXTGTECGbMuOntcVZ5A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510047', 'A23126510047', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 84.70, 79.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'fcf3978c81afbf12a030b48a10494f6bfddf692b481eaa23b920d6d6f8e26183', 'CERTIFIED', 'PUBLIC',
            7.98, 8.10, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'nNFk/oMgsuudWJ+Wb2NqRLX2k+X+ZtAPy1AC19/PIDckFCV1zS4pMaQ/II6ZXWS/uWDuF+guoXPyxbePeu3wOxOR6E+cwWYMujTmffK6n3BOdLLBVH7pH7nQt+RXFvTAbSqYZoieeS9x1NITsYLc+WaoUxI+DSqFwWt1D12geIwROXodyKEZaglwTgZCsec97dv6r8zKMzG0oZbLjtAsNl80hXU1WvOjJWjZ8A/hAv5unmHGV5VFIEjQQ/r9I3o2h6fsyTrv4EMq5UW7eFm0//UjWBBUwmH2eIgownEYcQebgLp5hIm7VJmKjRKOhfsgrOjFSiY4gsHaV4kCnY5BNg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510048', 'A23126510048', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 84.80, 94.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '54c9e5140513ac71f088ebcbd7485cb7a6d02754f0de92d313b1f7f6c9795826', 'CERTIFIED', 'PUBLIC',
            9.40, 9.30, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'sj7sLRLtMA7CcZ9myVChOiZMNcKpmcxWlgNNcgnkRMDxHjO1dKNhVK+/BhBkOERQIEJyYXrs5Nj5qGDnudLU66zZppb3WflXUCFxLFtE6KYN1vlQtXQQ5uC+CqBPYuKMo6WAi/oRn/KFi4a13KP+r1c87xIEsQA9exgpu4dXil7KuG5hBE/vHwxH3+30yjdsmasqEYbpSyrav8HmugvKu0tjzrQMzu82g+9R0aIvrKL0IYjH1lhTiJ5jcty/OrildJioHvc5j7jEU7RRS1U9VDsfvladKImZNOrJdJ1H0YHROyw9xr4gR4zMSSG0RaN8hc03Q3XPX2W6OvSeMUF16Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510049', 'A23126510049', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '6a7fc13f69418a98e5720f294ddc414ce6cd571db2f1eece24334c2f1bf4efff', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'XweWYEtGS+5uWxYXomJq6xCdbYYGdkonGndVpBz4P5Xav9JzODy7VLpfM7HzLQJww08batXvET5l6pdThLp94GfT15Rh2Q6uF2WGEKkFutANSAPRI32CuEpUejbIbiNlDaVBeMam0yKXAw/jWozNEbuanpdRzvfqQwjesarfnGSejhJ9N3vDurq0Jo9iTG44JGxg7XMSpD5NGRAk/VOYNUoBx8VyqAXbxZv6mP+P81l1/UVFtXxYg24qAzQuTrfiCUKFVP6PTErbt1YUOlVZRxBMI8mA3CwQvoikfp3mOUls5L9oAmSn/K/CSvHNzpVNKc15xHBGRNoB8Wk3wwwvlA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510050', 'A23126510050', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 85.00, 89.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '77283cc5f8adc8ee8f3262665034cf5a3f0645b7d4546da14b06a17ffff07503', 'CERTIFIED', 'PUBLIC',
            8.95, 9.06, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'GRBwhi4Mz4C0+HvdbbIgAA419eAXF/uvmIOtKz8506Qz8C202/7GogL5hK1XeqilDNcjrqkLB+a1vMvrNE1eDuSITA4UxrsBwaXXtAnPteiM2tQftttPX323ox8ZlJiAK0+4weTiHZixpVyCLiMFjVBvPCTpj9ul06eBDADRcCMPOCPyAnNmQ/Us2A6Pt5PEK/dUFON1COyMxna0MybRsq2wHoqkmNTr2SuiqvWW0wJJX6lvNuwTfj1FTOvkojuQd0N1hNVRdWl+TqKj/uvDij5VMuyubW4ocs3PzVK7CyasTM+5Py69AEGAaQ6RLdPe6J4uzCmjTKPEi2M9iho8tA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510051', 'A23126510051', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 85.10, 87.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '128211caccbf307690b7b7b95b18bef2a5a4a10903011fb4f388f0af93356b1b', 'CERTIFIED', 'PUBLIC',
            8.72, 8.85, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'POjfNbQsvfHXuwLiW2RSxJ5RZbZtnwPBeP7Hc/SapvxlggWChu0hzrA9URec9XdPzPnrg3MAcxiyRabI7YCr1JlUb6ccJ7ltA8tgG0kQ022479uNvg7T4uot8pMncEdk47Y21rW4SMjV/uho7C7UdB3sqM0KWxtjoHw9vbrrOiHm0x/DADKVRiu3vSXEOOwDVjCDPFLOEJDKNruYLWvU/N681/7ln0KcjFDZmlwBW3lIKK0SKxbJaIhuww9w4Ip2J6x7FkP7qZuKbkRUTT0xLHG8rf2hvovmQpCWomPCUogXk4hl931tYs7JnyfK2lm0qBvd0XZkEWb0p1pJobe8+A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510052', 'A23126510052', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 85.20, 87.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '35fe9da0f29490f9e6baebbb3ff19629959c7b57165e445a2fab63a0919af6e7', 'CERTIFIED', 'PUBLIC',
            8.74, 9.29, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'e/1f4YqWaSPhjxKH1v/2sXKeoNjZtIsY3T73ASAL8YUiKxX2+0CuntawZGWBkQxkh2kGWH+pCZgTZBHiZTAf/ExqmnHqmJ5Rqncer4d+Ue5buFozVWUjqFlOs7ZPqippAsT2Fyc1gVlNRP5AdPGMlLyG2M10Dwq8Obl2KfzFVrvz+Lc1JeqaiXK+WsPBi6imUwNPK3p7oEvaMj+kZAQKvyRu8C2PoHn+1F38kXx/tNRvqXFiHg24VhE2/ei8r73LmG6T+SqJYdAKJK+H29Up+1c1WcCTnQQKffx0AuwPOt7iSQq/ikKOQsaCVWuHgb4ajHNNVT/1rsW+oUfuW6WFCw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510053', 'A23126510053', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 85.30, 92.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7ad78f503f134e93897ee15881beb3c53edf8b7f2306b5a40608bc09d2dfa897', 'CERTIFIED', 'PUBLIC',
            9.26, 9.37, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'bpVn4RaB6Zle4LgN0zhcdfKOUVj94f3pZWrL1NVfimiCti+FiokMenfv3CLy2VIwB9alieziaTIUHUCLQRku0tzgkYSl6EaK3jeJZWFNh8UUcym14hjC2Fhjd/WQB+wraQn2V/HFQClXuR9IHUrXa7r8LMwoartVUabvuLcsQhOONQ66M3tIqvha9eOnd+aZ/5F+D3O+x8AM77mS0PLpcGlYIGkOR+HQ8YdW5VH46/9Ry+yRReiK3bHBYsIjap1gMu36N1kcsWl03qP7pViY4r5KHG6k0ufs6LKM+VbbUeWPUvxIPAWWbJjXMZPx3okqwQl23pZJGzqSCLubejEfbg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510054', 'A23126510054', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 85.40, 90.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1e55bf6ed8cd8123a976d114d4fbe8162a66731fc12df2f6536b716509b41c38', 'CERTIFIED', 'PUBLIC',
            9.07, 9.42, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'FRsnRwf/pNWDoD2JANal7qFFVx41I9EE2qUufQjoqLQXJ0kNDwQh6G0T/S59mSJ3qwkA0h9ye2A2Hd2obin0Lo6TkVSq2jCN+HXi46bdLfFmR5SL/0oXvV3eYcd4tcJnfb8pgX+Uhn2DHDj6lwn0HL2rL+n/TO5yih4eQWZzqPRdSvLL5i8V0FyZ+5QxiYfPlva1OpiJeO+ChnBy+WuuM4AEe1/CmgBjx4CmUo7lMAdfyPwkTTSwtjdNGfLNe5h0x+sYYSUMC8zdxOnzkmIYF1YvT/cSlgqJVQTGtCCyEQRfPza/2TJn50XgmX7JtBc4HMkNkVR1y7/+4/A50V9tXQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510055', 'A23126510055', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 85.50, 86.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0722885f7adb5984ad09ec97e311368d4cfeac695dc62bf74ff066d1a85716ca', 'CERTIFIED', 'PUBLIC',
            8.67, 8.96, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'lEgHSZrU77ljwlcl/i0U4wnLG0C+s3iNBshkY1m1wsSJi7vCI5u34xVL4c+x/uAeqPWZeEEL8v4AdjQjM8GAje2/QAwiVjQUhc7XI+oJt3Ei4dkqX8AzMl0ALR+9ShDJIz+ouXHBv87nEI90pMIUOvE6OqvogmbomEccCwUuyDI1CNH/xY48mpwzS8QzohzJhz6V0PDWppt9azqSLOr92FHAzhYLmohLsO4UFUuo2azC3AvP2gIbzHLxBzpBTwXAp9CONQDyz4IZi6B9D0hNncOZbAbLJ10V8odpi0+k0QFMVikS00vx4W7KPeXJXGHmpWyvb6Wd6tWoVrct96zUFw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510056', 'A23126510056', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 85.60, 80.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd2fc019b5726633c520948d112cf5bf0a92bac3c648899d13f14192634fd438a', 'CERTIFIED', 'PUBLIC',
            8.00, 8.62, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'j6u/ZtHj2UxYxPVyelxVDcmhQXIzk1/tc2EFllxvc2dUMMqRQZkkoDz45ib1hB4GVQY275xwbZFgS3+T3iOx0QuFeeCFipRz4MdxeGxLdq8WnldERAbIyjuSQoRAsn538VUi/EoSDS4fGbpDhzW7LQ0Te37NTV30AFlbKMipRdmXaUlRvSC1VrhYOJagnL6jaVv+fIFZkX74qsSnHKwSpRul/+8VEapX5jVmOHE8UdQOb/EqiscUXIBI3s1MtVwU6+s0QQ1hXMvgjZOrbd0spWOiwfVZtCQGspFnLT2VoK5nOVsAYIVr2wFFk1YiaAm9rmhfkoc9OQW4Jz4/LNjJIQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510058', 'A23126510058', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 85.80, 73.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '44b7d3c3cae423b065dbaac42992f8c637648fe319826b1679045d3e3ad7fb70', 'CERTIFIED', 'PUBLIC',
            7.35, 7.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'RQu3h9sCZhlbhQA/7FZQg6HiUGGv4t5OqKICzlSJu8NgnwAXeetVpiF60trjkFVopkIM7mXo4IoKt4Z10PjND35dHc/rjU3UIeusgJwxZCFYTSxJ2d/yh88U5UWfHRPqPzdGI4tx9EeuOEBm8Q3ViTxz2GatP3kMWhjBhmofMxqD8mZbk19r1MKbcesQCH2CsGSpucnmvHk91sXWqtLleF7CdX8E5eHrLPCbegv1ZDGu+sIUDRgMh1u4VPpEmOicgxCrWtQuFYyb2FbED6GSjCYpKtOScFiIEJuq5KvLXyIWxlioEI1jFhj4D/YjZZp5xexL6Rqz5SKoykKaQZjivQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510059', 'A23126510059', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 85.90, 81.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '56d4e072f789dbc57ab3abbf41332a3dc13a3f52208e5f190ceffba13d788909', 'CERTIFIED', 'PUBLIC',
            8.12, 8.38, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'cfyfqC1R038LOhbKQnhdyuDzXcAaUX+y+flcSBJJifANyD5VvI+wAc9e/5ycc2/ueWhenPv2dDW0rX3+NtXr3UT28Rdh8jJ4cf63lFmrQK5AAKy+C4B9jBF51+Ch6HyE0MMlRv+cuy3VzJ19BL/aVnEgb48lYFDsyhm7E3wIOlHH+n0YQrYma86p9xDlTRR7MH4izbEnyJgWCjvDnD5B+Ry8yGulWYJwJA7klKZ/ENeSt1TgGB0NkAfb9uyWs/76a6Kkjr45edTlR6VpSJCNxZliKU2H72EnUJV7ICQDpHcGm3zsg3GIE1RTiXNHTb8GUxr392y847UtcclB6mLB4g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510060', 'A23126510060', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 86.00, 85.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2dc29bca0c1a755fcf41fcbef082db0f7ac0901d41be53f6c4491d92fbdab3c4', 'CERTIFIED', 'PUBLIC',
            8.58, 9.08, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Rm7XUkWR+xrJ3P1TPmNSJWE7MIv+3J3lktKjCzRmwaVF9bXG1QSuJ/z/HXocnKhb/mBHLC8Tu8Yn9TZ0fR767cAI9O10/jabIQNxCRR9eAUD27eyrZw5Ee7yx9xkeoD/yKGq/npkVKUlQDVmIgMBX7XJSQ7k9o/M+GUJUfs0uf/qv2zG8DvzRFJRoTV046ERNji/47ryKT57boSslxzRRqSaFS4JMmUPHHcHYVCWxZsl3+Cz6VlQ3urbiADm6VzR3uKQnsmJbxTA/gg3C7yUmU8dae7GKrtcTricc0PwXg5wTfNq5KzZkVx9/zYflcp0po/iClSAV3pa15OSfxWbCg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510061', 'A23126510061', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 86.10, 88.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'caed71c323707789ee0b17eff722f83e678dde72d4abe7689b7ba14627033587', 'CERTIFIED', 'PUBLIC',
            8.86, 8.97, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'cn6t4Tb58uijjwRVlekvlKerNSMpb1kKQrUc5tCoBdFIAn3rgPn5Qp/jQt+rNpgwHWLUkr8wfPaQRNXXgt6qwsjLI8K8u0H8rOvWNuHnO2AMplfAxaqAbDPT9S2sKx9V+o5TbxBRdd61UV5i7tigKNnRmQ7VIs8avZA9wn8KGHfaMDNJATTHxdOoAGzNAG8kF4auMepUTn/eV3ogvobmCjeL3VmDz5nJbiTFQI4Ltf35ygscg37T85C9XIvjqRGm3rzle18diKRd2wmF/1LzdWX6lvdiEw5H6biDkDzHci0fbx3z1aTR+156vXt+rrlfYpNOlnWkQhxe+bwBoxY4bA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510062', 'A23126510062', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 86.20, 80.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '8221d6cc780cecdae61c728beb08ec196c765f0583900f15b60f8a3b6d8086a0', 'CERTIFIED', 'PUBLIC',
            8.05, 8.09, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'soWt2ULyuk2yz6DGGK30/vq33XPRh4ZdDQWMauBKOxLzBeiewHB9X3B7qHTPEtDxUyobTXgUurCb8dxMqD5AX+9QyqQLeJ8s674jNWNaF7VhC3n6r3Ax5zcwdXvCC2Qt+pYDN3/V4HpRBcWm3+gg92cvwDA0vLWbVkzjGCh6Cjor7aQ29G58CTJHD2SNvYNQwCVxqL4rYYlzWe62/AEceKSEDUMipDAbkI8bd74OBZMpBQ38cakPc1NDJlyCkLQNZMCcxoGUAHtNgMMgR/yM0nmMgwSy2dQZDMEvX7jt4ljXsm6HwS1ricoCv4CXCiIGhaZaCG2jN1eYhVXrs3sMRQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510063', 'A23126510063', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 86.30, 87.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2ac5407148e175f2cf4143d8607ba48d9cd316bc558c1af69c9b6d4b60b05254', 'CERTIFIED', 'PUBLIC',
            8.72, 8.89, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'fUDIepMci/XmrgdCF4UcdeY4DHekdSpTX2lIIEovTcbP69/sttQ6gSYvm8e+M6UJQLo75kV8a+dCXOeD3Tr78gSP5ll0MNSReQQRju45uhUvIDN7vzviDjRzO3XFpjs3f+PaDFfo+cxTb7dKSQ23ThEuQeWqjQ7AgBxwkc5qdBY5yqT6ow5H+N/fBRDx/qE7SHPpTfFRNrE2XHR2cDkBRj5ccCApS7ZPbw7rJNJWza5O9HB7rlDLkuZsvRym2y99fi+cegZTDkWKh/haFNn7fa+koFhWpRnJjkaCW7Tn/QaK4IachRn0JBxbxwTzK7hRZYgx1CQo8UcoqcJsBC8LfQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510064', 'A23126510064', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 86.40, 80.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '01c137ebce3ebe72e3ebcdfaa38ab70edfe5c5326b248345ab7ec79b0c9841ff', 'CERTIFIED', 'PUBLIC',
            8.05, 7.69, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'gMpodyyb1CJ9kp3sQ7RXW0tEuMfkvkLpiYv5zKb0uQ0dVHNmmV0EEwTT/SuVexQK0wJQWiUXAjlYVTPj/vuULQP4ySNa0Qbs/pbAHSPXeQUXISN4nKPQWKmFA6t12QtSMm32uijPrNuc1m+8bTJXjriGNgR/YM9qNIHkVrGHvoYaAx7AGGW7VQ7QGiqUozAzclKrqBawwYm4jTnMsFQM8v+GSzE41EOomHCVy3qbyo+5sUMDqZe13sy0gGkhx1kIi6Z+lT3zsuHgedoF2aM8Y3BGe8ucSLAHUnvHKCjm30s5Erna5L5T/Uyh5ghKgTvElrM2eBFevJXGDrgnmuAv7Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510065', 'A23126510065', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 86.50, 62.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a09b62792148fb4244d0949067ff7cbc5e5d28961aaec97b596c263b69f6d6bc', 'CERTIFIED', 'PUBLIC',
            6.21, 6.40, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'gBRJtKVKSbv9xsoSSw/hNBv5+uHOIJgZqD+hLv+CpUx2I+vJ7ZRCc4hBI0E17eV8sggTH8slBv57rbT6ga2GKLnmZjiRCTmHAhMTtJb+LhY5bR6GwlqRflCPP3N9RXGD+Oa5ujaVXiVvZcz5OxhC3tdRbz6OfM3SxtXR8IQAnNslqmEfNgZDRiB0tGCg+qXfD5lCnourTG/2l3P8TUPPvNpnMATyZZuW85i+im/PrjtXw3budhPWyR7iMIaGDubBw43qdHz0mjVA7a5/EaB9K/Ncr09GGAUWIDlIMP/bEND8OMPDRJOAiUKaY3wjNihap5IyMszOmTrsBgIEY6F7ug==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510066', 'A23126510066', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 86.60, 80.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '650556b4b2de09699476f86b932e11a9c3c73168b0887186f1f2be0535bf7e85', 'CERTIFIED', 'PUBLIC',
            8.09, 8.00, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'j5mB3boJj45RmSP6Xa/e+EUg9+ESf+dC0PR01d8TVDciIaCWWm6uu8LFP/jLLPSzDh4Vl9TxHm8puxz5MXqskpSZag9CwCk+wezyTzJ/saodffqwZrV0AMbMidHFa5ylK18raC0lq5MgisHh2ym3ODZEA0N21ow8XUjAgs85jpqpvorcxnm5U4/kkoJUl0VGdWSVpcPTFsTEZZktIeuI+YFaY7r4jAFwu3Kc5yL8svsgnrd0yRQirdg+2VirQboOjFqjr7F+BDs3mH6ndGXuYEbT2NozLpGk1M2IV7Ryu5AYHRY3AMY4n8BPAWZhS8wF99FWV69Tvk4wCuN0DO7FXQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510067', 'A23126510067', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 86.70, 74.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd0c815be199173ad8f46ca000371d742f7b205bd47926a4040c137f282dae0a0', 'CERTIFIED', 'PUBLIC',
            7.49, 8.47, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'GkojfCf/pWOnjmKP4q9R1ReNvMGUnt6i23/NYDIE4PvX9WAhx/J9T/WyBuav+3BlkSLLY9a/Cz68CffHZ2zzM+j+k1jP+Aqk5NZj7U63purUsppljmRyHTjNpOzK2egmpUAV9gkUUNML5VrQ9aoQB4gAQ3A6EX4nHVlkTcxWXAch0DMIizjkLVEZa65pMmML8WFX1f7zyEfZrKgO2URaW/2bsxuhvLuNnUXLbmIJ+9cDc0szR42AjgDh6HgjfBiAHqPzBNJjr+mUJcLrh2tlXzPVRzIDOPb3RIhHfO2dYLkT1HAW+mbnzEMuNt+kLCt74V8FQu5uMOtmi/3gUZ3uaQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510068', 'A23126510068', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 86.80, 91.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '8ba17e3db472045132332318b4ad815c3a596112eb90757e1e49d6e0b028edfa', 'CERTIFIED', 'PUBLIC',
            9.12, 9.32, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'L/n+P2vzE2AMVVUAv1x7tWX7vsMDGlru8fyVqcn0m06sowUBnPjSC6lIHL5vMXuxNgcrGnlwvSAJWDczW5l0vZeD1aXlRK/RPE2ON2A6HsqkqQNQhDpmoxEz5aYx6XRcOLjnnV9bWau8O/rSfBxeOV/3ULR+EhDiauWGaspvQX/EmJtzxr/xr346cxc7DuLcVVIqn1dKZhA3xb61Z+fnWuHer/J28+OrUYFkDuuUS+mtdeXA2R5DiwmgJwLsE6hC6WLtP02VacHKXmf0YqvR8jWxEAkZ1PjohIJmngGgDq+hMr0AdkccUmWFq1JSTOBOQCtmslO+9/oohSk63t48PQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510069', 'A23126510069', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 86.90, 86.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '94507799705c1273e1c068a8b9e4c010a809e3dd2ccae37190b382bc201b29a7', 'CERTIFIED', 'PUBLIC',
            8.65, 8.82, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'UbmtOaNQox8MDqZINbFerj27dhKTtqGSFyq/KBAixADadqkfnTRGtZ6/xV51EDQ5liPlZ6/7wimYSg4te3moXJHXwQfQe/uGvL/0TCDs+IGkbbP52gMDvUnWVFGfW7gRzMC3s99bw/EX8AvrsTr6j1c5Jf7/D3lS563dVgbnaAHQrkQyLmKPGcGLOMD+av9yB21HH0sBLa2wzPJohhtoCggaL/7ViRpVrxoR6C+5g171MF2Jbzt8YOSMynurOy9Tyk7rVMt0liA7IfLbfjzr2Z7CLCmfanEvVmrhBmZGZrP/1uotqTHAaeVg2x3osBnW//MJ9MT3O5/rU50pqDqz9Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510070', 'A23126510070', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 87.00, 87.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'dcd485b7d317d9cf715ebb9cb87e7cf616213aec9b62cab2feb935198978e7a6', 'CERTIFIED', 'PUBLIC',
            8.79, 9.15, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NXhjqulx5+wTajt2PDkqLTU2bVeU0U5ZgKCkgJwdw1vCLJOo3umhKjGdcYOPWmYIwr+Mle1106DYCxopkptLu7B04IOmfBbS8BWbYDLMI2rr88GfozKuivaflkOLYcOJ5PwyATZ3wOVLLqVTZqTQiTO+56morYdRDdto4oEgoTKmRmIZ/Gk1OtAVGR4BLRksipmxHxmXCNzWl4vGuFyl0f7TXkpSEf9IEGuSweeU+p9KSDhWMaMzStdQaMPE3nnjk6wHEF6UgF3mFQKT5LC/UnJ0fKk7/bs1a1q5VTfyudCnwvn296H8LW5fX7JGDzIfVa6OY9cgpIQxIdIqXjU4/Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510071', 'A23126510071', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '96ad1eaebb3b1c25617614dd739293c4bfb8d2c16316b9c0c309fe9a2b370cd8', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'E96FsUjmvX0qv+qKYKKKmoS7uXY4UDriJA0f3RS/Yi3X6uCgRFhXbzKRfFnJeMSY2Bc2ikFwjIS4ZNUDS/iTzxsJiYTTG/hZ48C80MZQR6rGckeb9BbSlE7R5l7wsh/wIETRiezDJfVqZaXZW8fFoZTQd5vHirthJtjNPkUb2dpREslcAC9Zw3HWiqVSYb2sL+zlrYbFCEP11/KQAak6vHvpK+c3S46IXg1fwtTiJwqQNALSElQhkj8mhsIaR1Q6KGPhk3/+3IOcCfShFu2OsV1rkZ9zfkHfQdMH3vjzQMeK3g5Vy3VmVgBS6QgGM/PVOF0BlGPtVSLsRc0yAE2dhQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510072', 'A23126510072', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 87.20, 90.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ccf8c26431e6d7a4407eaf3900c8c13568faf40bb3706f79635fdde1b0fb075d', 'CERTIFIED', 'PUBLIC',
            9.07, 9.41, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Uo0KW+T/WXh8X6K0ho5WNT9oOKxRejTYhACAqI+/FBnn8SqVvPE7pnRvD2dhRXZ5Hobh8xK6gkFTp0qi5T+cRXbez35hPxMcu9Gn9H4oB8PW0gTMW65Vr9IdESLLNQAfu1K5icurvj6auLa9+HPdnRxAQNEAvkYRncOxdFSLsRSJJneYpG8vtdQchG8P1LdhWHsMzoFDiocVQAQ8b4NCOUvSu+kt4iSlT1Vii3bOHTmO7+nKOX6aGIzeaAXkQpiIfrqhmZLtj0QlfR6a5D5OBo1nHh2iFVvtq4ol63eYFZjW47GqPrDBsVja/Q4v9jaY7Fl/VeWNZ21oF8R1NLyj1g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510073', 'A23126510073', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 87.30, 86.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'bc7231dd4e77eee663d72430ab069bf65b5f7da224b6016f36607c2fd2c21782', 'CERTIFIED', 'PUBLIC',
            8.60, 8.88, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NvI3H4axW6vdRGjQd0l4cSyYglIEFIWinhoMabfCPAdAPyQla0r40MybMTpkBatDi8IX4GN7KVuRTd1sbFaA/y+Y+u2EH+vBW/PSdxYQ5VrJkNeLU8ie5+VpX76EcySHfPqyZaY6Y101fPMOUjTZiklrC8AEUWwHqxfEbBozYzczrnB3dRtt+kUPSIiMh62ag1Fmn3d0Ar4LQvYwfQ3D/g0CuXYWFg/tGuW3OHo8nDE3Fo4+MMcjzXM+I+xaPykajsAM0+51CzpRitwKJyhGuYIdBBQq3l5UyVQ0vMZku4psocY0nl+KxRA/t43UrxIbB36dUGA2N5aGmei3ks/8Sg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510074', 'A23126510074', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 87.40, 85.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c0880fc97992835daed82622c4ea87b2c2dfa0bd29bdbdd090b74a4f9a2a0250', 'CERTIFIED', 'PUBLIC',
            8.51, 8.90, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'qH5N1qyw9F9c/58URBI40Ejlnp7X+fnLzxtXfdeLGTRSs4yR8HPI4wczt8qZGxjo9E42RVedLBZiA4K2rKy/wexf43IELx538c9IAnc1uAFB/m/9u44u+0I9/pnXxYAZBE0+o574sC/KVDLKtU/AmA8m+udc2ICrRWEFS7S/Yi3UTZ4KI4Gr5BDGL32G44HXPBQzhQ7H8lYmpAOuUAUNxKyWrv9eEGsAWY6SGJcbJeSF3z1GMZMFmC3wbiSMf8xSVZa+8PCuYmtpi9w/Q+sQQI0fJAJRyWg+7DisGzDmoddBmXLu/XzHWfPoKdyd/nQipvow2dIZOVbfddRkCuIY2g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510075', 'A23126510075', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 87.50, 79.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e775633e1c4f48329933b965c935f62ed787fbfb0350b23edcd26520744e7fef', 'CERTIFIED', 'PUBLIC',
            7.93, 8.01, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'OFlDFvyxgwCSO4f/YjtWpvJjv/gMes36UUS67825rAkAkiqRRmm1fHe7BEI2iZUBrwHNal8cn9pDyISWehp1GNUDbXv/oKT/VLV8bRklZQInujhHomCM0PlXZcZYpyedpKwWbAUiu72aGw1yHogZYD0i1NtNj75VKqysP52D+qHsCReruLDc4nzvXkTo1uXR4qLA+/HORHiSdrVShAhSwWrIHsLkjE0WAY8JeUirg6rt77nop0XgDmhUoNJvLJ2v53FARAhQ9ZUUZFpDewpejbd45YhpxQfX/60008iXJEg2GP5i/3qOAKBgg43Wx+80hu3CKIsBTJXCtcSWKQIAgA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510076', 'A23126510076', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 87.60, 88.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6aeca5b7e1dab40cc2d4a6266c34cdda0fdbecd35bef2371fca0b7e382a3a569', 'CERTIFIED', 'PUBLIC',
            8.81, 9.24, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'nPXNIItis5DAhZ/iY600R1HKnq/vzmc9ZBGyvnaAHeMqCiDGmaMepWk4KrPyITYzU+dikr26wKmrbVNfdzzHXp7fijGDBAPft+xoNXy1Fh8xbiU7TUoHnMH5OKXljyCfYwsgUskb8yP26lCv/HJVQihB77ms5jZDsi1opxCaamfU0c7CdCkEJcZgeJ2WHW0RMO1G/PoINNJIbqw7d8EXF7p+4pyoxlx8Ij5kkKA5Gcp0cXfIbZb47AZ8j2nZXj7lEj2zgA9LqxEIjQBXIVqx/5KSF48quDCqL8JX+HybvY2iiI7IB4hHn7lCkuBjC9s4AxSH9R63U9ZopebSQmmlMg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510077', 'A23126510077', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 87.70, 77.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd114e6f4045713f1d75afbe253c803eadcd8d05750771a3c731472ce99da138d', 'CERTIFIED', 'PUBLIC',
            7.72, 7.34, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'PyxgeIDgf6sy3u4452bmLK7GfgNHQefhMkCE75lrawgrvOozw2ue13zY8Yha/bzAu1OVuDJiaCvZivDeyfvqQemCblJYlijeCQSRjpPnEJHHuAMcNbHLeHeFF9cQt1fPySB4Vqd4oUMFJ2iN+2vo1muITJoku4fxmF4hZXHSl1sP5qxQNhZ4TvfAs1DB6fsB00ex7ppqz4RXxKR8/jemT8Ifx+2IdQ1Xr0calJBXonVPOtkHgPoS1h48hW29R4ezve+BCSe3vtCnoPAzD/Hu9MeDTOYh4yiFaIVNCV3A0yMwISjE6+BgUnh1T2P+nbC60CGnEF21+jloka5SV45DOA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510079', 'A23126510079', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 87.90, 84.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '51948ab03d88823399ec63d6ef34764f3bd68580dd36fddba19735ea456e4408', 'CERTIFIED', 'PUBLIC',
            8.44, 8.19, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'MePxyhw8lJyjP1GWM1dIj+dDPXVDc+qLas33Rfmu/wnO9rvj6dTUdWNx87kWomXAbNumB9nphoIb2s1hGSRitxUdbC18si/Jix8+yJT19UPmQQ/nemGFup9EGapIPPfBTdwjknhwMa7HWdq3WklQby+XD7w2Tgq5AwQdAP7gr5cHiaLQP0lVlZcO8ApGdmaeXm+wkd3CcwVnd7363h/2bUeOnst4VFKHDpDm+7v6Rx6PGFwRLtlHOvzg4Gjh+FyJpEfuFJ9R82vU0Bn3TKElVaVMyGR/UUOFxATfHw7gsnbAtnACpwrv7oVSjq35imqpusQ6QEMHPwlr0lwFObsbWg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510080', 'A23126510080', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 88.00, 76.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0728afb4d3fb23e3598e400c65a62d81e8bdddf4af022f23bb7ce91fe85b4528', 'CERTIFIED', 'PUBLIC',
            7.63, 6.80, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'PYFRWa0WFOEgJnrpYFW8GeplsIIakOAiTZM6QcTrvSnY8tWMfUDT8EEKMQrGy0+aUZv/WxiCbrjcsueZfpqSy44yfofw5uwV7AVitFxgz/xQdPCDwWDxE54pKcMkEmC2DtV1jYzjJBg33duzi2Jb4qRhavcsjRnTA+9mqzSsW/v6cZIVWMl0EMXUJoSypT4lIgKmdyOzqexSp3zgIKdxdAjapjSCX1HxH+WzauBra0/Nln8NChyO0U9GxuXiibgfIyxJ1z0K/44Z98m4qQK1q5v71+M4Ojm1hNdxNkM7YFe3QutnElmjVAbgp66KIkTd73J3w15gA9V270+0kz6KoA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510081', 'A23126510081', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 88.10, 92.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'cbe9dbd287e3f00d09dd1e29549ae96f0d0de652a5e15af6df1a2c1fa17e0b27', 'CERTIFIED', 'PUBLIC',
            9.28, 9.32, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ep9QisKDWeU3IABa4Xffdha2StSAXhESmBV39DSuvRIhFD7PqOEFuWP8A5PAI/sCr+NBIPdRljALBVqD759+jOiVWcMRq3Anwc9frd/ts16VvVgx1hX67EjmyTe4o9l9aw+z+XKvFSMpGkZ4EwKPrr3IjYCPL0rN09JhiG3uVru+UoBHnI+b4W09IcEcIw8COWIUyotKH0DTpLlt1qetd8aSbw9Um+daVxxdEA7X0U9OoTeAwPsoqRhk5zhLvoMWPvNwob2McVWF1TjolOQDnf9JovvTsuFcc9YYcuKgNBwazzR8TKyF1pmGbk80W6sYXjjFaajcLZZ2zZy9RJ4eow==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510082', 'A23126510082', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 88.20, 82.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c26c3cdd8ae5fa9dfd34868e88dcec5a3d68faf47450915a6ca60ca5252cbf6b', 'CERTIFIED', 'PUBLIC',
            8.21, 7.93, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'RHhHwYqKluR4j0WvKNIXpiCt1siIdFiCMB1CtOQqcd+qiujw86MDM34/rnpj+CPpYuFVKmfiiGVznaqAqM8OVeU3CwOL5Mq7nm6KSUeeKjQzXvIlYFAd09H6TdujHBd9RxkcBYaHzZB6y6n1/D6cM97Ddsk+JrJvYbuLMYPhOLtaxnwPY/hG0Rv97zaf/fRs163kbTmT2zK+JjUAE2L8amuqtiKE9mk+MeTZhDT7coirXjlMYQu9B9Xehax/qLf5uO+UOcaQ9NtI7hDUoPdCHIkEObj0NF8U+iAVS1EHvJx0g9Xvo6MhURMdCLJaFT6Yj+gni/VhRyRxXa2EjN76mw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126510162', 'A23126510162', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
            '2025-11-15', '2026-05-30', 81.20, 93.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1c967803c75cf57ac0a1b474dd95b4350fc44c1ea9a173909fd1f6c9e7f53ead', 'CERTIFIED', 'PUBLIC',
            9.35, 9.56, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'H2KtMkat9lEsTTU2tFr08zaBExfur/0TCl+CEFpvQRvcX5UkzMgtEjcM9hYKh1SIHuA7uT8JuXoQOeTb9qdXUoezLWlcFCA/D1MxD+t3l2Exar4cx0iOrtdLrYUotYgLJ4rX7fGpRq1Z4K0qDvL+ox0n2/i+cz+TRZYFnwlyJrDp43cNgsL2q1JfTXNUc77HHW9f10/g2979Gcgu17JaaPR28psDQLeppjA4aBLAZJ4QSgmeoTJH9VUKLlK3XCHWjbaYKOmpubAMhWGEl/hzB2aUsnL6qvKo52exuM4nuspKBl0sGrAnSo2EPRUqL81mji/SodjcFw3erpB9C0IScQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552001', 'A23126552001', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 85.10, 73.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '02ebeaddcd2d0a4544fee0d072b52d59c134cfc1e830c7a89dc329e6364525ad', 'CERTIFIED', 'PUBLIC',
            7.33, 8.44, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'F4Wxz4ls61F+ATxf1p0Bx2nHXVlF+n+p1G9F0Slu+j3mb6oj2zozbnFUeYn0Aedp9fFTHCMSYX2lM+XcIYoM36QL+Ue+5APxbsUB/9GTjmYTJp4O4QUt9NUenMMEglKTz8tBPahmi/0u9oE+/3Xm0YDbPoPHgaUnq7oqWxKsqg89TlY4VNixujLVR5z1paH4iR3anVUIDnWeJdUanU6ksafQPLJkcpCnBmF0srNtP3nnzj3wzYNGN/J+lYx9nKunk9kxPo+mdVtwvccN3pjw1AoS/Zb1TXY7QFnkHuL1O18QSbmts9SE1LSqA3QJqTk41mgjpdec9bf6bUWhOB2kBQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552002', 'A23126552002', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 85.20, 86.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7ffcf326c0b7b31e7ff8fc6af1db57313818852805ade2360178ad3bcba0b2dd', 'CERTIFIED', 'PUBLIC',
            8.68, 8.65, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'iEkYR0X4PoDraKXUUksVscZSldHebbK4s0BRXo2LFk5OY5MghQ1flXe8HzFllXEuoLaYqCKG/NST1zt28P6tPNJXQyxVDZDASoM3tlTBuu5J4HJMnNFVyENB+d9WYUgQ22nLjvj6KOB/Y77u6a7yg62j1gGpQ47YKVmDZozH0V2BZLYGPbeJQ1efdYP30TsMse43aGjOWprkC7Bhsz4Q8wXpmYL6qaShoKPSzUwNgEyXUKsREawMqAryEJEgl+DF0uJPsIE41Ip7jxpo/RsVT700aMn2vNNjbjoi5cLG+eYSUlQOsmypppVvrQNJxH7Tiy5WlozyxDT9ttp9vTMg+Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552003', 'A23126552003', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 85.30, 76.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1f2411cc03464cd2e0a9641db37ed6a7e6feb3de154c302bd8961d54bf001377', 'CERTIFIED', 'PUBLIC',
            7.63, 7.23, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'GXnVlwSNkC1Ms3uiWdt19xE90GnuvIDQFb+CPj33xTVkQMJLJZM/0eDB2//GVThhai5WuiWekexcyUjfOFJhd6kWMbM1836JB8cqx8jg+m18HM05WXMDxHJzy7OWJcKA6KTvVaDaqA9eqg1rOkRsAqmE76kMQJWOkGOuorsVtsJql7pdpwuHkQ0nNhmYn5PGafDnhaiELIn0oIv9J/jGs6fvoQ3W+hhs/6XzcmE66IpZVXA4Fe/9yrst/FSWEJSh0OqT6AO3hcAj75AYC4dSxdPEA1CQ5vZpb2T92uaEf/9GSIrLCZ6Wtrfe+AbuNCWJVAllAGW43KD0+6ojcK96RQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552004', 'A23126552004', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 85.40, 81.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '161cd88c34085bbbba72256db9e94a92f50a449b42a3cebec2a635a442bb11e5', 'CERTIFIED', 'PUBLIC',
            8.13, 8.48, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ljv1I+o+msO8x/MTtqcgXXs+CZyyO9s0cFlq8hgj8LD6aVsTUBKOP0tClvWiy+CkRsiPasGzKsYCdoJuQ6Y6JatQrGpwB/YWM7wgxwOcoJRrrEEFsZt0lKHcwYjC5EYFPHnE2+0MAynwmqT9gcmAUlnl2dS6UKqrMvIqbC2m1+i5w2QpZU2od3CTIP0YOoT/A1UygDvxpHrdWbDpN/cmdmmngD9OPLts3GgJdn5BIEHvj4tBN+ltoaKV0NTrw+mqOmekSqyOyWy7VDuoCHsVHICGXdRz7jrW7kmbCNqAaxrLW9KNjDcGgkN0eoDQZbIgfOoUD9puWLDipieYqMlDEg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552005', 'A23126552005', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 85.50, 83.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f1f8977b88cb662195ef7f4a6ff7e06d2895a5d40e9467cacc47fb0fe0d92ee3', 'CERTIFIED', 'PUBLIC',
            8.38, 9.07, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ip3EVm4177gtRvoF/gVJEulP6JqFIOOc/2kY8K03HmZaneQvbKYhxtjMLutW8Uo1j1QQeDAO5+ixByu761SJQKJ6kgaevgAqg04XEmc1GX2jj3upZEpMaYDZO3uJJmxxTvwzuo+E5zBOn3mJ2rXLzFBaNJA7BtXZy3RnNC3Uov7JR0cO/uQQFTSyRu/YQm/SWvUoOOX2S+cdJvL1GavZ8eN0AgeJRLL3CrjOv/Ws2qyVk0+p/AkRn/8lHw5zeQnFOdfIKzhXkpI/fab321HI+tp4FAhsUUgI2wZ0/KyPZWm/mAJ/U1qOnsOaGjTA5ed9BwjWX69sOZkhQSfNnq0nYg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552006', 'A23126552006', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 85.60, 83.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2bbbd06da446102b1875e14cf844391e8baf155653bc72483a6838a154ca5348', 'CERTIFIED', 'PUBLIC',
            8.38, 9.05, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'rD6SIOC8VZl+lXfJnoik0+wNc8zXS5jZgg4cM5uhMwBhZPYYwbeWR0m4n8JB7n+XtwZJxcWHxH636izBpi55nKyPaEFCGOhPCnI75p6wW4MshWWsRwBqTqkcqaPxc5HQVadn3H0ZHAQ9aR/eDu6DwpeQSWj1dH927W7Zibv7OaKtq6Jk8okoFDusZ/Ms1rnbXBVd3uMtdfllNa0TsJZ8DrZ+xEfBjxsjtzraoQYvYXSUWTCIn6YzZ+kaSQMkGNll1yENcQjktncrrm043Cfu3LNk9MZqo9ZIsRqdP0Mw0I9jo6mwqjEyKQgryKCu3T2xL/II5sFmyueEVSpFzPNEEA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552007', 'A23126552007', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 85.70, 85.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f66013f5b7938eba1b4212c523417581cf8c0ceaa5341d44262987c4a450fd31', 'CERTIFIED', 'PUBLIC',
            8.53, 8.73, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'U+UFf3ScKiZ3OQfnMo/wvx4BYvXp+U3qA0m65J1D7SBXtpUKv+rDCsBnPts1sYroO0piFXp9LYG6c42GkYcU1OWi364JNrGaAl+EmCgfuYnMN+YcMgxApzismRe+dGP1ql+ZDDmwTYwmmWo7ITVAakpVn7G3kBd0xD8Ae2nSr74BLEMqHmD3c4J1U6ydNsZM9XaCiYU1txO1kjjZ5/Fni+U+YACnJMHfJTYf+fVO7HesAvvraXB57pkUsTlWvXd9d3PhDOHHpIXTTGD07GV0cRrukpsFHi1oY3WGpMyoQIPHG5toHuixt0ieQ0wznZEcdYXl+2U1zOy+2xfycJlKGQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552008', 'A23126552008', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'e4eba4ecd0138bd2b34f240d27041105d8180fecda34602f0ba4116d0e320c66', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'UEMvbEQm5Zo46He62Vl55sG2ETtqurINPXi/DStoxDuvo/YA/1R6mnxIOJUB9QtWpTbMGbH7eW48I3twegU2plgBZShDfhTVStZwLx1dIMy1AmjSEn2JqoBPgGq2ksLgMLygPv/P7m2dTsDH3LXz8yGgSr15Ji3QXs4grCRqBgtlfVo62LkqzEpCRyQrMirwPulV+agIDzGmdbs7oDr4QN08xtfEK6H1DtADjU0wps1EMdMwi8Qj9SidIesGUlAE6OEom2raUDoDkP5Vzz8aIjUEv/sMreCE73Bkkl+XNue4bSVvIWicnvQDJHgmau9a9sgWfUP5DAulk25crx1Teg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552009', 'A23126552009', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 85.90, 67.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0bedd0175b25df54d8112e230d1f597eda6ea6716f962279746b1ed1acb6a760', 'CERTIFIED', 'PUBLIC',
            6.75, 6.66, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'lTkoJzeYfKZEIq9zLAsKkCDqRVNsn6TgtQVLe1G5MFWSN68XPdFbpTm9joo71krkr4rx+yzO5+jrnfmLmMl1BVwTFsVBvsaHjFY236K+N7Fg/6RMFC6bphB6uX/2U6Pj0Nl2NIK/GTM5h0VC87hudUx+60I4k28N6HOeIgowlf+A/TlsQCzrk/O0UNAz9AgWreeEZW3yJVrezDKW2GDEGgTiNb4zOrj3xNRcNsUipwaLxnMyhkArQBwqb6FUXf0wi+nkTgviI3xnCROk3JJkwAw+bgId1LbQuIupfTsCoUtwLJ/sFbUUNAcm6r/PMPWpNOtDLlCwE1bEaZfE4gGKFA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552010', 'A23126552010', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 86.00, 82.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a2db6edb68c79ab51dbdd815120fbec43a02dbd733702cff07871e90cd142bbd', 'CERTIFIED', 'PUBLIC',
            8.23, 8.58, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'c6ndIwfxo3W0K5D3OGrq172m6mcDetOAxb98iW78FrbiVzflDXhyVzUzBTfb/Uioi1jnrQPXoJ9jjmFZ8V2tpLh7N/+8b3mo27ARC8nFSrts/8TwEy4kqKLVmoGJzBBjCXhtvKTRiMkEQzevzHIEgh9hsEvjtzgux9Elb6WCDF2e2ZVXwQW0t6GtdCEv28dpx0GR8TER0Eg2+utpq+/NmfAFwgkYcM1gOFBTyovzAXdI2T+DjhfR/6vT1/W4uR3cnfUh+veMo3Q2plCsh0R5a18TXj4kkAnvlGQkCe3kTJUTHH+GKw3w0kbl41QWM4i3Yk6hU3OEFMAZRHxRQrGQAw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552011', 'A23126552011', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 86.10, 82.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '92db053630eb14dc0f23bdd5bfb4e6cc18167be5f2a80e86abb13ecf4b0812b8', 'CERTIFIED', 'PUBLIC',
            8.23, 8.31, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'h2HWKkU3kPof3RGcxA68VQUXT6w86kMJaGts+glo8OiUaQXCLu2mAE0MCSGejkt14E6LWsone2OqfnODI9FtN2wKrZ/UAeShOZUHUBUK/LxHa9MvDSqJOar7BTFWo0pCRPmFcu/szWEz025yg8ouBHZhBE0bgNtXwn85wNt00siuw0HAV5bc/6HpFYWYDqepEzjOS1LtcORh30tJtz4QVbuuu+A2XoBDwq8bAGzGCkZbdTHKHP0QRpWoEPhry98bKoZcAgfhPb6JjnC43ygOnPar7QI2alR9cjZxkTjaQp1VllAcbzz2/er4fq7G2VHD0Xpty0tON4AhnVRaCScKyg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552012', 'A23126552012', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 86.20, 79.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f608a19064e2df12ab77dd160625235aa8b72a212df3c7a4842198443a742b03', 'CERTIFIED', 'PUBLIC',
            7.93, 8.26, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'qu7V5wqVha5wFUgVkL8JS+XBgsQNYDDgka56RKS1XFjTPm6G1jiWsMLuRNOeHmTvTdeUlR54GBNAesONRUuqQDx2Marlpy3x48S+J0Cw7iGVq9lPM+se5JsnnTOXeQd1k5aodIrTpMEtE2slPKEbA10GGE39oC6lisNQrdoKnTaA3o26lI4X5sSXqTmr2D60ozK4AAsOicqURxYQ5BqXBaRlqhqJlnjsYb0m2DXp6iN0g5hoWt4UMRhdSbDGwxBesZqK/PiWk3wgPLHU6Gk2JzFWuppD2etSlwJS5gk03IVSluZkZm8dFVhDo0tJAz+R7KJyYcPQAGYaghQLy52iow==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552013', 'A23126552013', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '0052e35d444c533e3355a6285aa19467ea221b9c94d5b26047c7f10b9dde9e56', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'nO8SER5JAbNnjpEJ7GZVnMZ9cLz3slKbUJ3J+ID77CbQZNgcB9EmzBsTMF80n4QFKQwN9no9dp7IaaTUd38P3IOEf+yqeVE7mS1CMuXC3Y9stFS/fndL01gxboIyR/TD28s1SPSyhjEcXKq4Hsc6UBA0QrVD1VaK47fFFIr6ZHpF1+1tdg6u4twFQLlK+du3qeErgALYqbjw6oyv+Af2Ex/DQwrBvXCgRfA/8o97Qf5OcC4JGXSHz1nriV8mLUVoWQFwsmMW5KKlofGa5mbkkgUexq08cB0knSm27qiCILN4iHB1iL5Ls1NEgFntnZVgbsekaf7NjGfYVHi4QSzJEg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552014', 'A23126552014', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 86.40, 66.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5f9ab3f9b29565fb5009a617ba94a229d0acd71bc91da5fe63aa050d494bdbcc', 'CERTIFIED', 'PUBLIC',
            6.68, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'vivXUVlk/df0oau/8F23n92w1H7/349SQsY6Z39LBtX6t1nEvUn8i3EnZAWywhZkAX4q5xdBcry4ayhwjHldWTjNzb/Ejk4M4RjY3oZzRwThFd8ZMf58vOsTI/Qt/Xs3JPq0ghDDLzdlp5w4NqnwK4H07l91cKHuvC3q5qEDJ23gL+ra5v70e2S46wibyUjmMIcmbBrqfAF84egpE8GJ/mQ28dCXASTadUBX2tR1QVmJMBYPlJYCl/lRnBK4jpCukdvvmbEJMpJOqB2LnpKKgK/nnBmRA3F2xn4E0RF4aSvz04n5d7ug95roi5SgaIybMufPMlE7ZOB1BR57x6UAhw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552015', 'A23126552015', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 86.50, 90.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1fc9db61a3c464334ac5ee2dd1e6fbd9065b5f3cf76b032fd0b8eaa5a1c4b712', 'CERTIFIED', 'PUBLIC',
            9.00, 9.13, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'RTP9m06wTfzM+sxilsWJ5vsOySYWnFwcRultAA1s/+0Lv/iltYM4IdE9n9AmAyGfHWf+1kMI7nEb/NG4Nz+HZk+W4sg8oqVBJuz/1wEF2VYx+OVBKQbc7GpUSpqIvnduo69E3e1IxV/gav32fYD9JyTDlhLWg2G//wmQ51M7gIB9TH/2YSGhDHNk7vpEQzqudABYN+o0Bt8uVcLON2Hkd58+Q0tMpdmBarZef36hjvNZbWzWcvU+a/6jMMa3iXgmvhUkC/qxY+G/WqpXqvi7N3TJCeuFF8fmtzD7Xs6SDJqGvEd4F9vhWKKQHWwVbbFmtkSqSt7s5LMN/hiObge82Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552016', 'A23126552016', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '39871f380929dc1d3838ef616824e77711010c3f9b04068a11282d562deb030b', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'SDkkl5kIK12NlAsV/XuL2R/fSN6gp2bapzBvYc+Ah0uYl6k4GbnSMs9hCdkTTf31Cr2aI22tu25//RaH5zdcHVYH+wFCcNqEb3C8zk4YShbbbM//rbCh6FjWlikV20mLoqE8a02ROuBdbGKOcCMSN6rrt07TEiJsw43hOkekTkWeSYHSpunYAe0tKkvbOTGSHfUOVSbBCCG6sN1LNAUmsif1bCctuGQwWK6i5VjAQW4KWwLkGz7O19YYZl9xltnjePXOIu2RUnlwnuNnAT3xHMTLYL5RejLl/M62JGpPKhMUcQ4OZ471WJZOjxve2b/nRnRzjJwv/YK3osbFRQ2+OA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552017', 'A23126552017', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 86.70, 87.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2b64c2e3adb63b3dfc7fd8945ac091a970b399971340e4929a8b0c0a9ade84d2', 'CERTIFIED', 'PUBLIC',
            8.73, 9.09, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'eZvf1Gl62pHM8hALKeSZFHp1Ip+cWsGSQG6i9dDWgKkR+oXn1tw0fgpoAzCxju05+tfsAQoGUoPyExq3OIy1D12pA8VB3TUyamzFnSEXf2it7ueq9gqZAh+89C1aZtTVaNHaqkMsW2iQTjB3uVsOqPP3rWxahjcA97b43jiWwcvJVO+b0LOIaV4Ay4tlQgZK4S/MZSBOzZdOnkHl8B6ucFOJeC8nBfY0DwzzBLslFyizS4rsqcUVJikBqkUEBtLjR/qrX5w1Ed8tTlhCBOlPdMK5Ay13Ue2ButCHW51dvKFWDlCoYabeqG/9TZR8i8KBQh8fIrheqwU0WHwGSrzGaA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552018', 'A23126552018', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 86.80, 76.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'fd6a6ab10fcf7f0c785fbf94571f9df14026389db9732ed0c3b8518b388ed214', 'CERTIFIED', 'PUBLIC',
            7.65, 7.56, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'sdqShG6uPS36mNldsWkEHr9PZZWssnjq1SF2GB92qIW/bQoKg5YVOSp5YCSlLwJH+vS56RHDGBS29T03ZMuSwc1/TiBgZSEpzEIPIl1RE4lazCbACnUIfq4NLhsEwNydfCgJS/t6rIm6kisLcP38oPSWYg2OyjFT+H0GSq24QKs7wgjWhGWrAzux4H7eVrWiku8iwCoN5KXeA7/ncSuRyrcjvZArA6yO0qStRNa7Px5MVLXNEq/OPh4gY3jGPK3+mQeELECRrrLFtKIuYo/VT2NMZMknjv+EdzNe/y5oX5Jnul+QyhYCY54ozrcppmhuH35/TWeIH8pM0RBX/xtRDg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552019', 'A23126552019', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'eab6e63449c2e12a990b33adbf26530083e9d505f6453b04ba8f5df71a187e32', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'DDTUgWjvYm0YOZG0y6lesBX2bUPwiBOjpFYWD6ZgeeVbytdc2rr3ouC+95eg7JVETLWkseS00no5msVm6JQUhIlYVFjG45xPuqq+NJY0Z7GMCCYgPEsfhATMWEE0jVg5qQltuXMN1Tp+YmdF/G95atGBcMzMyl8Pw354H/icD5U97qexst1VcVooZpkNBRXTfGxBnFkCDxR/ezYvg+u4LEi9eQHDGz94OLV7ZgLuE5GiwQmdcBlsRGhiabrxBnyZCUx8gd0bZFB4c+A3t33Z40PxYFjuQpmMsY68T2kXG+aC0Vv0Os9OQUhfFmIO9gYHeX/d0VYuvw3GDrv3OuugYg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552020', 'A23126552020', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 87.00, 90.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5861e17336483719e2d6ce82b8a03f5bc453bb0abbfebbac7fa491c2e1d57476', 'CERTIFIED', 'PUBLIC',
            9.03, 8.84, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'aFaXnHSTZgucVsRCSQsgmSuOERjRUOvasdFDaH+mFnntyvCCwkw06YjBfDRqg7BEGQBwCFNMO+BnLF3o05qK5MNZW6C1+4oVVuArrk7Lnw00maOwnHWGLHTiJLB7S75mkstKmP6FqJVggm+hZ2oQ9VEFHKJnJDNJZM/zOA1qoRnGFYTdgKYvG1Aqn8t3JnINBFD/AevK+MPgsliLPove00pUNCzGqjItsNuPAkUo12Q3K+98xpSd5raZlddCNJ9ZgZ06wVP0f/+83lEXRJV6WdgtRKT827PYlN2HYTPWxxDAxRsjNzZcXnGvxuDp7SfxQxWkdIHyAcBa8jXKB13Mfg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552021', 'A23126552021', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 87.10, 91.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c93e279c7b0fbf53b4df9a26fcfb15574e485ecee17f3ea9debe23c1f531499a', 'CERTIFIED', 'PUBLIC',
            9.13, 9.17, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'mahYkzB2xTsCYx8ba1hsQOnsV0MsEop/cU/zug3qgTYRIjqYc+eKU7qBHnNG3z5Ick6a+7ILwzPskLLxjayOsD+J6XG5mVo7vQnQqW8EMwNnNYZwFwNCRAOmG3egkr5fB9CsFLrLmUbFCUru6uq7P2LLw1ioIagDidRzS3V7v+2NtBAwzGZHDCkEo7RMa16IDfiVgeHKfA8U0bQnI6SdVF3EKhH35r5nSeiJuUOJJcxs1F9ZJDokDrQrTXXqLa+VXOUrIWEFpjes0qsxAct7OazyXLsBR8ElHalGRalX8FUr8imNH/87aP27AZamm5/i3YQTENr2aHEcX5d12ph6Nw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552022', 'A23126552022', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 87.20, 85.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'edbfbddce486381c4f11fb5ed7883566fc58b7b6903f1e9b48f78da3b94c0078', 'CERTIFIED', 'PUBLIC',
            8.53, 8.57, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'BZkw6GGe7Euh+uby5yAnjdYm7IIjKcAVEyA9Tbizxnh32RNDURIaMjBTe5e9ZhXo80TptbZNbnd4Le1h+Ny7UDZPVMvQnX0poqmAP5Nw/aZMN8yKuTyA75UArLNKtgz4kD5ooknPQDDKb98IHOv6BrEwMoVGKdNS3qZsVeD05IiH9FncrlIgpBfH5K5rWKQ5I1n7z8G/hUMXh5vs60/Ejv/p/PSo0hTXM7ZsmWVETEno8aMQ/iZZ72oO7NtttA3Lv/xErhj+y/62Sf1FwxP3E91CT1ObTvqyaAH6Ts+gxmrypUCYj1QHDVHxDI3hbeQvP266wD35iQJbV4OSr6H/QA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552023', 'A23126552023', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 87.30, 86.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '9239beec1f55ca033568d46ebf8ac55fb3590683e57d162d59b74acabb75806c', 'CERTIFIED', 'PUBLIC',
            8.68, 8.60, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'jzVZWNIkEzhw02iJfmS1Ywe9fcE1tB01slDEl5XVRNs2X55gN1DOFoIf7Z1dT+qw/yKAx1pcD0LlyudZre3fPDWPo29Q37v18FMro292Rb+IzkxJv+lu1Nu4yU1Ni/zzme9zrfTVdfi02Ada9Y9w9+BzqvRDLrVRbQNsgXdK8KPlSPeYaCjNkIWcXkntw8ew59Qrh2OoozIiH90ycyjx9F8UOd2BI+FS/ecpVUHJRWB8qaf4ClaCF05A81T9oprfu7wNNKmJcQmRlDlvYs075eohw4mgufQ+C56c9Ko+1s1QG7zAduNizIUcU/YcakXjVhi2GXbi/PiPlIXta4tUTQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552024', 'A23126552024', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 87.40, 71.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7643d801a5b2c09fcc5feb7e8c0f4f35fe387667da9c8972c2423271c11c0ebe', 'CERTIFIED', 'PUBLIC',
            7.18, 7.70, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'jLy8orx5u3h1XF6ahtLHd6GVCEYAXK7tIvRLIklH0RR0BssDANkca7zJQXeVv6X3lfszZ8Kn1isfqrUPTo23PRWZldanPrWKjjoY+vYtnPhCyXDI94QG6aFN2Yv/tcJAFzppYAExO9U4ZLx0+LwkaihsJwhfieGlZDJSppkF/bQ+p1v45nwTW+8s2Nvgidn+PsiYWyYZVZuhHE6EAJKzWo+Ta0D82ICDwGms9I4hN27/KqzZkzfzxIKcs+yX5GNokm6i22EDEa+ZhvpRf1P9qp2SSNdIbcnyGIEUbTgCXC46Plc0PiN23Wl/r53O7HsLUZpADMmvVoI4fswFbdxLmQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552025', 'A23126552025', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 87.50, 90.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '60977fb368f2f49ce700c4ed2eb7381ede68225e790e8b3adeb9888cc6b4bc9c', 'CERTIFIED', 'PUBLIC',
            9.00, 8.93, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Svsq1358+I5CjfoTr5tr9p5qC0Z69QOWdPHKb0aT1dPijqDqMAuSyDiRsF0cMOPOh3fyJ3oT0W0p3yAz6K3dgJz2szdskmXen51dG0ew0YzgS3BvWqQH+T2TvOULu7Qs2KweyLUImBrZbQwqFqDUnaevimSqrfwRm7z4AcKO+iiALNfSf9/0Knt2l8/QHHQnPCmiV4oQBza7EiCR47DjrqC60ggv9crxdiTzaPYorbx4JqRbjFcI7Ym0nfIX3zmERzVV45Quvb3XHakD/7RJQYcNzWMpxqpAEh9QegRFJpGXtl5iir+JC4uZzTaDFy7EPUz/eNYW8NutugnH81+TPw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552026', 'A23126552026', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 87.60, 86.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2a901a5e074e87566aea77a1c7b71380a6cf8f02baaeccf447e5aac043d578e6', 'CERTIFIED', 'PUBLIC',
            8.68, 8.79, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'IlYjtJHOfwuTaYuHvKEr2dTXeMgSbe5zxkYYv3bXtBQDuysSOrybDd4swVAXDvT1dXEJ/zfVMRmEFSUaT3kceGjgsJ3F21nIDBnA+wBmgQbMeYrjTLNEUXiWz2eBn8b0SUa76LZJcjCGZ/Nj/Lg9wPa8cIpWzxrD9fti/P9L4WnVx4VHFMQUJOmURG/Ap5gmfxcg1W+aWYKFd9x77Ui1VzgTrq1qMw0teQaDyJlvCE53BFFPrhATV9ufj5aTmDXFtM0iCZ7ud2vQKOX+pUvZppHQjOWJwRtRQsK8mKg3UTEl/Np0kXmbHxeQat1jDA7nrsMeUHyW8yLmpyOzVzacEA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552027', 'A23126552027', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 87.70, 85.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '4114a249e33888af9a9cd6b9d1cf7d581e7fcf201c25448dfe796ef3b1e14331', 'CERTIFIED', 'PUBLIC',
            8.50, 8.35, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'mhCaMCYwGMOUoIluRpBAz1+ZdObephh9ZqvcH47KYkeo3iUSjjs0K+d8v63WU1nrtjj8Z+e8AEkTGbY8BZi7vL/9FNE4XEVuoFMy++4gjLmVuKWCTSIEInoR3WRZopTdIR8BZDzXAHS8ld+9MVgG164sOGOHLzcOnaOMuCHKmmtzlM0Wi6KY+j73meh1KLpLq3TY4BXa3xyAfIj+GrFWTcZKbqMBiu/a1KuIFlojnnx85Z2iSORur1dfqyj80TPkcb4D/hZMkDy866pxF5rfc59HZEeZXRM4AbQhMQR/mhTmQMmy1esCmKXALG9AMpKvvzo3+4QLaO+Ix2M+DD2iUg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552028', 'A23126552028', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 87.80, 88.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5dc7c63985cef05fc3af08d4b093783b72bea7eee030dce91c0c2a73de9358fa', 'CERTIFIED', 'PUBLIC',
            8.85, 8.38, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'H026cfI+YSHXOH/NxogHVJqZMt5lmZ1dDRvGfkd9hqSJoiOgQ1exzuvZdSboFPKyKMBgLeHnfh6hJa42dus/Aqf/PWA/ShM9r3tqao8RRNzWf73/p5yQGGywJfBqZOdruUGWP0s6hE8eUxa9BnGgtTvQaiYadcOmmnvDkRkAqrfzT0poZ2/Cn46zuAep5RbpUqdOZu4VMhU6DfB8fjja5Ubh075RZLmxaTF86L04L5J/hNlAfXfUotxecpl4UTNDFfpLbS5M7lrmR3leXLDRRh1/M54+ULe9uTnowYR7sVoeMnP0ZBpn3ns4EIwgM/u9pY0Fw/zQlBSLwR53/nvyEA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552029', 'A23126552029', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 87.90, 83.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'aee3893b1b133d67a7300ac34e5c44a348786ab1b77fd77cc81ea4f7f6b5cabc', 'CERTIFIED', 'PUBLIC',
            8.35, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NAzhM/mUREyUU+ethOgGlN+QCkbEyN/Bkw2d6Xq2r420TPA13o3iR99q5kELKdQyc2HnwQpdVxmMGO0qtUaMV1daaw/zcHhLnhEkzQZt9RreAJBKDmeu1lYo8NHPVOSn2dmrNjAgUVOx4VAGHHR/aSSEK6Ns1YXgrwxnhMVm/+iWYSgTq7vYqH2k+i+fvZf9L8bj4/UQZgP2lgj5awy9Yfe/1eBdMWgEO1TB5rW9PDA0R8hLMZjislEn4CNYb0Byalwr7stfMN6GNSiMrV1xUztQFq5a/S892P7Z1j5baSdQPqsGm+z8tb+VqOMVzYmcoNL/log+P5B6E1YwD5hysA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552030', 'A23126552030', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 88.00, 85.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6951c2b17ce09cd5683cd384c1acbe409bca3bb668d2591120b0873c56a1a196', 'CERTIFIED', 'PUBLIC',
            8.53, 7.74, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'BdKjhA8bTvEWP1n+jT5MEpAl//H+LKez2OPPY8PrZ5rA/gJ7ckZ4Sygb+xptKhwVAtpwD/qXdUuFOVqh8mS9mQNnLN+NTlrkyStmzA6JLVIcOMVTN20TBlSUkC/TzDbOJbBCXPelKESGYK8W6E13v5Z1vf1/wsngDlw5J3KhstvOwAak6f2zXYbc65OjSiVy+2/WcpOwtfiji/fC7ghTZjR77HqAKKSsTbOpzOfuWKiMcY0w2oryEvozp77a8mj6XoAf+qLyCD4I5l+n+sF3B2BOar2iIIwilio9FA4Q/YXCwCuxEIctV5Arx42NbdSLVPgxsU9otoNhBKIpFX8+2Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552031', 'A23126552031', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 88.10, 66.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7dfd2557e0b1ca39bfbe432d23ce098835d87d53d222bed409b132780f0f4538', 'CERTIFIED', 'PUBLIC',
            6.68, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'eA9paiL89gtZ6njxhk2a4ngkAZUX/q3y11zeExcrL9aqQxWL+2Ik5A41NVNA9UVMnapE7iI5/YbIxqRIfnu6a8vOzzXyA9H5u7Z5zuPMNaOYDuCTzKtqNv9AE+UwWrBIHTKY0srOXh2sR3Ji8CsA50RLf4z7LrXGej7qdK4oaVqpNlla0pTihIwL5w5P07Lb+awWsA5/nCyiiXJdFdIJH34M8fpkuffUbMKZzdloyvsfR9HSxIGsmkSJ0nb8AXsCSsEwJ7Z/A6ZtgyhXZDkhVO8+QbyPuy8knQnpGBNGOBXkVLeHPuipPlKWSPqC4BxcIOrwLzHsZihmqtXhFsDOGg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552032', 'A23126552032', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 88.20, 77.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2b3cfa0c594396ef2ce353cfd5f0d821ca65f7fabbae5c4139e05ad64e2a2828', 'CERTIFIED', 'PUBLIC',
            7.70, 7.94, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'JDEQJ2P6vmHY4IRHdPARc58dyR/4t0Frx6nCKfXZ7ld8rvXPUkk+RMWnc9PnWYEe9IdX5hr7OziOaTNSCWHbNquGHH6Mfyr+Y+TwcDeUU/gJDOgbMDbcXYhSbatF+VMTFAN2EtWDvvw6EWQAysozdCiBDCdgyLDgP3nHOMXkblhX4HC3JpY4tUJFonpMDQw8n0pkSYA7JfzVnVoj/FJActsGOYZrcMBLrnEXTL1RcX/9gxTH5WOSJp+tmbQARltHxeaNDv8CVkODYmgeRr5wNc+zcac0kqoD694h0kAGWtgMhcNIXE0PFUz4dr69Xh5IiS72gTxJotpZDzSZo0KdaQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552033', 'A23126552033', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 88.30, 89.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'dedc60a8287ddda031fd38a14c0d12561e74c356b247ab1ce6b1660274a19b38', 'CERTIFIED', 'PUBLIC',
            8.98, 8.80, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'gVrpO98WzGDFCP1IcDQAzS4vD/znaZnLHqqwL7o3ZGDRuqn46YmOZilQgMAjRPBMynyu9i3zjGMDJv0ER1hEnlv0nqNJgq/U0uSehtzZFy1dVelvwIs7Bk1wF7SF7pNZpE4N944bA/kcW8Cpex4ER8aH3upNG/heeQxvT0FWBmJyZlOjQKJ7AbVdogfnAtxM6su+NRFeijo/CbBAufz8iKnpWepaJsAzWykBNojFVIYiXYfu331Zgrz9e8OjhQOZLi9iAH5onvVPQTeFbol4y+e3HgqesQShYsnZfXfda9WGmQV0zJn2loRM6uRRrAdrD6v9oAUjW2RufWDodsEXtA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552034', 'A23126552034', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 88.40, 89.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7265d7a5d89cd21f524c2226b441b8dbc973b9d7732ad62f2ef1caf9e52c087f', 'CERTIFIED', 'PUBLIC',
            8.95, 9.15, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'I4IGmKQQmgDpt73UZAL121iVtKqZ4k4dlAzekvrfHJ0+gmEnIPJV/cOh9twalPUT+Fgu1BS2VwU2MXLnbSgA9aVUf6fwI1U2KuZSypaINp/NDAPJ60HYehZbQDzyNs//iXJO7u/HleFXCSE0hHtJReo74U+nq2119vh0GUEBSU+KKgwKgDUuy6EciYjDPf863Fz4wlkevRQVB41m5YZRBVbqW8G2FSnW2Wkl+I75zugLTagQ1eXvuoYafSiH3ByNRARxL3V0ogkUgt5eR3+zo9r1yXh1ZTd9KqX+GV/kEL232oygY3QGFE5HDCj8ecksAKsBYJ2Z52yBN7Z5vHS7Ng==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552035', 'A23126552035', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 88.50, 82.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e32e1fb322feaba375e49d09f279701199fb29452fab194bb0c9b56096d44ba5', 'CERTIFIED', 'PUBLIC',
            8.23, 8.22, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Mh8yC7UagaXIyw7yZYOAxN0uypcKtDgj/I+wPSORFMJtRL1aeHeaIkKoNX4BjlDEqy8+SnvqFIgWHlb+BAXI1t/ymeG1Qje/Qtu6k8P3UBRIDfPirNY2bEOcysAZKosc61DKAphFimqQlPa+NsgKARJbgTAuUdPknftRiuntGrit+/hvxArSyxlNm8YZUmcVDqpkYrkzAdM7WxGikG6YpUiUuGlMVRoUMa5Dk8qZhuCkZKXoFmWEf330j/aSSTkTEfWWi6ge3IAPEYPLI0SL/Z3WmMX8EM0H9KQZVs9S1gPeB06KX1lyHEBeKMJAcbSjPCh/I02MCWjuz7+UamXu2A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552037', 'A23126552037', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 88.70, 83.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1d468b5f07c7681a84a76dd9373fc6e66ea41eb94c5e386d786098d2fee6633e', 'CERTIFIED', 'PUBLIC',
            8.33, 8.68, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'UIi9pHkGYoknQaxzTGmTmc3pkqOQDIR4Zz6TDnK1Bf2PkLyeq2W67JwohGG2tdVYWpmvxJL9mNYfHIVcPWd7+IXoRf2ApuH/7M9PMr/ZB1PeE/O0VX8h9UiQPrpfih2V7WTJlWXZOaHMNCUBUAbxHoO85NZgcY1B2JY9ZtkgJpESShEd307UVNmwOdHEvhrj5OajBnRE3QTnXg1ymVmmT81lUAxJ/rIsYN1aVwjMXRmYLmyMYYpbN9l668VZC9Kz2w2OhQ/L4qQJfVtcpMIcVkEP71TIhMksKAhUefsU/oJNysuCRG+rsOyFPrwMecrsUB9kcX8rY23Koh7AhtLNlg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552038', 'A23126552038', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 88.80, 85.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '09bef7d648a729da909a2ad2f0b985beca6a69b573a8dba969e0238e7fde28c0', 'CERTIFIED', 'PUBLIC',
            8.53, 8.92, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Y59xPTCjIUAg+4iUAtwgFhbzD0d8xTCMf0rQAGrwxTGB2yK1C00gPxX2qUSd40NEDQ6N5RCJ/Ap914759NH1h2NeqrmNuzy4wTB+Q4IJaVGdYYfEezcnn/exE6be6Wwp4N6rgGeXsL7h+hhFsuwcZn+gYi2eeaA7X9K+mlIe7At+aqFHgw2gzBYkTc23gFtN+O0mcDyFx3ZZIWVnqE3NA7YftvCJ2wRrvzEn2CAJcAVQOI3wtxEn3kLX4895+7t4pO0mq1feZGcwjKuNVez6Yb3PQgBZmSqdRwuy4UVU8lEEoJ3WHGb8OZpaTEBfIlh6Isl4PRL5GvdrfH/aua3DzQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552039', 'A23126552039', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 88.90, 84.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ff9c052f16cdb53a7624f563d8be5c0d0e049fbdb8dc8c61e26c95c20c84f0cc', 'CERTIFIED', 'PUBLIC',
            8.40, 8.49, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'iHjzGTwcYStng6Cu518soLFgURCZ9cu2XUw75SfzRol3fhwVz/WfBPDtwjTRcmn58aRUEhInNWDg3Was1phyNOGDMiy/aLgC4ebDisVtdE1LkVT6Ub1vWdQOH4Rsjs9BZOsNoSWKgyE98KRFOC76h+5/86vypEtxfRPzoUaLMbjmUZ912HLKbw7g1LEY4DRdQoWoNPJLDYULkxIkF21jABjH6rCNf7fYcGYg3Ur8I0I4s/xO3EMRXVXDDIdt212SLMlOEiHKrbYKnTmzsgQn/GVwDWRrVuCLWUhBS/ye+dH5zKA6mFREHrE9WSaM/sGDiBWRgnoQkAPKfQC9TbYGCA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552040', 'A23126552040', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 89.00, 78.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '569b799790f2e53cd821a507a2af337ae53bf8c7ee44490af9b1ae34e9019916', 'CERTIFIED', 'PUBLIC',
            7.83, 8.09, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'QJSoyohJng2FcLyDsqwuBnOCCMct87ghh7nrWWLhwpH4TPw/wNdWnefqr+LNU5HCvvFH5APP94+gfqjCPVAd7mb6cgSsNC4NbHrlFW4C9WqCt13z0Abybk31p1/JpdXf24wzLGa2xxue1OsPzjYVXswqr2PT6UyEyxwiD0bXmnlsrZi6mrLaYd4FTykV56Lw93KC4a9gkIN4Ml9gPDpPld0gRHaBLGG4UjVUTwndUPFs2saAa7VkhX/MA2dju5hS1OM8q+QxNOND7hk1UG8w76/DhFP5T8kzhz4AGT4Khyz20VtCYTeT82GJpij+b+IMxyKAdIqP9wVMjOCUR2SXWw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552041', 'A23126552041', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 89.10, 87.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '06ce83e791d7b534f42a0d0757e4be6516d150d94abdbf5d91f14d78d7f00d2c', 'CERTIFIED', 'PUBLIC',
            8.73, 8.88, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'eIOLN96KffaUYXrHDBOMW/TbVyLjcgqcYhaF4506/98NPOPmIjnBJwiC+j5JRT8PDuSHANEtIm2AcPP6zi3XNuaKUZqCFCI0yWViizNisSDCGrz4KCdIwDx2e1pWPpTC3f1lyRUdPk/KDvE+VCny3tvZQLKMOGkwHEfr6crQCUyfkCZO6yluHFIe8zkEo893mMfEJKbe9qtU9FjVN9EIxfuTpyrIUB6o7qzR4f/U61I4TQ2Cm8+QZmb3KYcUeJe/kjCyG+LyWK3wAXMJycuGv2039cLOdVjMEZaM38SmB6tyaLVPrFFy6gl8JvLsqWVBnp54aj1HFbKc6b8YOgfbDw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552043', 'A23126552043', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 89.30, 84.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '12ec509ffc35632b735c8c153f777c9eecd00eb48a34d7e6e0d1ec462821c403', 'CERTIFIED', 'PUBLIC',
            8.43, 8.78, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'kLek55+Mq6UOmg02d5Y7ebdAlMY8/rKB7Y6caYFmR2AYRo5IFmgSI1cFBXrEyuKnfomzSSMVCUOpjZaQwRvKREf+7vPZqtPSezWpAIw5U28jrBPpcob0NF8dPbSEaE+AZMVh1BooobY1dUscc2WjDxLbsAP+10G4Qy3VB9TR1Q+3Kw4LzOMFM1xOQFbh5Ws+FWHeIk7F51IMp21olhn69+D94YU9zJVDvYmAfKkyni1MUGZiEAmpPrP5LonQzujJ0TBTt6JcoPRh2VY0uBpfK0B+XROiy+WcRkzY7ajX07Z6EBXu6x17nDoT3GD9xhSeICUYogu8WfqZCTcNoYfvdQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552044', 'A23126552044', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 89.40, 82.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '83bdb3eb2359076ee1422b309a526b07c96047bc38ec2266c8b4dd5108cb1b13', 'CERTIFIED', 'PUBLIC',
            8.23, 8.86, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'o2mK2Q/LR+icmXfAnxANsY1eJ/JXZrsAPd38BO+HRMMs0qzJItqapYhhd2d4pbBz418mH7wIin3xCjA0L3ksF9XSqO3wn5RXyT7Bmir0P2WsZ/b9XkQhARyMYybfKkCA1Kwh1SEH7f0941SqXcAORngHJkBCOkPTC8dPtfjxpQTECoxiLCDrxXk9y6dCQR0a6dkEuNr/ZSiAf6EWEFgGnsKZYHsuLcY2ycLpzzoTpnifG4K3QRUI56zMhKXO6Q8Jchv6BBCj13p647B+Z/Oz7xlT+xLMcEC1b+0tohUjKuyqdG3rjoTaFcZzDCMc6f/aUCAxqzKkYeOEzvjqb1iX6g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552045', 'A23126552045', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 89.50, 73.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '93567521efe190af75a069fd275123189568544a0e7a9a036aeba4cfec3bb334', 'CERTIFIED', 'PUBLIC',
            7.33, 7.05, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'XECFQ3cqn3CQP9SqqUg0HC1/o4M6XtGEA9OBf5yXmU7ac8ZOgKNest8FmaAYF4VAgvK0AmE8wv4ETkgsB4ud+MeFW1doH2wODF8yOJwLCk0i8aPeqHOqllgWxoJtkJlavzLKhVXT4fKJ4Xdn5z1XHJFD4BrA3R3Ax1IxVffdfY3GrTWDSAlxdagf4ziefHKOu4aF34iu+WBNamouAYvE0kvra8gayAmUM0sEzEe4yARMhn3MCmsXPZhR9AiIsOq6wZEt4AFBYVW/KIC4IRWT36IcH4xZxWDN4a+K5DJNAGEoKO4vzWY8n//xxhv76D/1D04xwynvrT2aecHuKLgqTQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552046', 'A23126552046', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '6c448ef6d5ca7c764634bbc6a6240dbe8d9ef38a7fe5c9200ca223e6ed9e38e3', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'AiUrcWjfG08u7wXO9vkTQ7MnhkCfCyLNBmR1Z13e89eDpAhe/O7whK1o0ECxwPeJSSVBcfEcSZRwyUE9PiocxJD3bA8LUbXjEPuPQr1m2amWvrb/Eh9u7nQJD44A95vf41MQy2u5SoZCDNO9q4oTsgz6IZoZryOIYZqlhC6dEgh1Am40A0BOCrWKs2MqvGxzBpT+ZjH8O/fXyJyZRJxA7OdGuCkozQKrqiAaWI5Kyy0yG1gncHOAACO86bOBxi4NhBqcFw5pJlgUldBrW/5QYqrjn854hsW/YXk1cKeE4d4YdahuOg6g5lZYZjyD5PwmXTeDni2OQgkU8JQAgc80fQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552047', 'A23126552047', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 89.70, 80.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c66a83deaa08a7276266de62a9c16632ed3e9b1d9e2bec0431a1ad65c5e3c759', 'CERTIFIED', 'PUBLIC',
            8.03, 8.00, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'faAagXpBvRqCR5iqr67Hh4iqySJH8pMgxqhdBfXunxia2HJF+GAiYaGKOvtm5CTDqWpFf03Y0q2aqULQ2vdg38OaiP1r9pVcmuIT8cz25QpzO+qELH28GnXR6QbBd9vVjoHvpXg2xCRICuBVS0WDyWuJuP3SeuUDhAf/iE8QNGYerl8rkjnEQtBAIEV/9+N1O9T719IwylTiF3g7VyOndfBt3TmlLssCY8Qo218hLhhhSlVMADtwbaErD1G5jockKQL/AEXh5MaPDWUjgnoSK5ZOnGRDKt2aecW8sx1CWsUzlEHxIyy8LIS24VDGHplXP2RqHlftZBhqsV3G/4qFmw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552048', 'A23126552048', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 89.80, 86.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '8a37821a1858d2df6b0258f15918b176dd4f4628f1331809c8ded9abf6b9a29d', 'CERTIFIED', 'PUBLIC',
            8.68, 9.19, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'E0rXxqe++NkB3BonPWtvpkE3Mw5HjBaYVfCm+4HxLU7SorPxTCfvN8N/YP2U566QwedrcnDpupFXlT6bcr7nlzcm4BvhXOpsPOZrrVXZ6eV/u3Ej/U72Cl1t1Z9W3D654J2WDlBAEN+GFP5h5RLEnbKn+hbFrCI4nyk1VWOaUQnD3r2aliJROWbGE+oAYVT10QIvWjm1pSNKREUfi05ma5Y5Wa0w5pCKAhacOtxJCtrYTmpuFINRQDsREszpM2jgMWNp53Li6oJwRuHUvu27TyWIPZCihLaqoPM5YLNIgkBmyNtPmoYl9nvuiOY6CfmaG/TkQskM9vR0NfBR8mVxOw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552049', 'A23126552049', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 89.90, 76.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ee649e98794e3b545c43bf561dd0ec40e13e9e40431e4f3244166c87dd619e75', 'CERTIFIED', 'PUBLIC',
            7.60, 7.11, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'JkxT5QZ7JVPBHAKMMIf8OGOCh91R+naJc4AxbBL4kyGIL7r6+/27cNzMrkyZWXGIWEuK/m5X8TVRLBu5mvKe/rforGFw60nhYI1vBYutFkdzCbPYBwI0CcNSOL1C1BDvgfwIDWs0VBbtcX0e/eBEP76CM24w7ytLrvHAp5OilvQJna1ixGkmyZ1jEwp+3019jhce5yuTRwLDrULXB84D+DxQ7lWzW++3FblSM3raoK6OR7y7YygIYdUSKWJ7A+h25ifRUGw+rvJFaU4ol1BXZ/bNgcxZjg6bAvPsFIxgJgrkYcUhQffBOwhUB8/EqaWOPOlkKSJ8sfPD0tRkzCqwtw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552050', 'A23126552050', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 90.00, 84.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b6d0490083ee92448d65f973ad288920400d8be7985bd2c1d214664ed22927cd', 'CERTIFIED', 'PUBLIC',
            8.43, 8.85, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Ch92Jwo0ldTuPuYhMx1ndOwdUpf809FW8j7Lexi0AXWta1bRnY7mpNEQC1zhQqjTdr8bD5ca0zuKXmH4ersley0ZkM7TaZvaclIup2bn1PqtvwCSSBKYAqEzC8Jqw+XVPkjCZKXvqxw53br5LUw208iwRkXpruuwUaiMnodj8NAKsPoGkXkzqJ7MX4UhWmraYuI6EHM7x1koHwmLoJzljHH+q7ZhEUgG+X3bOVSRVNw/aFr+VgRVB7e/eGyS+T2a9eHglXmmSISPuXEICtoKFWvIoM4F1Bq9BNHYlEnBUsA7NeUh/k+27n36e0cSsidQmy2FLva/1vlU6ZCIOu94zg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552051', 'A23126552051', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 90.10, 77.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '764ce9cd01334186fca0aa22b9e3e9711172da50d2dc537f28149d6e47511cda', 'CERTIFIED', 'PUBLIC',
            7.75, 7.64, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NWAVbTCGlssRwZmFKgXBFvtnVmZ2DpzhN3yJais2O9Y0Qi1GvP9lhPqJGD4pGYL4kGDrOb8SBmJwCH7//jKv3ipF6PMBEyWMem3AoBnnndh40OSEKEKo/m5qXlaFuFm4AxJ9qwIIrIQWaxE5JGrsuBhIJZFa6IjMqxpKiGlPqbhqeqEDZ3FSo0+DDTtX08fDhxQ942N5Sl+ejaHiIqSKfYAdhRcP07CrmyKLmcK1KXhU9W+s/qZ/2bAvWeY+VO0b/hU7iZkXA6NWPp+xB114pZdhnkxLu9wwfK7/igK/39ngB+qTL1mWMMPp0nSMTIxFaSXtIuBd4z3z3/Lpjid/kA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552052', 'A23126552052', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 90.20, 74.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd8cfd48ad2b6376e87fbe1b28c79222307366cbe49a43b583500a210702d7831', 'CERTIFIED', 'PUBLIC',
            7.40, 7.74, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'PHE3VknVB6Itzuvw4To3X/ARxvyQ3OJ/iOcS2+NCRvifVw7B+aT+mjCZRYUcSnpaiQpMpQaKohInDFTCH+qIs4CNghvmt38X7/afNoSG6OoF4d3vznF79U0SVCi6pc3l9yBeJtyNsMyeoQC+BGRCJa0+HSeSkE6wf7qGymWTz1bT76k+w35KyOFH8Ci9pI0iquMYEG/qvnn6B6TxF2ajSlMMnkQAzu7OJ6KrP1gi8d+mKUV/2rQycTR9fFBguLPhoy4dS0bsQtp8f0muHNYD/GMzNgImVuHLacYGuJ7B+y7OIZS5VKJ0nlp6wyy03oU+K1fHe3xof2St5o8/qX+eYA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552053', 'A23126552053', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 90.30, 78.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ea7eec05ad1817c1658746cf02bf82f2b7f04afe141853301a96617a1034c0a0', 'CERTIFIED', 'PUBLIC',
            7.83, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'h3J0X/Jngyxw9KvrmR95ckLKRti/X8qcnS8+p44x38gBWPYlNdr5tqSZv6pjKxI3oAP3gzunqx5VtgrF+azhR5sd/gGSJyAwMKe6XoIbYH3xC1DYDq8aTzvA08IBhriXMJoy8EVs9+/TYtqEFbDFBst7Onek20sYP/IbHgFkli4X5hjxe15d2w8rrHEHiWebu0gENGiw/PqACdc7uDDkDOifOt3/EeqSLJQm1+p/AvJa6F2D7VouvIsMJhSCAuFY7j98pkZCJs8EnEax43VKOGJZzIHJJMEYXBn8VEH9Ah/no8SudnW7QNqDj20Xfq26DGkdUDqOMf0i/drL/xtvXA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552054', 'A23126552054', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 90.40, 90.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '656d16c330c794a6a7a293864d40e304b21796920735b512f0288b75e4ed6c05', 'CERTIFIED', 'PUBLIC',
            9.03, 9.08, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'S5lRsfnT6RSMGWc3QP6z70tN0PkV4ReRN2togSN3CFLuzBokpPcl7j6DTXvNF0VW2rJN8CVOCiUyu1OqtNW/pxKeGTmaBP5t2BqrxYbO8etyt9LIr/j6vR1SvykGK66v+198iHvKU5+rCjyKj8ETefLX3meKf6dwOnKrym2+R5yjbg5ni+7fEfksnjGBzglTwdaARUtPAuuVPHkqB0spz4/JCZWELIxyWB3g2ZIonJr+UZv3TggRaU8phH32VAMZvgWWWxArl74Cmw50YU544xFdVp2DAhlE8tV5d4UOexN6Ru6zHzZH/Un6ZAYzD32oCdrGiezhTvcHsdjLXw+GeQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552055', 'A23126552055', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 90.50, 91.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd71e2b1ec6c8a5ec21cc1834815fa3161fe3f9c0d9f5e1419e42b70d6e357713', 'CERTIFIED', 'PUBLIC',
            9.18, 8.76, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'oCXigxYtSmfyFKPAuvAUjbdH7teXL9g30RlviWqBrmeqvhOfmr0i+FNG4NWCRYAhtF7l9/DRNr9vay9v3MgBHU9p34nXaV/o1BUbbtmVGZJhx/c3nfBBcGgAhr6mGrWZAJOmAKEdnP0jeSh1gp5PbGjhqLommbjrpOamKcvPv+RVHuDxALNBy4J0yOv6nUh3cNtBQWa+GXXJNLu1VDRfgkg/peZPPu55b8dD6hTsQjPn3mqa2lRC9fqarTdFlYE9tZqppYoSu0yh9kGfrJruAi+XMKxl5JA310tuf4+7UmJDWKj3nfzksYlVyrKCaLUDipuPGjtbRfcUmq6R7doyRA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552057', 'A23126552057', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 90.70, 86.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2080c1c6351939260567319250c6fa974bb918af28eeea71f0d0df9197dd13b6', 'CERTIFIED', 'PUBLIC',
            8.68, 8.85, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'fx+wXjSxTn1TRr0YnlvhLOvaauTqAuAKLW3Fzs9xYPwLjsELBd19VLaKcAYL8zP3oDt/7r4/Fzqy1WFeF6X9PmsEOXJBuO4NZrni8+8OhID8t+Gm3q2EAx74Y/Fe6+IlDiKrdqdtoV01BKdNh5XKQUXpRWmfIAfWwxNarPdD3kbEf9AnJmeCLjULEWXSdtKqOjI1mZZvDQAZEwcX4jnJKUCW6eJNgmuDkJ9ulm0zBtmvrVIRuzSjV0kjFwGTkS3OwuS5RLkRkUpXE8b4FUw48qGLGcdBgmV427JbgypGJGpcjLknqAk1y7iYs+06yaxc4mZ2+gDW2XEUA4UBu8d+yQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552058', 'A23126552058', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 90.80, 74.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '86633dd926da6fa1746b7750f419227e997e5cc2d04f03374a570c6c060c42c6', 'CERTIFIED', 'PUBLIC',
            7.45, 7.70, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ZGADZX9LxHMx3F7rKrYlcEfXZPhC/PVD4XfK0DmBWRbCDNTQGkBKgovNHn7KAIZC3p+Y3F2Y6orKUE4pjXT19FmInhmPLzvqlvU5/hI3SvKdfmaJny3wBK5teCu5G8CnfGy9Tg+3cWSqOZglaeGDIP8s5B8KWDfEtUKJc0MMgiHDAlt6StM/EhdtePTPgIdPPhNaEWzJlEg6HPNhcqqaldC5m4Ho6DNST30m83SkQOx80jSvQjN9GOae7AwY4y+rOgAmNEkzB/Uf0ER+vpLla1vyw/HO8q/NQHWcD5xW0geTtQHkAZPFFn/hryqk4NxRFM7zXAqPnWyvRjHOO/5dQQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552059', 'A23126552059', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 90.90, 81.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'cbfc28214658951730bb9bb68bd982da38595b959250f2586c5acea5e4ce6207', 'CERTIFIED', 'PUBLIC',
            8.13, 8.97, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'fN06fMkXOv2pV+eELL1eO9+J7iiLABGG1HJJywJm/o5hNASjVPZWzUMt6W7kd+qTTlmB/hPgm5YhnusNJ7r4nXaAKrvnvjwXEkO9OCjUlXahmpIH9+UokG9T34U5HtyP+OyBI7nwzj+JyvYrqLCtQuEhNF95qLNQ5ivp6ydngSep37JUDIALCfc5PcN/CUfVPoho+AynbsJPEkC4sWiJr1TWmF1bXDWv4hNgQ5B97zWHQXrs24VktaO3dwZJ4PuQdy/5kQGWIdwSdSDc968pBwe/KfkrOHeFyTI7eEyYZMQJkpFxv/Va0E93gL2rwg5aQfdYz8TN8vypjMLX7alDRQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552060', 'A23126552060', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 91.00, 84.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '9dd15f7b84786bd35302d25cb9ce17a864ff52b5b92acd0eefda047c36c1f542', 'CERTIFIED', 'PUBLIC',
            8.40, 9.03, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'QPly6FcnJ2qAePvn4Mpjy9EewFinfBV2lU53l+NxNExiMKS1Uycq02WedPEjzPxSKyOtOkVi09sBPek/A8fNS91P0NDzhUEsz29QooShUbHlDSVG4quYqf89c3E9WdyYDep6YqfLKJ8yqzW1WDkZ3SDigWllIT3RozBWZWAIKBahKbcWopYdLJ8jrjoLiUr9GpFcsFjeS2RjWAbQqN+6ZP90oNkvNHYe5gIYnYHmoC8YtjArSJIL/urvoDLGELxux1SWMetdGdZF9r1aZ4ZsjDrbsWmGt8i5dgthY84ctPAea7lcmjeQhkLwesdckRiWAjr1nx1w4vE4++ZhnEvLcQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552061', 'A23126552061', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 91.10, 89.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '75ab6e0bc27958d5df496b45956fb5a7df37f07cae33a97a261b03352d7330e6', 'CERTIFIED', 'PUBLIC',
            8.95, 9.37, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'aCthwUXftXjlObulaEpNtYyBty92gbDHdVh9eLTcyYHCCu2ylgOTFTKam8dW5SKndew8TPGqHwGl2m58ci4ULEv86gmGQYc2Kf1FAckbIf+FbmsmTeby28PifZUPcUQGV2wdHjmSdg4MoYUP3mhRgYhIluGU9lDP41a/ACSDq4WF3I+r+YBjU/ZyylipZtzr3TI3r05i0YEwvWXuzqGrj93U3qBEj4vjCqnV3dFn2/EgyrlJJT9W9XV+93mg4MgfTHh+WsckZ389glBC2wcvwYVM6ALz0Kt1pG8cHs/A0yHuh/m1Mcv1t4rCem8AEiM+nPWg/Fzy1IIHwlvU66YbMQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552063', 'A23126552063', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'd0af8defd771bdd8535051d163bc65ac0c4d7233026fff4def05c88abd2b97b5', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'fHadeKtPL3ZpT44fSDiCVWvZCrFBl/zSRtpD2DhnlmNEy9pT85jj8Pay/W8AaUV+lpO3823FbQuDlgMjrp12AXWv5MmIPTNs4VGzVrr7VxO+NIQDWxfPna8d+9eJQxYjBLnPk0OELcThDrVpHV6HOUk6j+gjUEMwRh58dYGjWDqDZeeuN6EwzKd1CaBR2X/lJdF0qpk+gfr95qxGd45XzdHpx53g6qiuufaCzOfB3lu9CQBpQkDVMLanadxpAlbFX+uQ09wYnP9MXEHNQIR6zsTU2o2f5dkyhLnMrPYRF625KZIwQE+JBaxR/TYZOUmC/HV8ntjrd0HBUrtWs30lEA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552064', 'A23126552064', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 91.40, 97.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '4ef97a70e7bd8b7fd51f73f8db50f90d50430c8454fd7a5247b86267cc7590f3', 'CERTIFIED', 'PUBLIC',
            9.75, 9.73, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'TMwQghasj0Vj+qeIbCmnAM4ATMudz6N0xb3LNVKmrnJaN1oyMs96i9O+u2uZ/4/Ao/cqQwR7aRLa3iM7RRqpFhIuWyasowQvIlGyitmcmOYoQQ7Qbj3OBi0GGk4RBeUDfWifjR98E6keQqufbeE7/5hkKVkVUxBnTB/85KLckwotWiFagH6Pign5pDfxaBNpdAi8gPbfVhgboAYBm0m+64FOAvy3RKTyxrncxGM0rA/zdonqVWjag9c9Db5UVYFqAc0XaRCYWrqtli0veWG+JKTipuqPxGodcmF7jndeVEvysKc/q47zwMjexcnecQHHFKJF020tFibA6AxcU1PFcA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552065', 'A23126552065', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 91.50, 86.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a9913048b4a162d51f004aa2f23a880b9e79782cb960be80bc2ab28fcd09c507', 'CERTIFIED', 'PUBLIC',
            8.68, 9.12, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'O0XA2Qz6ltibfO87RvjfbC9fxsj/l9b+TwZjVWhbLE+b3/SoRdMFyq+Ren/gcvktgJgyPQdi/kggPbll1IAvqAD34HERBZ96bx5CWUti4WtSzBYjzfbjIrK3uiRQFlnJ2ZB/mb189G2z0cNX8rtsorvdaScYbcWKLGY0SWg1wW9gpWfKo1NouM+LhubPh9i803ddDYT9qlg6VSbRu9tCHR/iCh/0EZZwuSaGdXdxIyXAs6O4+nqyS0FizuEIhCxUusLLvnSQ/Z7Pao688VBwT+5P453VwdikKNTGzJcLYgR+6l9S7b/sXlZkHDeYbJ7CjC+4c0PSJZHbHIKjO76UDA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552066', 'A23126552066', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 91.60, 88.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'eb254b3448471e53ea3be98b6522c6d964dafedf71f30c58d1a772e90748f60d', 'CERTIFIED', 'PUBLIC',
            8.80, 9.02, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'iWs/48uSgJFAMK8dTKROzWnrVlATkEdEOgBMDsI7PXkpgkzevc8ZxFK23gmFx9g4tNMMhDPN4OCwfFMXE06pVMutMJhzQX+40EaqK4qqrP6OprPzmxPaf4NXbynE87aBjBltOjDRcNiIOYnXFcqPacuwNoO02vv8zQjgwYhIPZX4sVquiSrgVXDFxMoz7DYWDXWdA2Ct4wP1RQgrzB1ld4UqPdx/kIQBsZCmU8OX+s1W67ZO4kNCjohItqFZgKvmZF2WkQPiyegCai3DL73Qmd3c18ovvGkxY9htrZeXufRbsrqdlW/tkYrbuRnv4VGRU/z1qG6lVF9crTdzKasaRQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552067', 'A23126552067', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 91.70, 89.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b888b0f6ce46a5ce7a66125dafb3217a7aea5c3dab49eafad4775e237b714685', 'CERTIFIED', 'PUBLIC',
            8.95, 9.08, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'doCW/RmrRNvE8/NjEbMMknFtAGYhikKUuI/5SkIASWWf8jca/srSc830ITkZYIx1bKubaYSOkU2NSp5qII5mbmYKo4sgnClevI66wRylrLRGDO6KBpYkFU7w/nHcw1zPp1a4Mi9SVW82VS7T6SR6QAj8Qt0bxRtgVz5KquaFz4upvzd3WTE8LsgeqEfEUODMzL/eREV5kN90JwjjqAKljSfFgo8UWKfHDkaeF+n6TEdz9p8zqL9ruARPgV1c6n5E8Zo5S8kK3VGbk4ss0wvxBuHVJBgGdr3zcwY2Buvlv/lS+xARTdxdpNwq56HDjBiKgvssj7u/KpvXjFydO1zY7A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552068', 'A23126552068', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 91.80, 83.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '957494054ed76e420e523d214629e4578c546ae0ed8390b84c098b4b80a0ba6e', 'CERTIFIED', 'PUBLIC',
            8.38, 7.91, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'r7JUzdze1lAifQC+rjAviwi0zsP7S+2ole06+1mnlHnBA+Ke4poOs7RmLezKbRiG+LndSCC00IrrWOF8ozy49w4Lw8FV2aRAkOePoVbrnkvoqGDGyQDxuJmf7WkWktqlFffV43g5+HTzcZzXvgrNPZAEEV/fYp0UD94RtPoT6SD27uhyb2y0BtdQZbgvhVQV8TDioiSqAOIlNGPzz1XCsAiL2OvcHDt96uVYrUc3dtUGSBUDRpChokH1eCxUyQdWd7PjuICokTOt2BKzVhI8cmmp1RqEgfFvbh8AifssbvrAAMQ+nzxSPBc5NWLJZhFx6rVgCpFf6c+GnImEhu0RZQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552069', 'A23126552069', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 91.90, 91.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '8b11fcbe25ae88ecf3b2dcc546efc34d9978b1e45da12cebdae444ed4abfb5d8', 'CERTIFIED', 'PUBLIC',
            9.15, 9.22, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'g9D6ycXB6tAIpsgY4ucFLCi6X7OYoO4W1W8wxMXyxp2Cde58utjU3fe+H0H0U3RQPEqaC/5+dSc6AOaREm+pDwKlPGsUJymcHpCf3C9Cz35lUC2qAUvrd37BEnXYNCDgN0rmJUIpYrHTKboW+F9PLXumc/U1bOa1RqkzpRhueAibnIln3L/YHvF0a7RbP8p5D/SXhr9NoWh5UvGlb4RXjc+9ABvTTRQz5s1IipF+3WOv4YyZ6oQaUc5qisgmlpdmZOpRBCXFeC6AlyBUzmDM7a6swkYnxCHBP+pZeUZj6i+J6GzJSYcegAoNcCYT3hS2XoTf10beQ6XniEOYOrAYmw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552070', 'A23126552070', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '9b77f11b9c91f47ff7ecb234b1d6f552d4adf572d47d06378741dc8c8df4d441', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'OBd87Nz7PQpAZECyHwBY20i3rPQNvV4qatIieGf7FaVQ3RwRm5kgyeeaWga0eSaqF59F2mxIdM1HSSI/qCQYFwHBVqzBYoGxOjZLZs7tbzwpc/luIE2cgXAAhfF03MValUUk0LYEQptyQa6bCDNRPNW+V+OLQO5TQXC0nWDhI4fsd385zFk0s/H2S2edqQcqk+jwfPUI6kA44KcbpJYf1fh2kNupQLf+RGdNgwgVtQRpGTImzXms4/nS0xDSVJJlyqH0Q6ZidynwPkJaBRnTI0bXBdBCBtdUSFyPgAbb8hUrmSJ+sTA8YTw0GFY9vAWwYtiE510g4yBRKMAbaOvo7A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552071', 'A23126552071', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 92.10, 80.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a477275fb4edce4eb2eaa026ec3b22ba460dae7ec69bcf23036aba63ae728bce', 'CERTIFIED', 'PUBLIC',
            8.08, 8.32, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ZQjXNne0g4Mzjpo5u+5X4aBX2X7ZuA10zH6T4VdFqxnU35jrhx/VwDq2k3HO4+Lx1HgQAhzD9CXMvFXTm8Dywk0/knp4yDWM56+efvaWLziJfDZ4fpenqn4NdC+rbeIqCHp6ecW6dCk/9eFPvYccG4nywqvm3+jsp0GdD6MwQUGRGqC/WGHjA0+C1nRGr74uTibLh9qf/7it61njoUu5ebS6UXI4Wrxo+E9hz59MdiR23e2lQgRM09rA8Vn0XvD2mQDtXYQ5js4RmbbpD30EbN/Eyasa34wh7n2kQuJ2MDf+fNmda7F4EBXo3BkN/rs4ia+/pYK/Pw/krxegitifwg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552072', 'A23126552072', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 92.20, 84.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ac0f35f9ad22127749ffe5d9d26a04cf6bae7b0cd92ead8bbfee5ccdf063fbe6', 'CERTIFIED', 'PUBLIC',
            8.40, 8.80, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ExkWRDBoBNBe5eMA57P4RLZBEXnGHzcjnM+9mgP8dUgtjgP32waB+J+YcJa1vw8FyxKcP4VbjV9nkAwwqnb7itmLa0KXoiunpB1RrjLIdfVmgW+oN5Z4d8mSoqTjKqb3onCRm+AlGuY3vTqyzSkyEORhedTCCNDuMqXfpy2Iq8y363aU0az4h/xgTtjcWImWm1jW9iDsIVMl4A2RpwGxBaLdM5qT6ljn+Vd34Yp/O31RK9eVxQBgZnkK/3CBDqmlW/4LGGviLGLjSQZDm6KzStIKSobQRHOVtTQ/ly7Tpu1yosyQ4f+OBRziagt0NwzWuvAhSVr5B2qlIQmxa8dyUA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552073', 'A23126552073', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 92.30, 86.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c53ae5d9539a446c98aec419c4f913f3e98819508f085a82763e2de8dc39eef5', 'CERTIFIED', 'PUBLIC',
            8.65, 8.64, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'I6XwciuRCReQgis4IhR0c6ijwOAd5EI9nJjrHSwqu5QgpSyUONCcP3KArDhiyLuOke/Yw9RdnLr462X49ovrFbjkGlg65dlNVc7KiQdotkhVegu5G4nHu68xXI1gotWQB6eyhULARsaB1zJR7Vp+8qpl5p1R3h3mU1QgHkkwbYEj8A2H6+S98JHSrj4miDngUUubY1ho8WR48P9sByCdRcHK390x1M/wrOona7z0dNJ1W2yCpMLO5lcLU5VmNYZtTjUq/5Hr1BJtptlqSE+aSULbOqFwWi3XW/dSRcDw4OxacaHS92K1nMKOfKdCCAWmyXlxXqHLrdCyac2B285ZwQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552074', 'A23126552074', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 92.40, 86.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0cfb4fb5193a5d4bd81fc07c063f375ae9ae3602995dda97c56e5ce56d8f4245', 'CERTIFIED', 'PUBLIC',
            8.63, 8.73, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'UOmhBkp1HNCLEyUjJtqnaeFbsCBv04dpi0OikeOUWCSlLLrRpim9sFDdW0rme4nNYa23DPhp/mRsUWGNexZyprowgtuwFAOi3/y3Ko6iwfv+qAPAc/vVvmDtl4pckCG6jroRq48WnlfOyoYJc7hFIqy4btAVk72d+8zgYE5LEXosk6OznJrzgaK/LO1ip6FFBx46R9NM0NE3tR0H7trkythfaRQaPoQ6i7zAvgkW/yZ4/zF5dp1t0vENk34cgt76MejIrI7lARstLWBFAhYu2TeLJ1nNgrhRnXfGV2N+1yzke/useKDVHJyLoqeM7B38nuAmBUuyBvDAV6KxbhHnSw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552075', 'A23126552075', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 92.50, 87.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0d26d2f87d6ed9cb82028ffb090b5eafff39fb253a784a1a5d248ad09ebc0731', 'CERTIFIED', 'PUBLIC',
            8.78, 8.74, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'D1DDRr5df+N4Uznw/y0u5z5AOPm8uG5Oq7wMQMpVVEgm8PB5Cy9cXBBC9Khhm+wTeXNzAFw8/cmNOfSOSDX8vj3EPR64GAx2byh0+rHWNaoCHcwCmjOdFSwTtjCiJ8+2osvcdB4F/WyTpbHY7BXDAnQhqrdmPS8d/Xx4mL2qQvol/PjWOJj+DPlxepoZl3ATjx0drp38qU7hczif/zf/65qw60ZZUwNWAD8vYCgpWiXq/gchNXYDYQ9P7xklpXATZEXr/XOBYlDSwGFB8K/8o92RBzYKodfghYXDBBGXs4qltXoWyEpygCu7CEC+qxezK8MYRvbd6b9COfHUypJbWQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552076', 'A23126552076', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 92.60, 79.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '309257caac840ed619a085e8dc2c57f10e0f5dd1c8500e9e58547c669519356c', 'CERTIFIED', 'PUBLIC',
            7.93, 8.28, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ITfIqRNoZvWrF/bm+Fqqtib7OokoBsckyfE45co29i6jXQf/7gJZSZXRHjAaEpGb0V7KiVcRiq6subYGq1P9AyCxg/idGggVlQcEH5jHqC9f0fihQRRogsjFN7Ymb1NPBug1hlfcDrt6WtflrmFgQjxphbINRIr3VvkCuZKOUNMrupeFRHshWgJMAqGUDp1KnLfgwxI6/4ARNLdEK9SZCde8C86Prq0F30QonpNIDpowc+l/3jQNXp1IFNYAszBwhZRqc2quSZv/B3skc5hglOBSZmPEIED3TXqU2Hvwi4GhSYx3zP3K6cU92DxwuwVAJ7n2TH7UNQsImjU4Kldg3Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552077', 'A23126552077', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 92.70, 78.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '81b3af88f540bcbbc16171a25fa72159efe333716cb6b416fc2e927dd94c95ce', 'CERTIFIED', 'PUBLIC',
            7.88, 7.92, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'WWeWZAuHzQ4FEtXmOF76yqeBjjbZ6beo9ou66mTa37mGlbb8Zk3w22XHfX6w7L5XOXi82Y8a+6pDoDDhHHbKoWDAoWRxcRbf71yLz7GqD/d7UOoMLDGxf3whrYzDBL7W2HWjojxpZPcE3fO4LdHOJbStp8qId+i2m/crZstDQ4tpojGrhky2VYTTsB6ojIEgWNF0HLX/KqK9IM6hbY8fzxV8NQCGx/wjPqPnHLZdk8Hr5W8K6Dj28CwPLo3h1MguX/8Uj7UcpBM12yAKUijxK9aNSpLn1JfOxawMIjxtQf2fGH96mAiqF93JkG7CZwVY6TslMGyTUlsGLYM/facA5Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552078', 'A23126552078', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 92.80, 72.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd2391a657cd4da15e3d82b1877817a7947487447c422f4923ec5ea62b2282a23', 'CERTIFIED', 'PUBLIC',
            7.25, 7.40, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'm9bIQ7xX+ONeZLWs//55+mVeI4aq3zWbRyWQK0k60c88iJnocouz8RtVvU7NVAJAnMoxo25GpbazSdxMMs25GoRcRtQGAqkMwqJqbtPUaQgYA6ut4lIvDj4caXSVxw+RM2sNqy/mP8ipUA/9o/4pq6V0zcc6ZTtmw+fddBf7EZaKLeneMuHQ501OMLyLf0O/e121AFpk8MuZ9oeZdZHZQT12h2j7xQtWxjyUA90K+wPM5p/xSTI7zyrmW/F1mXL8JVeiop7EbndnZYOc5btZk58zFornIRDxs2DtrVZdn6eqIIdnXC1PAx0PqxfGxjG+5C7FoKP5ug3QY0Gt3ZJV6w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552079', 'A23126552079', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 92.90, 76.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2647ef8c138b510a3b5f590439abd0518c4766e5894297d3825ca6f72ab43752', 'CERTIFIED', 'PUBLIC',
            7.63, 7.66, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'gNpKrExGX2BSR+xvJ9OomiIu+F228YoBUBhehDeV7tX0un307s5AioaSBkMTPteQPwoDSU394LaykVpTSnPnLvjbEfsUMXXxvCJW7grgUBYzGDWZiNLwezWySr0puJy1mhccm+20iZbRb4BFUfAtK3R+d6BC6EkqNBktOPeuZTwFPCuvyVX1pVnQRMQ8U4j4geuinpMrwn3Nln0qsXfWAylHJG8SUaS8zYADnAqQcaqWVWCTizDU5N5BI1ULYR//ikIfUM+nB3APVajYja2TAp84AJnqIfZXOxb3xWGO8B5Gb5OrSLkDoLNivqsIsif8ZsySv55Xb5QgPDcavt5fGQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552080', 'A23126552080', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '9d89aea14a8b340c7f9313ac5b9a6e4e613aba078350166adc777f49d24beb61', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'qjmpaIXGSq3UvUhIGMmmLuAHo2qVh69kbZYdZdGbaaon7a9FQhqtvoLpglBeMvzHlRE8+MqZD6tQ6NSZ7hyb/r1bspGXvrOleLMNUA4O/5kuqnemiOTxZs0/wPAhDHkZRsve7KTiqJp3YbjQlveWqlx+Y0WWrBbRyTtsHbZhGfma6JJ6tcbEk9RYu3hYPsdwgMCrnf5fUwcnKbJnGM7Lh3ejNu7ppis3bOndhH+mgOfLGFEMAUZ7ArjPNDNfzBMTAksCBNsgKzwLK6k5udR27+RWVI80wRrHUDKzqF3MKPEZMTD/xPsMEpnr7DqrIvEESeVzqCmCV6/15678WsIK2Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552081', 'A23126552081', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 93.10, 86.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '3eba1cd7927d392baaa0419a8d8d5554aaccb46163ffd5102d977c8703cdef28', 'CERTIFIED', 'PUBLIC',
            8.65, 8.94, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'lzhjgKCSpa5Da80R57n7J2XmkS21bhFbGIcwrXS21af6kl++UFhPB/L6kO1+CkN1u05/UlEI738xgdWZYpQWzxfbbhtNtftQJtbPJzlaFdtNF0Zkb/fr42OdrKJ8HRNikvNHe+N6wiK6cniCNOAqmnjMgH9DdUbZoeDTuaK3o9wN+jH5ZjIO3V2GMJ2R4pLXgaKMp/asIUrS1dgy0BIxbuGKP6M2XDBqjQrZJKqCA1CpY62CXrVAMxW7B1yNaQLAGI/5ZC6zb254Bk/sf7xuZet4JcIqjnfF9tu3gJwCq+PwBL8JTDfJUIxq5QADy+lVsbeUYgZtjXVtyljFxIqU8g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552082', 'A23126552082', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 93.20, 91.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e0e3efd71d87bc9e51b63cd2c2dc0896541d508d6c1c5b44eec065c74b2e0587', 'CERTIFIED', 'PUBLIC',
            9.15, 9.26, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'cv/asWwpH2eW/hxP9em/5a5XJfjoDX6lpKHEN2Jxe2agT9BSE17/39A1L+tEj60DnLdu1mL7YrsjzrTJ2qraavqgIeyxxoP89t3ppFtsbOdcK6rR5vzysGufFA7DXzQOlPNeK2g4YTFlOiyQ3XODpS0sujaa1WoetdffkFPjQkJNLDY5P4efhTLhF2Vs+u0/WfHf0+uEX5KWGVPytXdy6fN6csdoTGpILUkBx9lpLX0D14rov9KtQQyMJO+VyrGjC0AMNZa2i4Gv2XPWLFb6oD8Ajb7XHRZ8uvB9BRI/2Y/jRvwCTL8btQPGt0SbCaktRtQ0seZTyG6yyokO6N+caA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552083', 'A23126552083', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 93.30, 84.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c7faad77779e0adc0bcb743cde4e1971dcadc56a0ac2bd9db65c9002c13b0a98', 'CERTIFIED', 'PUBLIC',
            8.43, 8.93, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Xpo0jDPL51HlS1rekw1euQMbyneET7M4+r1m9hqQgLAvgh9Jc94Ay8tRt+buu/sZtp+b+Mxp3Vtn5cIvOUWifkCssAhshcQCSbyJgqs4eXX4VHUV/KzRFh6KLJ8qZx5iMJYwpRS+Jm+UXX9yHIFQprAPIgATFNhEx0hL2StKfwT+Q6sYsDSgh0jFJVvGsr2s8MB4k6A3JioWFjVGUH/jDT7guxV9cjhPReTZh5wp6CllAc+eSxTAIhcs0Y1kUZY9y/5mmXg5ycnnbEdbRqgTOIJrfVppRSar1ShRRdjhhb0HnV/s+s7IUCtaawyYSe6stXUV7BpVHBbDLZy3pRAwEw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126552084', 'A23126552084', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
            '2025-11-15', '2026-05-30', 93.40, 77.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '92941e9f48c684e00d7a1cb35faa137ff6a1f5cf3a4275befe9b0541ea8939b0', 'CERTIFIED', 'PUBLIC',
            7.78, 7.46, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'HME72e+x0/X0TkmUVy7GdMZmj+A6rosnJXa84C0jxwwrCFjgBoV+d5MzbFNNG7cil5igVd4nko2rYteTG0/n3y++6Yomwfi1RjbTTv6M3wCBVFmgGeIZomYLkQdMZr3whCtbQw1p7cRR8AyIPQUwN5K8KKEDy4c2H1Nnh/N8n92XsVnmoTfMOgIXY3ZYZbphEEaKJ+r7c5OMbGyoRMuKUw4Up3IEBbj9okSj1whUEsfB9Bva/eMPgi7un9XH4zKtGYsSK7qCRAO/G2FxEWhEvY0cHFBcfZ2Jvs0z5b/frVE8Qv8cLPj/2dleGngQn3S/liqExFfsF0m6+/g2FD079Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512001', 'A23126512001', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 85.10, 74.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c5e08ef7a36f3b186dde48bea57e9bdd186f368ebb05fe49bf6b825d2eca167c', 'CERTIFIED', 'PUBLIC',
            7.49, 8.12, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NQ7F7cGaxOsptjCuH01qM1NfEG2Ah+lyPSluTykHw9cOmMYCn8chwq8A/nt7NMEGOEDFpHmehaX+LBc6Tu2BdOuNZ6fZa8elwOvqBAGRlpuwqTwu9vLArKGTZf93/8v83YYhhN5a/XKbi+CT5SFlroAI20YH2i95jLhOElD3wHzb/ktxbdHtDO/8i6bVtRAU9FECZL1zI1qyf6M/sGYKDw3cbqbOEcRAurdfDZO4XmU054JYw+3qvF6b7Tev3akcSAaC67UiOzo6oQZ5uNnQgfrFvjQPvK+rGTIg8ejb2ANDzln1dA+7x2U1ac6GS3l3+/U0AqnlHgEuJnfy8aUB9A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512002', 'A23126512002', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 85.20, 71.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '835423fe1247db0222448c956b24172068834b80135c4aec8b6b9f21677f67d4', 'CERTIFIED', 'PUBLIC',
            7.18, 8.04, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'QF+HOElJfKhkxyWdFbHm4XAKsF4/QRNAQA65+0UeFVPAcgT9DTwzfxTs1zg135IbEi2pcx5sC+kq9CMQT01fKxCwjz5VMGL3AbZeKq4235mbP4mE50osPXuI1zqQEkCA4rNgoS8qcGJwtcV8BJM6pxzWYaIdfwAjrzbyZ0KUlv71z+mTOA+SA1k1ZrZmBhf9UDRUVT8eYKJDCPcTUez44Ng/Mzh0VRHZXqtVttoY89BPsHPInfyF9gXqkhAx7Jd+FZjgh3HMljTCM3ssYnuhuam4De9aHJ2TDfpUoypanV5fxWfIe8uh6Rw2uhNmuiAWOEGuqlaheyf0AFMmMT+BHg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512003', 'A23126512003', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 85.30, 87.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6ef912d6ef13a465bd74b31e1d2f440900e13760ccfa70ea828417cc6b60312a', 'CERTIFIED', 'PUBLIC',
            8.78, 9.28, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'JXKXDFy04nKBL7B4uqmPdn0/bqd4t4q7efupMpnygaPsG5K6Zs6K6xXkl68NA22UR7FiBhvmPVu0XUv7THgkA4Gzk32sfEl2eRkZJyuoEFZRQBVdtVSM7bbSE6OiPquLbyf+tnE87VdsYLuMF5eIuEMjag9y3DZbHqGEO8TYgwMkqsHp/hzXrjhglfnwgQrx2hrzOat8Ina5VdW6BYN00R0DEP2gh57F8fhNBgW0BWecpDLDqQ2xtwV4t/0qg2WH0Sx95rLLO9oA2BKTqrKyJHtuh+QRDz4BmNIvl0q1DVzVwwBAkNW+ulQiT5SW/cIXdjFFYNuFVs8gpPxPBMjaYQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512004', 'A23126512004', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 85.40, 83.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c68b3d657b7b6a49bbbb19b2bea2bd198a4c460ebf71deca84cda4f83a0c5507', 'CERTIFIED', 'PUBLIC',
            8.36, 7.60, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'AmM+7ZY8AqPXldLbCDwfIoI7AVeVctNo5P5xJvOsZSio586ZfgcJVjOXsdO5XETCDjrhb2SZpJaq8g9FkQs2WxwKl4ND7G2Ot0jpskQayeTxYCUoPTuxXNKV2HYejGRU5LEWx2gsPlvZJIt+wkLWEmyL1vHyjjRglE5ZUCDDGuGFlJ6JTcNJ7+KcsBwDe0ZBmCcLIK2FBabbYyZx88znE6+AtTwzQmNPeCuJzPte3+wlYvV8Tca+NuJdlRYD4hHLo3UbQPsbmCsTmysksvoryrdYdGV1ToIO7p2S2EEXXz0noH6EyCBSuqCQkCKalrFe5PQrY9JK5wHBmnOqsJppvQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512005', 'A23126512005', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 85.50, 87.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e8f418d8b0b77083651987340eafc40166293c2c9a75625b440f78f0fe8698cb', 'CERTIFIED', 'PUBLIC',
            8.71, 8.12, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'EpyI2/hQ4hY1VgHRdOMQj3FFji1udGikQyKlSmEoygG4gT1nyZrzr/7/U9GUgSSkLeYmnB3mSFehc02FKhdlrC28x+frtZ182/slYmP7X2TFldaE1BnuB5Q/Siqx+k7k/Y1rOEmlyEwh1HYSIuzNg6uGz+Z3vAofUvdDvRZVkg3d0JzKoXXIj+dpUhbhQdFEgFwNH0zE0tZvQdkym9Z+d6nnrG19I95hzVnMWSoU70O2D0Q9j8EOxQF9I0st8dwNz9BzJ3c6XUfmj68u3RzprfM0RJhvYSWVVzzurBDUabBW5GDxrgQBkdO4UIOdMgN045fU/FHsOVTlgKvqYvPVog==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512006', 'A23126512006', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 85.60, 83.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1d1b23ff4dce9cd05b8cf10ac87fa29c22e06374c8d87521aa947c4834db4c35', 'CERTIFIED', 'PUBLIC',
            8.38, 8.10, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'LgnJFBkHl41NykdddxCJ0g+rFbkVyrS9av95RHcnubin/Jv+TpOkFfI5+juHXkQdVO0AA9ng6Ts2H0OburtNa8nQnJ3XWMxiiuUa9PllLEh++O5VRt52SpoYnrOcDtxSXhpLgUff4iviYDaNQTjjMUGrop8EzIFcWWopWO1y9OHAYWQpZCFCPKziqZoqr9Ub0dCZhNqs7xuiFgC5m+wdFOVV5VnFcm6TNT9UcNn6YxQyd1umWEfqTWMT8F8WzI7FThkmzqN/xpi70pZ/TXhB53a3z3dx1lRvIYY2rDJbIWpFNgiqD0eLFYm0ibhR4j3bvsD5JdYcajRkvB3BvGzK5g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512007', 'A23126512007', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '95f8448754d955691f43b8eea404f2754b42f37701b4efa6f1e3396de62d166c', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 4, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'cZHgm/nyNbIGG3HEVUOMlLRDUC+a2ITNzQ0brtSnuTy1SwQUFxOJ9qsy5xy79wF/iVQsuXvPFBFTzTZEhuLJv9NiCI4Yme43tH/7b6GW7I42b2vZbHyqUFr2PDiA19P/7uQ/VxOjPc1ToOKOrFs2TyQrfRlNXjyThumq+WezDlpjuPwT8sJlkVx7lsn9mmBfJJPoF2GXJPfr4kNFje1iIpLQ9Ah51ooeNYN5DLRvQ2chx36OcGPsf58UueBzXMeWR9Z5eDZidOSU/OKevZrTkxFErAoHsHoDpcBWX+g6Vcv9j3r0TmylQfheDavQD8A+OlIP60MIXD3YMNtR13kDRg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512008', 'A23126512008', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'c4ea1684318f5e7a2f3b6d4648e45d73606a188b5a04709fa9bab133556c3de1', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'D6JcM77+PT+dN7lQBCqShBW9nxMhuFpQUXY69uKhGRWL/etVhWWIOD8wCtuH0spRuy7wDWio4zBZdPnLhSG+0E+P0qebySOTspCvk25a7vARmlKfqQ8hM77NWJ9odPD/pZ+jMaD0JVtVMHN4JW2mNEIr38weFkq5yVfigUreyJQ/D9pwDY08mII+siCQoG/UDUK9N9wAx74YJwhCBZRdzthsezOhHd1CFCYUzWxq5JrpYp+OKUCynd93cL1zXGlJu9tpVH+iq+iWyOQM3+pzE6zcpbt7zfVbFOfF7fFjwia6etlwcL9mJYCbPUsna8Yx4B2sJWhrmgfSn7lWe549Ew==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512009', 'A23126512009', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 85.90, 97.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '85281dc576a18473106641ac0545af639931e90bdbf6ca21ab46efa2192b1b44', 'CERTIFIED', 'PUBLIC',
            9.78, 9.64, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'GGWO2aXxdu2rbhzrIX4PIrG1MdkJaFu+AMUJQJGNAhJuT7sFTq/2g76+Ls6owiojUl1aVNi2/wEXilUv4RMD36c5+pi/BC62p7MQntxBdDVRU6fKkxYvEhqj4Y3qEKGup4iR3a9pRf9P4GlwPytYRjR4XMaRJpIZvW5hIPUjUYrVyTHWex1cYKbrhmhS124TMkdRXygjGJDONnEkRriZ0/i24/yVg4TbGXWVxj7XjRTtcDZVUg5SIHo9Dp3GjG1qd0ApESFyQ8/RW3rdFyCb78h8oipzt0jeeCbFdAedzWZXUR+LCDaDRzh5LUlPR3UI0HIG1QmnDhItQNzH9uDYkQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512010', 'A23126512010', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 86.00, 74.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '8fc28c982ffed9b6ea2c17fc269bbcf6bbd9c69bf02aacb9d6caf08322c4bd64', 'CERTIFIED', 'PUBLIC',
            7.42, 7.38, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'QT1w4jUhrVtobF98nHc/rdENC3OSeNOzLs1nrXqOTWuT/pCEpgy2ENXQ8Cu7pg08uKhI2cAs8wjcUV2+u/1ZNq7CU2uzHfnaMztH6CKXSFjwPXz6alWltOqiIF+O5VdvSnaLBurf3ow2JpKuOjSyXrpUeARhLN5oA6RjYOQS4f6MgJIZMppHrMR/aPc7sQbWjeQ4Fqy5RI2qWMdSADSLudtx4i7f8bF/aJukR7uwwwPlXRQBT1JDyhJBsdIp27ifbcfbdv2Nf6NYLewHX4+uKdqu8nhrpOFxsgh0ZVAFgiMk7M4+ZInx+xWLP3IWFURqBJRy7Xzw0XB7xv3WSYo12w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512011', 'A23126512011', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 86.10, 85.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '3c6cb050330988c3806577fad80c490ec906bb1e4a16db60a3125d830d9ed07c', 'CERTIFIED', 'PUBLIC',
            8.56, 8.88, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'JkTWyVH65uj3X3TqOW7ze4qv7M+WxbAYmwWR7rIOn1NprJImiqlftOatDP0AfVjzccd/ca6RHwQ/pdfCzPaoVWVg2G1VkJu7POffLlT7aBXVkailSLzC1ZxG35AADWq5epFze51jfTIxsnUy2bWyM2KsPFdqPu8A5cRrz6VZ1k7MJv7vAxneUyEIpyqiRbBqFY7JgsEusWSzmIgYM/40Xe8ZKtpNKUUYAadL5q/U2MpaF/rC1IsQ1PSrvgRr4yNor5hmlB8GAMnLEqtxWl/577vceVbqZ2JEDNp/nGuEOcbQs7IE2QQvqsh7Eu/o19ZauhKnqaYpGauRAAqQDJxFvQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512012', 'A23126512012', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 86.20, 77.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a229ab828c2049f65dc9d4c6cc4667dcefd8ce026083d38111b0ad47679c0072', 'CERTIFIED', 'PUBLIC',
            7.76, 7.87, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'X+E+CJjpUzEtdhzLWQuSLiDnRZRCA8Vzfib7eVdNwVK9z7QXj18L99EdTLzkeybcTtllY9jRY1IHI85E13HvPylbtn2DqW9aebmFlAbuGxe1FPx/21yyrjwACEb2lZANdCqdF7/G6viy9J74yLjpuX5G5RkU8nKa8d/cb8XCrvJZLdJC+pKsjrPzYFc32gjYBmQLhvIbUGIzZzh0QHWm13i81eDOe5Mt5LLxxgMibRIcK5gYKBtIln8vtF+bC/KUbE829HmG7unZzyY3hL4q3kRP+wa90+QyE4Go233F3BtikrCTORi5htQlU48CvK+CnKDu6N1z2YZcDo7aC+tRxw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512013', 'A23126512013', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 86.30, 54.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '48226f64e4474cd2738c23dd05e55a68b3c9b0e23f13858d39c74d5bdda7c6a8', 'CERTIFIED', 'PUBLIC',
            5.44, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'BOJVGg6EMjcCwROxKZJCY7039zHKGx/6TwwfI6vdTXCcO/gbXLGpUcvGtc1EunjXsYnZrflFYW51wdnY6mcxFG0z74iiI3X5KgDZBCqwXkgeJo/7cMVEnptZQpLKKB1PW8mZWmtw/wAD+/FZRW3b3zAa9Jfigs+sIRDQ29gMBlxz3iuF0L39eNQIN34t+nSZ3KADxwI5W3pj0WpHPZYDrsWDOhJqRsvUwWuqKHSt0TROK6BTHkunNoHMJ1+so55oZj5LdiAnQUsQ/QBbYSfaEMPo0Uo5Y2Mb1w+lMqFRZ9LUsqfpQlA9jXhNnrfXaTqUleFqGlxuU+AZSCon3EeoiQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512014', 'A23126512014', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 86.40, 98.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b60ccfa4997adf17463e0a088e70e461022773be74573641b6851386d23520c6', 'CERTIFIED', 'PUBLIC',
            9.82, 9.81, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'AMrU53wzbD4LnY+7TCCO4GIozNIEQKBA4ImtCvsFYzoImhwKlaH9WZRWpG0x8+sKlB4JUmmP9DrKJvTw1g6Qc+YXKFXSephvqlttVS3OVEwsYncIOOrAbQ/Vzyir74zqgT3RXDY6yslJWimeGUAOYd09LDk9eGnbR5PcLHtJTYtd7r4NLGlKC1aUoA3PuGsDtqXdwJx7sTkg7q5AyLA7VUFYhmAGcoTjj5RHj7LMq18Zuluj1zAmIKOGKG6cyyl6hPo1KdWANGuCMw65QRs/DWdn4OaCRzk5B5WQXPfgkoLXEUDzexP+V0+hz/kZFwwpi9AfjTxdC1xATjmnvqAYAg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512015', 'A23126512015', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 86.50, 79.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2fbff09494571ce8fe76746ca157f356452f2275e0142ec5a8b825bf236ac15d', 'CERTIFIED', 'PUBLIC',
            7.96, 7.78, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Ak938P+3LS61Qnu1Ho97+/3yAIuJvyxNlTEVciZbyEBnt8XWpdkNT5M4T5//IHo4tJihEdD8GfuGLVETt7rIJ6EUpNdXh8m4AQGGTsy52sWW3Z03WUK57Bs1/CqT/mF7VIIUbG4CwjaZlgOpCv1ktc2K8LDFCy03krsuUpMBDlRdAJeoKKZNrFIqmIFXM6ZH1MPrNArqltu4+fwN+6mnHiZkjDmJEWU4HpxoJWKpYZDdAxkDfdpYhAf2sua1GzMkQlbap0Ovfei12ZLdi4zJp9gglF2nyhn504tJNGIECMaTSmARW1qN52w3+e7cqFPqnMl+LEAndcTmmZOXwaM6hg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512016', 'A23126512016', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 86.60, 87.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f3c8b2aeb6f35246730defed7643ab76ffdd2245d4daaab1694187f7cf1117a7', 'CERTIFIED', 'PUBLIC',
            8.78, 8.65, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'EdSBxU6V8d2/lXs07Y3o3ffp4PqsBEPqI62yNsYz8aMuPV336xZlWdU8JyQCwMIUz8RlNWg6ocRmwPm54+mGASSmohMcGmVCCqDq3rn/lujIQgzgWuJVR8SAoSujNk93TcxfIZemxlTEux9IuRN5md9eu0gvOFyuD1vJl8aUSGCgAALXeysK3PB7M/HdKnlMSnWq7hWjg0GGH6A59eT5OAMFyulrGVWhzzifShfMXUHrw9IXBaLJeZw588PQFeZEFOtlGFlhjTJ31jnD9K01HwhfpVxF4gQUQxDUrueJDoCn/eUgnfWONmsbNVAyBpzLQzwifQGtS2fRLmMFgZbdSQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512017', 'A23126512017', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'fa1d64c63afad04d1d1c65a050907d0ced196687b0bad11bfa024b4c2829a2f0', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 3, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Ws/G2aheKAtPQve9h4XMREYKACLB+Gp8hnUg6DxKT+tdp/q1njotv18YhioNMoAvzfSa71phc/Kc0vlhRFIvJMJgganOspKmWhA0uCHVKZ+gCmiPjZakiYeNKLPLyxlqv+tNF11ufq6cpRLG2EP0houlUtLiJfOYmnxmjkdhkFJoetFor6FYNFf3y+dVAjsDYUVOEuGX4BloC4/JhYUHJxWePpL+nY8dwZiW27Gl8UHVH26aDPcaMjniux5kFaFDJNP2ZDEUFRjC+CoOkgCWi27A1WIMX1+Jnh6XnGrsYuEHkyZkU41e2KIQ01ja/XxzGJHL02mdgo69ZrqCTJU+7Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512018', 'A23126512018', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 86.80, 74.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '305f1678074d07a889c9e168ce74a899065f81c6554f7ffdce554059d1645fad', 'CERTIFIED', 'PUBLIC',
            7.44, 8.51, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'rtevEhRibIAvlkRI67yGUXSj+yovkVo0H77KFPqCTqBhVhrfEHpUCWrMH3DTZ+sRGXPpS6+ZEyqHH8xSsmZXsPHXHkD7zfnlxf7dwKbokjAzl2R/dQ7dUkMLIWR9W61mlU4LElWaH6DYRlDsB2UqJLYTpWx4+UMv/ncptRWn+QpAkroVUiMCHspHBIHE2Ti/impriavjICnGmb9M8tFEwl7MN3t5JBfzswrm//+5ne9ohDX3Pctgt3jFb7kvBXQsrGPFIyh3MV3O/5bHIejrvFE9aT+cP90h1BSjf/fq/H+/6CzqEmM2HcV/f78iM+FnutcahukVJxUHkJUw5ahuAw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512019', 'A23126512019', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 86.90, 78.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0157c840e454fdbf5ba830aa52be7de81ea19e5373cf533032d17888c422eff2', 'CERTIFIED', 'PUBLIC',
            7.89, 8.29, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'LDlV8UcqWwVk9TWZdXXx8b7SDKwl5/qL2bYhti5IyfMFaQLNTSyWiXgr2uFMS4jV8+Fi60Ah4upqxKaSX378wyErNZZ6+rMWVYEnPCxnh2hhZZsLbfYCywUAIIMeI+v+4LsajNQo2MIxVjCANvTSf/7XxQg7an9Gjbd+yTHwYNQD3jrqF/SGWJOpxXRecgngKIY/YXAedef5HojZtSfHrEP1dSbnTeZdibzVJSBnrWY5kAs9TFxk4v4ze8k5I5v3rxkzwoXWxffaIOeM3UQ14sr5t2Q4eSOyy3Hagkd+WIX1HuGz98X4iLJrmxKkuLqwj0nh74qMHlFEZTD5j2xKEw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512020', 'A23126512020', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 87.00, 84.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '3906341cfda96f47b2d5e71e998e3ccd919b4185b1176fbb02434878841c1a01', 'CERTIFIED', 'PUBLIC',
            8.47, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'cuh4I0CWziBZ/E4iE+LI8PckE1An2GtKBjRF/ESmJ+2un0O/UNN78ywH/FtEqSW+367WTMbMTkgpdTbdLv7+wC0P7OfMSwmc+wF62oU1lmWvkUTQXbjaZxZsI8Gtk8Tx05Uh/sBYP5hrC5hz1NWGtF57mA7g+qSyH5ZvwbUIJChiPoLEcbQSEixuWl3sbA3+dLPVnQl/3Sbq0sEPIk9AvYVQAh7GTQkZLDzCZ+i/zsUVMowYwhn6bByk79szBm/wE6Rt9gMTCVJs0glzu17zdwp0X5dpeH2/Ln/LrUI1xeKrfNHC4M3fwsrULNyj649BVGOIz9eqmBmgTQXy25JNWw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512021', 'A23126512021', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 87.10, 87.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '50f7c8a0a55f4d7ed562767559d92da0563e929c13655c3c8bb029cb5e2b5183', 'CERTIFIED', 'PUBLIC',
            8.71, 8.78, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'GJ0d9t4omU/mqvZRyyW+bPkR4yvwgBWxGWm+rAgAYYKxfciAlVoOifDLXbvvIM8XIWPkA2qux9H56Zz7mlMEdfjOi/9mII6585c/h68lyGmBobI01PM7tsiFiMpHLayD2F3xn3ArQtb0K24wz4FbVDLKLCp0v9b2lOVNIJJLqSG02d4GVwe3Is0P6H0XDMhCIjMBXf4n0+FaFd9/qHt3A6BF6dgkdEHbKI01LPSL9uk0S0me1bESHnHPD1Zhzyiq8ZrZykQU5AHuzlTg49+FSaPJ/W0MiN0t2xnpy+DMmbKI9ivjLGkdKTxTQAbHwzN5kVEVaL+vApAKQTxjzFvZ7w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512022', 'A23126512022', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 87.20, 77.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '3c185229bdc9f46f13d10ccdcd7f8cc72ecfb6c7fc8d9b94be6b227f29e11b71', 'CERTIFIED', 'PUBLIC',
            7.76, 7.07, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'nOpCKUslZ4knmbMpvL1Q1xWFeCgXCfqfOtud632hzHAD/hXx21AleewEK1BRgk21rBA/Csly6S42DSVMHKSJd4MwoxpIOdvoQSqMhMcaM5BkrDnbCPwY9l6WvCSZrOkSyTK3Q8SrHnNGS5Y+hc9SXRCL+bAf75ZpbgQV4oFPgRn9YBgW/FCt3+2pdHtgQ2wN02zXhAYjOxR7RFqTjizxxXvpQ03vvCcZDzOri2H6vWhyPl5zNxVlmqVNfDHT8mN0sZvO+dSopoM2cDvNqcso9MaGyE4mDZqJrp7WJvIzxBBTQvN5YyXbPzLrGYf1mIH3CWGIno+fg5riIPo5QRzgXQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512023', 'A23126512023', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 87.30, 89.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'aa75238f91083c7b8173e9aea39df258ca4cdccf59b8fd93a1ee5bc2f0bb8f64', 'CERTIFIED', 'PUBLIC',
            8.98, 9.26, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'jcdFrZSIfj/Fgf/DFLQwbutAuP5n+/6McWT9UWbvR8WKG4yZe1lchJxP77FF652RndZ5zFqTagarMsHYojk5Wy+YI1GHKrNWaUVpdVCPyXDJmSiF5i2IVBDuGr60XZ5r4jTOUOaqfclL3I+50KphzvNZXL+nMPAL0sqzGK6DmnVOoeC5bbCI0wzJ0HihCZArQQudXgBG1xCkQMrJWYjy3eyU2XhGkrSLXKsTXw7ELhwVpIAnC3crLk7U4X4Hbw6Z8jKKpS5avL+e+Dv/GPevJeQ7eUYuETJUYzKT1nvzfv43kldwEM08fTHZQxX58jVkgJyZF1e8+GVbxXOcf6Jj4A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512024', 'A23126512024', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 87.40, 79.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a6ac8156d4ee5fe459c0ed313809d1305cf837d5731517c974366af3ebee30e7', 'CERTIFIED', 'PUBLIC',
            7.91, 8.56, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ds+JKdps9JxFS0kUrIrALIhL1JM9OG85nIBnjmvLiHP929uDR00cwtKjwZirswIcktrBruuZ6NWLXMJAKxzZsPtP1pq4C8HciqRRsGWfNiRfJxB4sonT2tk2vs02+eKfXbrYV4O7/sjn2wr11CaIN1XHLu4npyHV1OVZr8bygDq/z8wWa8k8ABcciSNlMsTaJAoe5kzWHu6Mb539URytIdymn3xMrxHQchPGIdMHScfO/pg3PYSJa8oR9JlEvYhiaWkZbWrUg/XklB0iDtIh0WTT4kJZiXO0xqPfQBOAXsz5/3Cscypy1A0wZ59NMD3+AG6dFMp+OgAa+1/BIfMZ+A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512025', 'A23126512025', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 87.50, 72.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2e8b32c17f2f08425b51334f9c19ca214592fbe4faa1f0d2e6869893ddb35699', 'CERTIFIED', 'PUBLIC',
            7.29, 7.26, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'pXF5vHGjQQlCgtBUzaFgCtY37EgqfdQl5zdQIUnMDpQTX6Y2RgCUWNsuF35k4M6QSW77uxoVcNLVGfBp9YSeJtztQVOVqoh3zIOOhtPDvvVshuF3UZUk+e3avsgV1lgU4oNRWNCDZFHE1OOzp/A2pdFcRGZntXLC8ZDxw689sNMEJcI0dPymoMCXHwnql58Lmft0tlKjbMYhkmHjAxNrpKy/Z3pOkkM0/f1cwn/n8HIxQkt/MMnlHj5jDTgLQ88R4z5EWpZZgRrHWm6lz5O/fPIaFrCiJd9wZLM8LpEdddBekq8DJpFmxd+zFCLiWPQt7tRLrJT4zY7aNBH3IB8puQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512026', 'A23126512026', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 87.60, 70.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '70b64665658c12c6d98ae107bc694a7aded6bd065835e66533b2fa5e12f10740', 'CERTIFIED', 'PUBLIC',
            7.00, 6.07, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'SZIN5/KZwytU9RewYBPFjno4258fLSNwaiB+aLhAvs+C/bFjFbgDZX6eQtFJLmMiDKh1M9EUor+T2FvMc94b4CntqIh/fuSE7fOr8FzRw+QcibMTthFIznLltzOUjBp18rTZDCWinu+AEZ6GBp+C7R5vRF5L4PlVueBwiCV+gGN3yWtYd4nk5a3ypv2HpsuKs0qUeqvw+04I1mMQz8j2T6lW0DvOp9fsvjo0pllb8kck9MOWHEV25Xt1lZFpU7JYgydrBT5Pa91kN1uxVKh9X1+hzz3B6OtwLlfZwQc7QNWoIlLvBQz9q9UMYwrQTs/Fm/Te8cN3HfjyuUgLcxWXFQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512028', 'A23126512028', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 87.80, 79.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c858cfec4110caf98d440e619d90647c44b6a2a40458ee5370cc11227871d7b2', 'CERTIFIED', 'PUBLIC',
            7.96, 8.36, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'AoBCv8ZukRDSFmgPea/+kBdWzK8VLWeBaDQNyFdisNwP5tAJY7iVMXS46RkQRoB5zDDf+cV3z97LqD3asUrTOS3hzMavUmtSfoY2Ps1VNNr9kYecTwnAwy8Jd8vWFHgURKZGSDtBVTDznPhqOUBuPXRpKPc/BS+Ez7m/fotG6Bg4IrJKsQhhT7D79WD2LiEOSrApRlGW8rSJ/9JCICHwt1XPefD50YpYmfcxJ58HLSO/jnzASS0qEZWVAjDHj32XkRgA4N4S9UIH2hDNPhJyEyfRrZ5nXFLUeMEvJOsqM3f6S/SwKhZlF/F1g9wqArcbuiQs+E8ceSkgQOLPy3/Ihw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512029', 'A23126512029', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 87.90, 72.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '730edb229e5477dc7662d2126b0b79756d50be041e41804adb2dcad7781e92b7', 'CERTIFIED', 'PUBLIC',
            7.22, 7.74, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ATLBYr5c/lB5bZBHWQ7vxqQQqNgSUJdOly27rD8m7KHaWEXClTAcSrNsWgf1YTBgKwvAVeRwoKUlH+XG7ZVmAh/MnOYGvW6fKU5oFc44VqYXSxhEf3SEFIQOjZBMcLx7sucinG9xsumNfTGPjfOuEgJr+fiNEzFzKKw8PD9QiGvTo05Isclgi6aDqycHfw/mRehsV3g5c241kblLKPtLmn6JLc0LKCB6nAafQ775wcvtczof1k2APcKe89D0c+nAwWqWlvMGBCq9nPXMyyPpGLI+sfKTCnzzcTsmP3HghKSI3kITxrSS/Wo69dXunBMRBSDUKtTaLrLCdpYnqYJRGg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512030', 'A23126512030', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 88.00, 90.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6e34c99806d8dc0a1c606c5b16170880ff56c4a2f0baf2caca0feebbe2aadaae', 'CERTIFIED', 'PUBLIC',
            9.07, 9.19, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'POh9+MONi9Z8BKOHhxl+MSN+wx15sIJfFB2UTrkINaenMRROq86WDNOZCfXD910CzX/MVQWo9wqoYj13mWVum04Y2nbO6qtR/yEDj8oJiN2Sc3KZMpKaNnAMZa1YFXzn3aYZEdESesHkLib2QbT6NfXZ9Ep3SoLsChFrSbyc+tDKAOSLuu/+GEGRQ4ONyNZRViOh7vlje7mzhHRIFLU4FTNV7jMxORtM/KdwNbgnAWiMqs/1P3qWy3aBiEQZz4riN4uS2cIThQxq07IufI/eTlbrZybKifOmQKVG4ABrngR7i1odbseVSroBX+/rMgMI+W/2TAiQ2m0M4hjv3og6UQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512031', 'A23126512031', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '8beaca2b64eacba0b27b190c4f7a4107c2e2c0f542975ff7f64a999f95183cde', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'gUlvnU/dGw9ESOljT/k/PHUn85EkF0NLJxYbTrTInPTE4z0YQvA7naSUYOr6fnJ+KCw5q2R+JsE6gCgoPJJm7LO4/MB1gmn2YGWVEFvSSm7U+bpWrWdTYfDuG54tEw6JCC0LBx/PCyqxMo/7MH9zJliOkH9KTcs+7wqmFS5+9BsllejU57a6eNc+0gC3Z1dgfzZ/cnHPNwWn+2thL0zLOgljvJ4h2nJIONyQK7ziqV0JO/7BZUFbNMYEwqdHv/IMiDbTYVkub6dvYLDVDP+p+MQ5oODT3JPqiiek0MfryWrgxS+QauDxLrcQ6mt3sbeKOUZewkU/S3dw2Vr1hVYSrA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512032', 'A23126512032', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '9906619d8021e28c0830dc435bda2fb1ec767c3f5d5e314ca58dcc023f16c659', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'dazNCN4Cagc1t+McSxPOHP53KVBXZVp1ShWiRHcBWEDk8jZfbxZ56unMM5D62yyEI9XjpIOhkjiLvfqP9wfZHo9QtH83+nknGgr0ErMkqH6JDWU5v2U/SEMLuvgQuIWnPZPFMNEMRGorTw/YuyzxGd1/bVjh9kYDKfHoDwBc7XkyVBTmEyKd+wAp3lhSyi7QYNRT872uWZ9+EAfBx9R9rg0t2R6zt7ivd82VbTFInrSHMr9TkDkpYdqoH7q2veQutVu+0vARXvhMqM8pdiWWqRlbEEemMw1wjATQ6r3ls85T8KTXBFNR4Cjje0lg5Uo+rrOewyUzHSK/a/yrVAUKnw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512033', 'A23126512033', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 88.30, 93.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '086cbba7bf97d356805f03fcbd35a826ddef5884b77769023d7a3f902c9b47a8', 'CERTIFIED', 'PUBLIC',
            9.38, 9.12, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'EdPC7O2dPthxRmKWDUnGOfUoesDz9txXlvLmgnAHAU493muBkHyx4PGSe//dwWQaOOJz57TRS11zk8l3GVayzMYJ2YII2l+v4c3SBuq9rRqExvfNLC/yLw64N7iNv7QIBjQ06Ajzp3SuOE1eE5ObPE9G3G/fHoDgQ880y6N0S7h0lmLAbsDZgun4GdExpJDYrPoor/s/EhKdhkSB35kL4TmzZ/b17ynbs17wJy9zNu0ceH4qWE8aK9Twl9xVgEpTa2FO2eJJe/7mLTwOIC+w6DHZ9mQY875zdQ5WySkNCWGIeVgHi0OxGYFd1wLZH96ed8By2IcCF7UJea4CAzwS7w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512034', 'A23126512034', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 88.40, 76.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c003ce16724e121abb940d1c477510731dc59a0f4177aea3b2bd081b012824cb', 'CERTIFIED', 'PUBLIC',
            7.60, 7.20, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'TsSbaYQaergaySBmnMVyknieyZCCofTGBq8zwsDTY5r2sPJQTRRfo4iJP/9VVGkLiJUulBxF4XSe28Lzzvzc3HWUOmgSs1HLmeO8HKKlir0+c3zg2BXW1mtMwSUHXwj0orAIoHzesc+uZBAiUmZpta+eBkR4iU/T8p5Ul/Dzi0UP5RCkLKIZbKbOT8acJL244z8La2ZKWuudiTfFv1yYG7oErY1M99UkPbq8QjFO/appOcYYvbFAwsIgacPQgYK42byH3OckZzDcaB4C1vU4NxFFwb895dIXMUl+vDKlteNbmNF6gjllc4bzaB70dWdFlt5DCWFoeA+HhhggaZ2xKg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512035', 'A23126512035', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 88.50, 85.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '244938d9c3d0e0d57aefefb1146aced1a7e7bb538f119fb50e5ab3787956345e', 'CERTIFIED', 'PUBLIC',
            8.56, 8.83, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'kku0D075cxCDVgmTFSGPL8JYUF+gskU+sL9N1KkxR8q36WFWh7Zqtk1C9PtmyBu8dwa0LlJKSpzzDLBSL39DzwzOJxMDhSegKVQKpBPNnrsVFi4mwFvZijbOVDlPZ6IG7ehG3e8pydYO+SPURWeSv5cUAcQHGV6cTamzc2pXaX7GaXNZMLU3xWUhaSc6inwIBophJt+yvjx2LSmukOkkqx2QMI7vndweYgmyzXffRnzR3sSFVM1Ni01Q/xdrjshgCMlYhZLZm8edjKcBoLu3zcARrsukOQUElzxheYdQkRjNiPiPKLZ9jeDoZJcqnsLPvBNXs2Cqetn4FFao4qQLAA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512036', 'A23126512036', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 88.60, 80.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '61014ab3cd8f47fbae1b4b1913a21943e3049f2c65ab189168e0fdc58bf48d28', 'CERTIFIED', 'PUBLIC',
            8.09, 7.78, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'p7efKArNlUK7Ffz915QKZKRWkpLwDyhB1uxMTIJOivx77X7od2LIl1P/rAOVHo/0hiNf/dxATD0EMTE1q+DAL7rh7lEKpfpOrJ/tvXMAUp61qY920DgmPrYzoaQdf6iTIVRq+eMB2UZxrzdN8GykGoXeW57CON6n19U4MrlUEXMpH7QD3k27xfCB3fZV/JUKW73x1FBMdb5VblUEu+gnlUWbrTiri66YfQ2TOeo8erd8QSJLgtdEPl2Nwds7bKNgQ9XsMmBsa4BrYV4vwWNjDgP4SbUbEoGgsgSyTos6yObFgysFAlcsygJqa3640PfNiGuCniNjTLx6LcaBhSU53A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512037', 'A23126512037', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 88.70, 72.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7a3e1c5326b49f073ee6e61d387515df11634d40acd1b9aaea1c3a9d0a8ffd28', 'CERTIFIED', 'PUBLIC',
            7.29, 7.47, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'nBUdaq5UbTEucVYw4HLEQ0APxHeztm/9Yr1y57QmqQSE9DW6zh0iT9VM4M/4njBlYiTvFQhEERhlf0tVl1G1KeC+4Jdw9QZJanz0wQRvyyUarJUPA2vgdBMctty7m02qyOcd9Q1oO9U03AYv8R1SeAtGabxOJOpFzXWz0F7MhpBnORQPr3ZZVlo1bd5SMk24Q4XrzmUdaLLaEgf1rOuDCQzEClata0qvuwDKy2OH2bIfKLZdxzZNEQFc9unnS91ZjaXR98DosdrsFixQEfMjTfWeJanA84NU09/jkZpDMkbfxKxzUbFgV0mPsa3JMXI3ByTNonudzXkxCh3vvCfm/A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512038', 'A23126512038', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 88.80, 86.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e4ab7c24b7772843f0d2c511b6783ad4263a13dc010382fea910ed867cd57f1d', 'CERTIFIED', 'PUBLIC',
            8.62, 8.56, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'kNW7T/mzE2kfu7VDBJnIkqPy5G4WErpNEBHrMCL6JL1sNO7uexHODf4T71e1Cw09QQT3PfHkD/z7MIRDdNUVYAOEDVAix4Mab+tH7oZGzzdF2ak8VwU9Zo/VFPxjlx5Vi7EE+ObwqqPRcYe9qfmFKPWBQiOMN0rQDM6wTWPYo2rhWx5RXw6QXfhS4DMdDcM6O56Hz5Pf/36HEQlD8i6xXFqd/9pxshovwo0UXG8tJgI5hCxn3KQzt4EPuRuGXW9o2rSCINqGRy9OJBhAV7YVAr/FROZn+NMoetvSu68aNIbgdjQh7esdNgCRC/DliJK/tqCmj3yLpxpoUPGKauVi2A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512039', 'A23126512039', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 88.90, 80.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c9c49d8d9843ec53947d3121fc608cceb5ce81fd9dd08a513c1709f7c8cc2b2f', 'CERTIFIED', 'PUBLIC',
            8.04, 8.28, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'BbfJiAfVaVD96tYjK9Yz2S5KDVB46zFxmntHuhQ1oYPEmHijQBu6aN/PkQsY7HkIpkckJzvgCK8K34E+ireDVVgRAJXUA0SM28X1v/zSzhuSuuNWXs4uC2JjwAP+K59g7ckokmHYwRsOH1nEfawali9qAEESVI2Dox38JlD1zzdO7DlUOTwTkajEhgUtBAtJRS/YpAbRI7+TQBwu01BeDzlTTr5G5aNNhuAcygqO/Lvq1kROYzjuRoNlhcD15675m53zUkKHxdD3UABSIIu1MHI2LOzMMQF4dUvICEfTgLhrftl5Oqua4LWMyBVJW9nsjDoqWS77c/qi4A/yc6uogw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512040', 'A23126512040', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 89.00, 82.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6a9226d5fe7d06c066b6448fb5256bf2e76c7147e9f0f464daddbe537375b4b0', 'CERTIFIED', 'PUBLIC',
            8.29, 7.87, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'IjQvWmbpqJPEA9xYvYtl7ZVv7r4rdBJkVGaJGl2i7ZmT3UnASzWrKvdx6uVCyWk0XR2152x7KTNdUSL0sZ5ZXvs7apJJr7sqBJfcji7FpxkMIIkPVfjSYlL3Ly2BmTQf39+owqYG9L+kbDN+AQrLrBHIiqNdOgK1B0OxNhEf8b7Z7xLxLztvNDabQeX2SbfZtQq7uy2MqOoEWOVBAPZKZvqNE0JE1v+Q0b6edhtuQsygREDmz+toKKB0fXTf3tLQHCIDdfGANZvuuSFub3bEGXKNNCKYvDiUf0HU9RqwsrWYg1dDOLvm85cEQBN1W1nOJxmJD7pArZQpn3oeQQLD6w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512041', 'A23126512041', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 89.10, 75.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e79816ab75f2ae2d3f167f9790820955628fdd6b84f8211335070ef6865cd2d0', 'CERTIFIED', 'PUBLIC',
            7.53, 8.35, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'GKYgATcOEw3kbguZbBHYF+j5qRFDJv0vmp3H42fUZXnh1WvH8rr/o96WHOUA9ZxoRi5tcayLnt836crSskVcp64Qi+Lgz9nlWmZ9e8o5Ls4MHpU3l/ubV1TYUxC7KhMZgN967JU5oVCI3z5SX4B2Y4a1MfE5vqBOoz7dSmIPqdg1n0OcvSLJeaHMh6IztFzN+Fpag5eMI1yy4DHA2Q6gU6g9Vyw+5us95GaRNA3YHYjXOyxFaSkQFi0T7Qwxml/NKpvRlUwZGfUzxSL/0GbukXE+74ihFf0Z3KeC3lgOYMyvmic33aRiWbFThVD35ghZoVR6WDyC4FvWO6lHp1osHQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512042', 'A23126512042', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 89.20, 85.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ac800e9d0e32d942ffac94a30f468e22f8eb2f0e39328ada24d71aa35e1a9a36', 'CERTIFIED', 'PUBLIC',
            8.51, 8.84, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'cNq1EpfLHkHnp6nYAPxLLhIHFy5+Z8Ei3kRuhfJ/AuhwEpWj/J1azlOO1FxQZEYUyRAnkII5BM7k/5BixIPtlmpFIuJFHnhr2MdhnfcVbwfosPDCFqHU/QEaBiLyhl2RJc8oyUpS4PHNiUbNb0CFEGkb5fGeDdPmDRyYZDz+9i+NNjkWIutWVIr6cCe7rkjvDTnMenSwY9ATnz8rv5tq1j8PKXOCKIbqtO3l6tUWmjxvqtnobz6tZ3hylWiWe+TL2HmnAli5mhc979LYMTb2733gMvoyrdl2UG3ZSucErpdqY+t9bwbfVe36f5FVXkktxNzZB/U1nsRcfm1Kj9aLyg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512044', 'A23126512044', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 89.40, 81.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'fdef40aa34e28f5722fdaa065ce94ff4c7bbf4517e068a0cffd8c99e0026a92e', 'CERTIFIED', 'PUBLIC',
            8.18, 8.76, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Zn5AnH46XgS4yi72OEpO88SGpRRvTuyJMqh90XJrnxzHXA19wCkNqajWcgoLnoFfWLqoITI+KRYRemECMxpGbSRSr2X794wZofeG3aG30WtKOdfziq3gcBEl5nGYFtr4+HcDSCUUmRqG1OznFNuB4O5hbU2R/1UGCwKg5hyKXGeUz8eigeRniwEOJwjfHDfR/2J5BmRcU8kO96rEFBbd2iYUHw5WSLhMiodyG74zTRujQmNoUG41yLHn2NQsNaOR9Nyurus1XW7KehcOhsh/rj+ucA7OB64NUfaqbodMF+xX40nyIrq0rIXQunRHSX9NPPbVcjAO3czXdcVMJ8c9ew==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512045', 'A23126512045', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 89.50, 60.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e39ac0cbcfe460f4e80cd4cbbd891c83f229e2df63a4d0ef0a50649b64a8b9f1', 'CERTIFIED', 'PUBLIC',
            6.02, 6.25, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'qkZVtfhNGxg3wDRUuyWV1+cr8UngvEnEJ7R6AGdaUrPaWGCIrTJYRQKOiQTT8WL9KcT9PsY3FFTJvE9N4rvmOTzhKtJnd2x9jBECM7nj0oAtjVlcy3f02Uqweq7WHkQ7ID0jqRqopUr4GILI98uD2RS/L/iKfAdgzeyh5L8uiPDqRkSdqtyUV6XW/l/WW4m0Kro/X3XFgf6JXVMMD12dPU2nxNWMC8WhUdJD9sc9AwVTQ0q4crrgrjnsFM3qdT/LsLpJp7L+8j8zSmTlRf9jbqWokTi8vVgvqexl8AYMiA3hJ+QszXIP+CcO/nE5yjSN1VKOAqIPgffztUQyBGBkrQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512046', 'A23126512046', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 89.60, 80.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0c0dab2700bc611459b112f79d529001b36f747f72978d5cde171704b63600db', 'CERTIFIED', 'PUBLIC',
            8.02, 8.43, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'U5QnRTO81zhiBvqiosePpYLFchSGTi4Ta9QhUIm3Fvia3Ak9vJcVbqtmFWRFIYcS4L+w372r01M6PN2pkZrGN7Pw9f+MEYN+vpl5n3FgUf6sSycD3uGhLMgBsJHDCSOILOH6KOAvZcxjEyJPoBG+7CnxLmbqYVDUuRXoNgJa9nCBmjzm8ONxTFXg2iDgBQ+o6rz+TmLAtr3zpyJ6WGpVqnZVkT7fsP39bXp/73A/JzNk6Ju5jhAGIULN3AxpIYURuYw3769jPmK3CcVTv2smJRM6gs0dS5S4Lu+recxNOoFWs47wHigSze1hTKNtHU1U5cdQCMKnCV2tt+tzFp4+iA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512047', 'A23126512047', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 89.70, 84.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f412a66d22bc6f4d35e4c0a9217dd3cfcae3e646cc068a5294144fcffda436a3', 'CERTIFIED', 'PUBLIC',
            8.42, 8.61, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'RQN7qQd+Wy2g+C7NUBWqQFmRdoer4aBqWjr4EOnz+XgJW/uoGbher5lbDlFoWOpwsr+rnUW+ikElritIW1oKqVtSbCSANA/+P94mz76VijHIEBbcw7Of0k/1WwRfF2dwg5AnChTB8nQ5tT5tsHJeK6JYBDjqYh8JycK/B4/XF5LmDgxx2QIBiR2Mh5veqHTQY5T7ztokFGC6iY5ubYTfXJM6QrV6vc+gSuR6L8cWva1p+75yOAC5WUupGCqaYPBmBzdbYUmRpr2QT6QPQoJlAOmuP+ZfxjOo5kQmd7sE6pyaUbE0qdTsUtsyOiPnm/b9McXCU6AbOJzawvSuFk5h7A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512048', 'A23126512048', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 89.80, 85.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1de7cb4f719c3a6bebe5c00e48e1e4ded241d8d4ff567bec119aff3ca59341bc', 'CERTIFIED', 'PUBLIC',
            8.56, 8.77, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'PbOYzYIyVP89PBRo8aRpaSXz/yqsWraRf6Upa/bCJ9njucPyZfNXeEMsqYPVfANI8TIoiJLGyWFXts0g9NWjRrH2QlqE/iHqpPvTxsxGLYNy8YM6sNTtFqvYLX4rNm4gEr+Wx+OJ1zBX0ruLct6A8xq6fhPnwOtE+d3gWsjAEFes/f49PG4DLSSQSXsutwNgIqlvS5CbLFAqZDFXuR2MBSNX3QjNN18RW0X4vgMKWzUo5yV+ypOpL5v5pVAWww/Y3aBhGBrhKf8xpa0QcpL5Zd7N4vDF0FcAsVEFAn7LoalILkTMnxwWyoJOWfjDPFooVuKZ4ny6lhQO6CdwbiVKXA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512049', 'A23126512049', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 89.90, 82.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '322f0aa7fe54788b3bc66b6b4239abacd659e8acce0696a61896bfab3093fa0d', 'CERTIFIED', 'PUBLIC',
            8.29, 8.70, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'OtvsUTo1o26cRHjPg2vKfnZZmHte1FrpnUXRhYH8ChbEuYJchVxwE00D+zMSFSoQe+ukWLnY9HswokU10ehP7mdIQ65i6PWB+ilFmXtH0l72shyYxtBaMqOom652Es5SMWWpR/0TLvEnhnoM8N+7RK3gbrKZi7kIeG+l/JtIpmhkF8Hz6J3ffLgEppNZjEUrpnHkwaHfIJD6vLMRso7q4hKq9GFuO9yD3LDS1Bf0A7oqvGzrF83I9GFyYY3sjGYU8QKkIcExCq9wpiWtyCYBZ+/P1bVoEYjaSn/rNwgJJDOZtrsfTk1IKUysFxZbIiphv2gs4Fu3PLCj1QTOJLB3DA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512050', 'A23126512050', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 90.00, 84.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f0f6707d84711bdf451a5c0a89f936456b374cdf38efd227eb505bc4c2217567', 'CERTIFIED', 'PUBLIC',
            8.49, 9.00, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'D/CiyPxL4yBW4XC5Viiq6t3C5YmcnOVHHZ1KfeGveGieryQDdEWKc7+5HyZwdujj179jlekEEzKKLNpSXImWexTUj7v7ggcJ/5+gfx+LkcA9Wy2S+Xj3bB2/Wfq1YhKLnaFFkW3xC/61CRwFHWMqrEHhUHKEZTNt/mIqZ1nWJT5vp5xwkSiMNED3Yc3720tDFFUeaSG9Pbd/nFZLMb7E1uQgOdR7L5eAlCUhy0zZfwkHUB3HKQb//PTk5my40AedQYA4ZKotIBAMxDWYs2GfxuCTxZYuKvKU7TdOtKhsDyJsKwKXVjSlOi5gWfAHa7TnXiDkYlo7tO5yyAEs4DNYKg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512051', 'A23126512051', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 90.10, 86.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '2154e566de73dd43e77bb8da06bd957e04c74d8c9b2281f50faf9dd521a1ae0d', 'CERTIFIED', 'PUBLIC',
            8.62, 9.01, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'JK3eCtrcIKI3Z9gpJracGCyE4XaURrUrKEhXX9rbNtwGYpUhCsQ0xi9kcWKf6OmtiM80WsiINRf14RJbd153z2IuUnqLQ5dnc4uWPozBgbhXoGpPyyKPTKaHPBEoM4zHWdsO695WOu5CvARcH+D99I8DHxRreqW+A+sPPn5Gww5NCuFc/1yx0cHcRHo+z1q7fgAp/50RG9ZELfXrGmNxGETPn2RCi7HKyeWqFKToaJyqbW9Dwn0y/qMWronmTjc0rzetaKADcDoMWqMFHrFY7dnS8mDbj2+gsqsp1JpxeU4RdpyKxfeqs6+L9h1NXpfu9yBIskkKwEI/LKzHvpC4Tw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512052', 'A23126512052', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 90.20, 78.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '14291446033249c16166546a6d4cd3b7740b352e194975704cbf55062ec91e20', 'CERTIFIED', 'PUBLIC',
            7.84, 8.18, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'kPTdbaHsp24bZXWzyXha9TQ5GScTYzwJZTa++u5XzIq9ZncmyJg59o7cewRvZd9IMb0xDTxzXcD720erfrKqWAsI3CmorBh0nHNjzW71BhLb+tWX642HIOPLZwAdEc5jQ4WCr0YTk+8MLCH2RQ77m4VjSLkJRH7vuUo4DbNf5ISTU/udtTWHWRAdiF9pK4mM1ZZLcHiQ5uPcTESpjXq5zEXaUycOJvK0WBOENt5HxAca+ntpSMZd0hQLO+do9bMgFoRIzm+yRkD9Qhy3aLC5Da2UhWWd2GE97huj7XIry0iT0xdcw/QQgKBCcNZpgtmKr8Ne/Tbf9ZbBT2lkPiop7Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512053', 'A23126512053', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '59d652a6ace30a2351e51c0d8a0bef364d7bd590fcc204befcdceac2ceadaeeb', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'KDJFho5PD+DivKuRwc9krmVKebpM7sjvcDoM6eJP6B4ZYPjNepfJeC8DppvkrOlvrVv860awqRHBTiNE6dpNIHTI/SPEdjmCw/mF1btdqsUmvDcjLoxfRkez7NOTN0KPMAO9VJYEyTjBFDWrOu85YU+Z85Ym3hv3jI99qXp7MSFv+8TSy+atXOd9hVw6mi3Z19W2nrEy4ti42Hyer6twDfS79+4ILAp9LUH6c5r9WmniNZDM+SEY2jEzBvrUa/Vo2F5PLBAf2mQzAbOmFD7r/cX4kUcL06Eb521BcyAgPJZcC7pK7bIjlzxgHnOLX32QGzqeoJSQihRGolZCNygVkA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512054', 'A23126512054', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 90.40, 84.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e6710603a89c5b3704949da93e474b928f12f60a590b8f4ec99361af3c602ed8', 'CERTIFIED', 'PUBLIC',
            8.40, 8.00, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'LiaZtPpM0YH9/+bTjbBr0MtYUJp/m/uQUP1V33t7JrKVTR3qqCepk2R9xpJ6yoPaMeZxQ02OC1kjTeTcAiPN0Ggxqmhb6A2y4eyhKXPuC/CzuEEVnjNGfFf1x1dmyYbgeCEXbqyKwaHU+YszhG6AwOCSS8BdUOLvacRaa5R9i97WPBAQ1PE5xeLwlnRdpKRsdZgG1ziOrS9zkoSp9P2rH67Z5GeO5YFjMMLbDAqNrGx6t9NdCSqgL2ibdGKKuJQC29uVqLGv73i5MaTPeu2Y/QBxApXMPNZCiu7+gnekZ2iDyulQpiuKg0xiJ7LtAvTaLXAnnv/uWBxO8DiIzYqlbg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512055', 'A23126512055', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 90.50, 84.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c0222f34fa0bc7e289adbd4eed2835ed9e3a88eefa97de6556b5b4d37e8e095b', 'CERTIFIED', 'PUBLIC',
            8.42, 8.55, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'OmqRUBEee3b3QtiWcELBbCZ2cJe9EvVNevZJT9zx0HxxRcJulEEkRwJuRqyzAxACQFV4VeCXGl3J6owo7xrvd/BywZxG9quUZE3sTWN1egTBxiMsXyruVrWUmZilvPeK3CrJGhhYmvsMryCgyChHkz045DDdPfTgG2aVmAicWMJad6Yynulw5RCeDB9jsBHFTagD7LqfYcdhLJvQ6tPNNqcsSIZ0qa8PLOzUrdhzJ6th2paUBTM3KylINbT7pIOI+lA33e1uJRQG2B0zEEJUhM+VZCN105zSHq0g2qZagzBpd6eq0RmQDhHWbU53oMu6Z3kh2/4YmwGF7y0Dapfb8g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512056', 'A23126512056', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'f88516cad354ea9f1616928290cfbdc64d5c160f3f7b932f84f9288041a6ee88', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'YDy3zaFOPFma8vSgcGEUgXNeHzGh7KvlQ0a4mnP2VO6a/dxohiYH1by7ve3aKtKoKPpN5KIc965JH8W0Qu+ayVtJqp/piItyvGiX619FT3f2dE/wJeKWV7shSjVq+WTOUpzrlT82NAYiizko0HJSkypvPLHRCs6aNqukXGxHj3o/kifLFkfLP8IAh2v4jFAgJTNeDQ3DeybwCDgOy+5iW1rBiUh0rm0SxKpKDiSCdvs8hTxXRB3LLIpNTJ13b/xykXxaK3C9ZeH/L9ObCu5+Vv8fnCS8mDIlSMzfIgo0TByddj3at1/pWjfKv3t5JCuQ+kZ9tDRdVO6ck44C4N0eKA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512057', 'A23126512057', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '851fb2a09372c8ac797e878056a2aee4a123f404ae2e521fb7c61c1bae84c25b', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'DgAvrUsnUxM2aAK/a6PZ1MuXCpkaQLgo2ygOn4ix614i4JRBZToYPb0Su/AxaC+R685lw+CN3QgeaeFIbcpuBh5pdJJLzFIR63wymUBE6TKIMCFYbXWugHcnBbNM2nim8zr4YOk9Thl5b1SA4puzfphAVpDudhLpkkZZBlAy7ljCzfCCWiLlBPmthO+ewFzJMDOzE+GB6t7rGmxIRJuw8nMfEVmvlSAWkJNZ+ge9B8pX9sM4lfUBnrf5/6qpE9SWB6rgiBnyqPAwATUN5QiAsbBK/99OWCFwepzGcFyCl9R4s28NL8y9bpE1+GpX8dxVEetpcrMUZ2NDVWltYzQcNQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512058', 'A23126512058', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 90.80, 72.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '49fb23a132757b31ea18046ca18e77a69e2e5e0d28869a6b2ada5f7592c7a46a', 'CERTIFIED', 'PUBLIC',
            7.29, 7.48, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Wy132hh34VJsHSpHSzyLyL8g/9HkyOa2chcG10Q88tJyIZRenQeICyeuQCFwtYTgOiR7kdJG3Y0Xy5EqcsUbkKuCtSvyPRklSn0D3OO6c3SSz6r9Y1CBqHVyXCu3bzANCLkhukznciyB+FhhKEu2m7YXIMQL+uckebZSk17Q947lKDlUHk6NhAcyrjpqwfSSI7IFJbhbDN+lZ6nAmGt/6OFXeX4reE1c1MnYs6GGm8mQ/1ugY2d1yjy/9MiozGPL82n+LLiIjNKiRPamfAS+VnYkCXg/sc3039nB9ZFTG7zvdGCbjSpOjnW4yoaU35+DrywpAPpvtDbNhwtSz08xaQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512059', 'A23126512059', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 90.90, 54.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b90832c1f183f4590f95997ecd8d8cb331874a720678108e2b44486d1bf42b34', 'CERTIFIED', 'PUBLIC',
            5.42, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'QxLTlW0ys0pK2DMVIVaU4bgAN0Ji1j+opsbi62thPwulZp5Wx3eiXjrnY64LYsUmqqbP2eYq86o1Cor9GnZkjXxFXCdTwssvffpJ4EN1xg1RSrRhillz/9+lA1GBJEFBddcyG33vHEvH3WjfYN4DBErXu/Q14uvpiVWBGrdxp5XO4h0dg5L+PVKUjDhiDdhyerQE/WzLRR/2cZnbJkp0r92+da3Luisbm/R/YNjovFN1ykHZFhoI8mYwx3c4VTSdZFqZtXaSJC6Wa51/oiLGlpmTd8viu8K4xBJNuIAFDEvhtkJnhFtmB363FNvWOgWbKsbg6bIKNUcGKeT0SSsn7g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512060', 'A23126512060', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 91.00, 87.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '9ecbadc9fe5880f070e21e157fd42dcbb7de8fc6a1d4b9967fc1b9b24a8c8632', 'CERTIFIED', 'PUBLIC',
            8.78, 8.87, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'V4Pv8guD9fvAdtTWcICPU/wjBD+0OY97jBKHDv9os7wAIRkIANRwU5epMsDr9XDELcakktkGf9ofTNV2v6TaFcnGUXOFbO1/yvimb+tITZ3kPwl4LyYgs+uAHKjJ0M6/jbdrJrzHolTNzX1I0WjMkQHdP/oSX8l4yVGX5mkB7ckgVRkQD7c+OVAXEOHWvnrXzMd+Sf4cqPC3wsZYZ8nSPVRs9Cn5YywzEfpB/IiJdsypkGMWreTEQVBxoJJW5muLOlHZ/3zqOEN85Nzs/iFl9se6BWuw9cxTX6eWPF79XHSux373/+QBpuHjD7eXwKcKJbjbDAeSaXiXMqbQ9D+0lA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512061', 'A23126512061', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 91.10, 72.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '09528ae48ff664649b5f7cb624c0b91e43ba2704b8c7cfc4ca54286b44420cc6', 'CERTIFIED', 'PUBLIC',
            7.29, 6.96, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'XndFYUFzLkWYX/27b71OLESGHkHvRohhkwflmSga3Nv+gTXPAyS9oMAa3f+e0OkpUn/GldAzAAJDq0MGioCw9zKxy5ZCQLArKmnwOJv0AMUhR6g83aGr8vkkOrwNoGd9veTwnupvqQV7rjT8iSS8yyaDDO8rH6SsOSp8pG7cKH2t9ftvUcIBArzt5LUUGZnULIcHuV6PBADbxp44VPFgrk/uJz3oGxx9FUn/cr2sg/KBD8jKoI5D8TNb23RHdIrXVNZUNct7D7Ycqfg5ZxGpD3RIJFGFNsv6XFFV0tbSk6LqeWAE7j55EkFGrOngk/Dnnlx9X7lEC0COHCGGvd4pNQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512062', 'A23126512062', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 91.20, 72.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ee23cdbdc25b1459e44003591921ba6f80ffe31e902a1b44c959d28ccaf27f89', 'CERTIFIED', 'PUBLIC',
            7.27, 7.96, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ZLbHn7PjlsH88UiKWML/c5qnjqzpfnsoaFb6KmF+zpmw+RjnYFEB6F9PESm/HMxspZpw+vgqoA5ocuAn/A37H+A0u9szKZIaBJ3Lmi+xAto5NBCjNrylSlupaHcc/t9knl1C1soqoeoJPojJusFx9rM6WvpP5qaDlQbRi6X5pzV98VHGtC1FJnJbA+W8kA65nnuzmRlPM7CvY/1m1Ik8qqzFvDBiwR7JHDBqKITo1ywyV40pM8fOhk9wNbDpcUdwzjAHsHj8KiMnn+lD2K65aZKCjBLrLcRbto79dSQMeLu55TatbtGbybV6W5GjBMHDyzma01Hppi70qK9+LGKstg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512063', 'A23126512063', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 91.30, 93.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'bca8fb1b0896b3a34fde2a20f01b0884c3737fa32e12ac258a913cc26e45a48b', 'CERTIFIED', 'PUBLIC',
            9.36, 9.54, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'E9+CTb97etqi6CZ2tigGQoD1mlmgEfOuivBaM5JdRapYPhCudZr2/NyPTVv2Wt5/vNR+MHErgdOzpOHb7A/g+ICwLNVay5LmrXkWKMgdGaLeMx3Ldojjz/xwanMF1B4dsUxHbqVgtpIDHzDtr7MJO9Rr/fu27H8qJ7EDUuBIms3UbwdpX3Eor30N10MdE1tSbZLUn5dLrlnnT4k9IViiaPhY1X1cLCVn2RhO8RnyRdhIiXvw6/QRoryC5WlI2e7sc2WOa2g82JZED/uIVVpsI/57mWzBElUe/xifvAYJQQS/kxzspjkn6mfyA7+LOcIlVFTIl2NlC1xn3lnst//k4Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512064', 'A23126512064', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 91.40, 79.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a1485c7a203e90b6313a39173c90bdd84010950197bdb0112ea70ba8220206c7', 'CERTIFIED', 'PUBLIC',
            7.91, 7.71, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'BUxYXGdCiVOqH5RyOzCaKangsnn1aeAxdVXzGWkpKeNP5M8Kn9UnR01q5uvafdaePt6iSMbvxR4C2TkA8dalyYoiKGJe5JALCUI6cruZZdzrcB+y8q/MByy/q5aqV6QevZBqu7Vz/DAxtnF3ydEtabjZMm4z4VXIvLRrtYuDa25YNPxEGpu9EcAZRkhJjvf0JBKDjO5JOSrvaD/zFLzeYFPkScadcKDng38a6WpnhDDU1diN2/kJyMwpEbV/fTOJVZyKjJv9qgRCwYi1SY2wzempehgHl1MyWW2AsZSAJTBYJMxhqLUOsrpL7WPFT5TETzoB7a0S2NHvl/vaBYFtMw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512065', 'A23126512065', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 91.50, 66.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '892b0fadc519857e4581b9865cb8ebe4e072c0f5e658bf04cf2dc133ec031b32', 'CERTIFIED', 'PUBLIC',
            6.67, 6.38, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'uFFdGfv3TXR/FTlo/MksqYLCwuq70AESMBfPzRuvF6jtN4pxnvTKtpVscttpgNx0ZtAnpBYrSwvzUKLVsrGNNLNYkbCNkP+XB371DwxprfAyPBjHe985G5p0Uaa6XguUwaG1OwPA8azxko70VXdnnFgTplzZ8qppJuXz89thn1TKXOxbD/5lj1sRU+N6GdKuVQaZ1gQtQdPn/GEwy4GEXUSPKtyZ3w0KFXJs3AMZkVVRTNQTS6ncOs00Nbeb0giTD463hYoeDu0tIgM4Pz6qQjWkAkjQx6+sJ/Q5FmE/Im4vXh19z1x7FfZfRxOLRDNcNykgSKxf96UdYq247liJbQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512066', 'A23126512066', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 91.60, 85.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6e1cd5a556b47e33a7bb14cd7ecbbe66cc033b8ea34d9ee8243d7cd53fcda656', 'CERTIFIED', 'PUBLIC',
            8.53, 9.12, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Nu0qGQhSdxUmfhmuNq/t5eMqJN0izqhZPdLgCRkET4cDau1IcAX+hvJg8TN2c1HW9DTlsxXqWQoQeep92i2MNWOIO+ats43UH/RtVjDTtmBTSXw3Q85cKQLNbQWxiC0azgo+HgT6SLxlbu8RdHAShi+H+SFePpDSyOPNfNLKAy2hnIIf0LCgieLHgX8s93vAiBhLtdh4X9ebcPmSD9JLWS+LNBlNZsc6qy3bTfJxpuJDBC5JLERc0NZi4ohtChKTUc5lvFmnNuHZ5RJdQ3sAtSS/C26xqolaH2ZfpOTT3ipLFqpVHWb94OFS5Zwr8ltrLJytzU0Q61mB4BBd7LTzhw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512067', 'A23126512067', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 91.70, 85.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5f02aa69c570e4e6f38658ef566850a997bb9b1bdc8f9389dcfc505d54baf378', 'CERTIFIED', 'PUBLIC',
            8.56, 8.41, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NrvOcGw2WAPagQA8Mo8qmlXRm7uBpwb78xOb+9VTB+T/DSddtRkfebGS7g501w1j+96JsSU80MdgRzzsRgkvrP7NuxrruHzfq87T9o0OpeI8n2EzmrKUzIOuwej7uEhEMLRJ76K//b6UHlswLsPA3C+dUKGdhroox7w0Sxl7R5V3xTpc6CYXvya1mVaHjZDyB/8KvpfKQ1MdOuJ0KQOD0S9Zt5scQBzblwBdFSKOjVElYIz8h1xEGv+D1He5//39eDo4diLqzyEt8PiAb/6D0GCjaAjGK8iYx++ygq6DHwvxlV2Owx+bwRRs825YKVOQuaqIArMYh+aJFgOKCXWY7A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512068', 'A23126512068', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 91.80, 77.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '17c057fb3781000e29625136e8babffca6417b449ce8367e1c5be0a0b434dcfa', 'CERTIFIED', 'PUBLIC',
            7.78, 7.42, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'CLU3hZ0rG1DaBLS19TrJuw3vBL8uj6DnPQ/vWmxs8zJ2M9ESemZ0jnWvyJLpDk8i/kgQEc7wioCQEfUdY7C0Ti5OTyJGQ+HAgdCwem05ShgO2MrhxcJbUwHdTcGpRhLgzSZKatvlxCEvsWC1eeaZQUeu6lQRZklbY5NmrGOwGoGM2R6sBTb5eddnBP2VclqISuJDUeTa4uZTTP8UL0VOzlZ17G5z+WPRxbQM4CUaVvjo4/7XwMjifGnFBa7n/ATP36Uv1UefztLkSq8400NBdsJNIR34LzPXYgFHZEfpgHuLzEqB+043pxodMq6r2Hr+WA5UJ7S+//7WP6a103rHcA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512069', 'A23126512069', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'db0da6a9f07053f9e5eb012d22e790eed63288f1a1fabec41f4e6c356e75bfc5', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'CPowQhPXMiXL/PwIw73XOpB1U85I+ueFMC5xO0y1WT/1G8cIBi6dvGi7k2/aB3N+vZER3id13T17k12gWTEfoERA7NyRpFIpC2PsqS33Tu7/xRkycflmqV1BSU1mLIT31/G/ELCizExyvU5NoZ2YO8qnf+maAAGXYfd2GSoXAyI8Q+hVJMQlG/Orcamcuentcfu3/qWoJAeVjI4KF+mkUHBtX5Q54fMRXr42fhlcokzI33vk+oYGElzc3yfb+bg4DMABZTcHnF+OpSjF+TT4/tVh/+15Rp4oRRboNXsMG8FPRRDEgiShLuqgnVLbSqNc4YHp8AVwPKdqfRQcHZlK1g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512070', 'A23126512070', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 92.00, 57.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0d5466e103dd1628cbc03d6c1acbd9581e6773f872bee9b777adfcb32859ab8c', 'CERTIFIED', 'PUBLIC',
            5.76, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'rZH8ZjxiGLh2T2Aoh1MqKAYeEJceUdkOExgVb88bb83LalCyRFoqF9HY615efnhpC1B0v+6vlg1X79MK7NJYYh43v03CJztmApmJjOzSKrDXzVm+iREi0QJWL6Po3R3QQOR8GY90yNdcf12OXHmxgg82qLWKIpExfMFkprR9W2UUGbVYjcxQVgAohivLAotxQXG39sF8vVMbvBW3YN2RiYXjYuW+LelHZfIRyPMDSHVikCa36phTy50Vrhz2K7EWwTdyd5EnYZ1sygiCKx6E2+h1QLod15/esKVTUCptsd5172MwIsLg+u1gcda4945grbu9jIJgpTLHN9woQ91TZA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512071', 'A23126512071', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 92.10, 62.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '13fd9f0693c286af3ed3e1230558072be15e8b220726d05e99987f9ca5102f2c', 'CERTIFIED', 'PUBLIC',
            6.29, 7.20, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'gtPnv1B1tSQhrErddHnd816yzIVA+10gOX9mZyNeUoE5zYfVkljWaXlfSM2zbmj2M9XlxdfvgcbXYfp+JpzbdQ+E/rAaq2uk0XKdSa3ET3u+h8Cn9DZNrb4LpUxNfy+61Z7epuX+lKDM9AKOOeEBi5fFphkm4AsXgiY8Wa2KqLh8l6i1P7PaOLb+5CV4XbLEx87yaHVGFwACCDViHDN27J+fyWL+wqjMjP01+/97/3kfhkal+B4C+s289rFW8zlwneqCKRA7Y70U8sMs7dGaNyYalL8lBBueWxqzSfkocMl5qV6FaJdEFROQ/POmTuY/UvkAegAlqOLSaC945ea9jw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512072', 'A23126512072', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 92.20, 83.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f99082de4557cd75adc39250ecc62e3b0ed302898f9d0a95416aa56cad894e5a', 'CERTIFIED', 'PUBLIC',
            8.38, 8.79, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'uTPxFEMsyzMOLFzfl2XugJ3zl2Sbq8aFqOcpsCY6MDAsvnwqyxv6jCSPkR1WW43NyRXJzG4WSMrf617vk/+D4yZm0B3RuH0TUtO+eE/rN8Lmi10prUOF2HTCJ2tvH62iCOjtuBQiA5c6ukvata5HDcgDTLtB2tsQAFzfwQvD85Q3EF6rjdyxZ500jYAUi063ZmGl6sSKlSUhaivS53/TyxbVD7Z9mrkEHfOoKGrE44B6mEdggZUt7nTEHJD0f1YyebIYeFhfBBONZRRKkzi03t2tsbl7mPdnjBUEfx/woapnigf0EQ3FtzNZAAr1Q4xF6yvRA4IGUYAMznrKnet+2w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512073', 'A23126512073', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 92.30, 88.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '67a863ffed2cc321741434948ee30b8c478ecc76e598febed6e2979e44cba0f4', 'CERTIFIED', 'PUBLIC',
            8.80, 9.34, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Fo42LXbsEkohOsYMS3iQpHCgQXV6/hwK3Wr6LbiZk4qTngYiPAe39dnQxURc2nE4RRC1630/7kcYR6cYxpJwJa5b3fASjuAMc4U5VqAgstwW2+8x7fGccsEXXMcJGSncnmc/jb9nbgjQV3PgDdO4U80h56hD8JD7H5oVf1LdqiVyMa0lNFUY4FPgTfAtpRBqYLzQXZeIHO5uWQPtbNZ0CG83rBs7+unFgUrR/WeStW/yfPi0vLBqSaBl5TC1D0G/lIb7SglmYRPDy8C2glOwXd2S2qV+T8TCC5XmPdGPvNnv3i5oU59o/KvTwoYLZQuZtAuXngydQd4mVq8k5o718A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512074', 'A23126512074', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'baa2cd3261fbdd422cf187461970b16cdc0e3bc9e9e5f83f9196ba35d0d0f786', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'XawFhplzKd1vAjofBg3v/I+Eb7tsRJDIcNIDhrZAclTIjxKotuA5n2GTtY4iWLpYVoBzdRe+E7gjTAVkISxU/dWl+gJaUtcPFRrpUdGQ7YOTk1T7JiBLuXlsUOqLi/2i2O1LMnZqSqwWMzL65UXapq3gqcw1wKFxhsmv+bmlvFNr+WxLEdYl1Wk87B9G8QZVJkYlkNfl4Shjp9DbSvM8ZbKYHK198Tm2/YuP8mJlmg1ILHlRVsrPXi18aLEfBJR/PwW1/9Ko1Jo2BdwjyfMqKMP6Six4Wktj/Svnhcy89lh+5LF4JD1xt/sRGlM2Y6gid6FZMhTYRcdpMrnj1TIE+Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512075', 'A23126512075', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 92.50, 81.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '4c62b0c090f0683649cfbacf296185ec8df0813d61c613af0481d56e6733feda', 'CERTIFIED', 'PUBLIC',
            8.16, 8.14, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'jqUS7gEbto+ZnFI+20sAUELMOrnc1ZGenSLnCp7DIx1otlB2r14KOe7ElJaxlnqAACbqFLvviGhAwfBJ/7D1p/HOEsuAeS+0OFKK9ftatYKCkd6ejYYCixwxuFoBlSoEVzYKoszJUek182pb3uxFchDhke7aAbqlCgfJx8ToVrjVt3T0pTv+XbVLEnqoVw9qi259i1CY8FoRlHczlri6tM/gdyVF7iZS5lScKR+MMazuEU1AyXfNbkKFxMwI30Gi6/8tx21LPOZpZ0t1FEfYP9nax4e7/ypBh22peUy/6wM9tzIiD06uortZSyfQaKF4QO6tpRUUzKiJeK1a1901VA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512076', 'A23126512076', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 92.60, 78.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '978a9769002f8b6e3be2d9899b7436cdf361946d834de9aadf4b01d369003325', 'CERTIFIED', 'PUBLIC',
            7.87, 7.36, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ki2qgK2zni9f+k3hr1CxYvHTcp9Q5PDvkcby6NE5mss4jSyvyKn9QffnLhJREYtF4E5oVsb1woc5ggT+ml4up8w+4Oy1bzEnCt3iGTCdsxn98ouKRodQcG2MQYkUWY3KXnOzWIqCKbimqysyK02emftHi0sR7atVXjUODtSKgRqAw3Hmj8pj3tLapN2hlCKaBD1Vb4mGBuUq+UnXdVcTue0JKNl/tjyEL9sd9/MGqBYU17mupfjE6smNZv998AXrRnmeNFHHMm1473U/FtdbJnAnqnKbB/4IFpNdqFeoBYJVxV1I7XxWwsBeHUcTBntczv37BYmDd4Rlkp2fp0PLUA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512077', 'A23126512077', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 92.70, 82.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '123ecf22aee12e36e17da307603388388a40533b3469b0d547638f75c94bf4ac', 'CERTIFIED', 'PUBLIC',
            8.22, 7.51, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'DbPVBY7UiNJ9veNo05tQwBqkaN8PIXY5C+4LLTt7TjynQXGyN04S050xSO19o8HxsO8wiNmObdcQLcgEXFPUJxmyvCxOE49VwOHR51UJ95F/kZ4JW1AU1NiQ2aHc1nl0VHQ2Fyd9JaRDtcxnLcPO61vnXSazvz3piI9SAG6mHShTDIzvcEye9mdWe5jINqgxy9jBJ80WKsdkaQ9sLG+RsWSZLssqvAZ41vUMlWXrhsHl5vVOnD/9vpEuAwtQcCV/UkFO3Si+7TnKgaWRF+aNOKCnkWm9wVB/H0qri+lyI0v3+/ixrBVpG180vqIgAR/cuqlwLG15k1orZ2wkqvlPqw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512078', 'A23126512078', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 92.80, 75.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c67342a3a1e8237cda98ca651d6c35dea30333d07f942907fedb7eff27c2c8b8', 'CERTIFIED', 'PUBLIC',
            7.56, 7.80, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'R1e2CCENSUOOZMTsX7zz818HNKB7y6ge1LGJgBiuPA2UApMfZx4rTOIDxMktOpNRVFWjq2Y8kqJgxDObvkrkRRhAkzNI8HynqbSSy2kzWeVwrpUwqzsDIkX+bSq1i4pCgYtdec0kt4IGQmWvD8o48B3Nim+XFvg4IZaTwWaWtzkkKyKOPwbt/mWU0OQCz469ca8LK/H2BLMzXyRCqMjowkTOtbYrb4bU4tBc94PPUC7rb5BjlDf2KLWT5RQEXGPKOaMkNNlHSnL9rLvE9cOBPxOSTverb3zs4C9CMIt3x34oG4/ogC1JXdQxo92RnoxmanONtsEGMGnK3krx3yQ/Qg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512079', 'A23126512079', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 92.90, 67.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b21200b8417e11cb0156f6275ba6a45cbcbb001bd07c202400fd82c6042ec23b', 'CERTIFIED', 'PUBLIC',
            6.78, 6.91, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'UALQibXk6TkQg4sytNDAhZlGAwIsCmby7PoAxlHgx28nDgTwz8IYBs63DIfFDcUnvwY1ySfMd34XnSSA1Nvdk/WlV3E4mdyy2OLbl2C3mLu60nsLi3/MG0BVn3kX7f7qB5JvPVLMDJIJBXan1hYcTcWzka8j7TPuI1eS9Vya1mLSQVe8fUvzrYZ7xqe3jaZe6j6PeAnaz0UrMxyAINusE6hFJO2tg1jTNEhi77XRfUtt34ne2eoe/JezqawzvR1ClyVYSD0OUMz6tfFQ26YLRf0G1PVtNcqG/0A1sbmHTsvtOapdMrFf1N6jyQRuIeD5oxBtGdz/DpZI83YyAmFkWw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512080', 'A23126512080', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 93.00, 62.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '52d52e094b2f11180f345ccd667a499d6706ab58337b38301178c5900323d1dc', 'CERTIFIED', 'PUBLIC',
            6.22, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NcUlidZ904flY+o5ZVKhzPbi03tbcpLNq3B6gMdrHzyku6uDVO3xLlnzZkYIg66CJdAhfBxKQHqtE3Cu9drrfOl7FHjLWvXZ4DzGKj/pSKFnC8vsTyZe9KN2j27hLkSr2mdzrnvpp9aDfR5ab0ZcuUEw7yEsSsjraYCzl4xYzsY14HQ3GthDR86Pimhf8PNfvWYlYYfKzZ3Z3ufeAJIYGM0J2C82TkjNqASAE9xsx7MwaH44cFN5F3sMxPdTIQ5Zp8whHOxj0otYf4YLr8xKfbcMJSYuLHkGvVu3EJtQEIQZGtpfp7oX0LkqFkIrnt8IbeEO9GtvF6s+8NIZ87iuKg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512081', 'A23126512081', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 93.10, 89.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '9e353e4785ae68575e48a7afc5bcbccfbb093f2dd33edaeb3743e2387dcb016f', 'CERTIFIED', 'PUBLIC',
            8.96, 8.46, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'KWFJb26qrf5BQfWVi3bEki4MBNebja9tTrsVv8iTH/kfV8ILO6/ea5G8GE3WhW+NuXQjAwQoVyMNhTOZHDdOJ159QC7FDGcWkxbvjSjlJQ7Raa6C6wXjQ9bXHUzzQfdrDqLqwmZPdJoFoCDcEXQPC+ATe2RKdZbW1z9HupbJVaUlhC3OtE+yryQC3ANTFiv1GdyZ00hC/qi7g0n0lQnfxPVzvBdwQHtQyh3fpMll/bru0rqs9nKI624aMk9f0JR6T2OrPPo2yuklgrAFEaHAsCtp6uJek3YH5CmPvCl/vPAr4izzwBLeLlCkDsXbYQ2sKWkuR3xKupEhhhPdsVfDlA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126512083', 'A23126512083', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '91a26cf5e370a034bc0fca275d1cb9dee28cc5b2d7abc11c894813711a7ec5ee', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'MF2e3OVU09QI/22jVRwSlgKgUuDIu316zTsqwsr56aiimvzNKdnjzernyrdoZaTnwyZHEQMS0uG3OALqeuHhzSQ17iKymUkh+zn3qCtBftN8ARWUhVLcxbOwAEVoUn9hjG3F+S2A0ZavloBYpiO+o/6sxGKWXO15tKgFnpvmUt4m189uLf1rN8PY3HROhxKTv45oauDJECM7vUAKOOLHHpjhDn0Z53YjH+JPFr/MhssF74NphCemyYXHTFAqwd5Nk08eDDM32R/k3qDSRUjxpWLEccEo2OFXaSJziE6dMiEUAhNCtXcWYqpRjrfxWlR6N3tS0SbvEPLfi9WSLVLjkg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514001', 'A23126514001', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 90.10, 78.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd8d47fffe9eb700663d0cd690225d1dc357a9e3eb2cc9328e2f64993dc084c73', 'CERTIFIED', 'PUBLIC',
            7.88, 7.68, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'onic5It8wKKIwhiwW87QyLG+sCYBnN02I0RX3I+VsmxqRkcJ9QfwajbJwOJZ/jMTJqw5Q/qES5m/RQ+7Sri0k3fxyIaVeUy555AgvDWRYhB5MD4Ipmgnkl86nR0LtY1+/SGGQkEcacavrzjJ5wqH7zg7mL8ILqXEzWYYvVZmAydtZ1zku+PScNcfFUBoavtHUWWHtzsOoxl7kze7Vh+cvCOvy8+N3drmOhnwTnwkvjXvzLBOkonn1N81UW66IZyTdU8niKY3wmvl5BFomX7qfl1wWLlIwfLjTXYSeEKHkVD8EVTfcayCN5VHGptRb7vVCgNGqEWTaZkF2NKr/rhD/A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514002', 'A23126514002', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'd8b04bab9ed175b639c47a345e1cf2cb4d52afc71fec77e227528a0ac6378477', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'cP9qYJlCPDVITB+eotlWJ8aL8r8JvBsCKKqcE2L5OfSlDU+Umlh4TrsHX69x3Vmrb7a6cXth01Y6tX2WvYwhBTYNHGjt014PM5ZtxS01aw7J3LuJr9H9y4HuCDq4L0Wh7i08f3wq7x0IakK+QE4Rm+tOE8/R/Ia125v4pSDx6yQYCwoFhxhRTYTheitD5v9OEIE6JBNQijPHu4ksfhdii2vsufByOuOWXMSZHUUua3d5gXtcyw3yHpZFtCCNkXtqPLoRljynDLbaXKgNTHp/8ectSDe9PT6EwKdi+DMZfptTlH4pKBa8XesKdnW5WNIy5/ohZ55V3hs0RaZb7coRug==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514003', 'A23126514003', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '631072ce9e609135535b8ecd8e35b31855225cfa0512a2b02c978406070264ff', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'bcvBCw0TCMPoI9Ltf6hq93uXLdK9pldYcm70whU8ff+ACsZtKy+EDyaK+YEw78jTnZ3Q/31ZtP78FiDb1niH+vRyI2ewgngRsFNUm6FtIAaTfJJgti4sX90kMcYdHtBf/B6312z7WmrBiclYOMnpzqdB0rgqoEtlFnX+txTGwb00EPCy7F1kc+mLHmgQc6nI0axDa0Ta7gLHgu3HMx7gpHEjeOJ6ANoj4looHv+oHu1FyMonHUUDF3UmAfxcr2LsMlPMRczOth/xxMtGbihXTAxVbpk239QDosft+lzGPE197vcInOrbKCtTEvBs4mvOb/ia40zgtDW/VjL9VcxWXQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514004', 'A23126514004', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 90.40, 76.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '91d1df1cc7c8388dc203cb8e155c85f66dacfac3cfd889b6b4eda5758b8799ab', 'CERTIFIED', 'PUBLIC',
            7.69, 8.04, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'CWOAxzuvk3mwKBmOeC53rjc9Hi+R3IBIZZpl+7sHCNw6KCRbnfqkGLnjkWnTD7Yg1KjkSdigpW/lbKNVGy5xBPBZAJ/csM4bUCpL3Pcr2cUT7Y/3s+R+rr4yYgabTMotzV3IP3QMAFGhkcVVPG7yJ5LzWGn5dv2SA3+bo92WTTDgIW0xutGOD5gJcyXVgYwl/wUPcZkZdwdpaZeqdF7sKHXYrf2bvxwYWV4uOSWP7gkIXYEqFI984PHhhxCY4C8RRGKHLzsX48hC0D95NakD6d8Lci28KMQXELse9VZQrtaiW0aXutmUeR9nCMrhX2VGfEBD8FiYOvC0ijEZZ/yPYg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514005', 'A23126514005', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 90.50, 83.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '4045f1f1de4ee18f07d39031474ee413ddd88ee422cfc478f7a5cd363057c37f', 'CERTIFIED', 'PUBLIC',
            8.36, 8.85, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'GrBIxIDrUFyL5qsK5xnuWGjZZB/pMwe1l37n9sfbRWXazXklD20tERn94ZPMAr5O2rM/gEtfkTbwbELXLKj2GcOlyl9xWrbHRnWt2anP9F38HZRuqLPkEo3fiJMsPwqkTSvXFU4yCeGgKgyZi2ZPg3tr3eyJrDP+8+MTA6L+riqa5klsb5YSzIo62Kg04ptGcNGiUyEAjwuai8SDZhSoKi9dIIlSHr74a4Z3M1sZoBcVenGZrPRtdrtF0o/Zq2qn9x4I7R2CMBlCYcn2QiZ2G3evX9X7RErkQTDo5CtPeKDK+7ZrV6kYj4ePX8NiFAmUDB5hY4ES08NSxhen48KnFA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514006', 'A23126514006', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 90.60, 74.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '072eb89b8d78b26ac091750b409421362f60e905287d96971412ee9436ecafb3', 'CERTIFIED', 'PUBLIC',
            7.48, 6.81, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'mfsD2NsEBu0iPkhFsU2VlFfTytceByHDj17YwoGCcT33GAm+3kJ4W1n0w/omIb+GSNPhR5Sb15CxmtBoEU/R5JU1TtHQBMmRP44UD0cgph/HLvVua92D7YPZSfxhhA8xK++ZFSPGFGV0vmUI/UQBVUiTt7fl3i1QTqhXyjD31ED7IYhecbIFOZTzRAR7zyGLWIgOBhMG2ZPeWXN/m5DG6Nmi/SC8y+tGc7nn2xc3wabvOh1cZkY8vdONgWVAJlLvAMf2konVzlkUelK9bpMfLP+XR5Gs7+REOavWNhEMgyXxTKszpSo6JO50KJ1lNSpRipywopxF1h8Z7WC+qqwLWA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514008', 'A23126514008', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '6401f9ec3068af6078d44dded2a35ba9d05967cef4645d2ae4206571b23d28f4', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'dg2tNVnU6XtcY7FKnL5tyh+KaoXsljqOk9Nj6F3ym5EJt85SxqN2TnBwPb4QKQDc0LyT6Vjn/S1ny1ar7Z+vt519x/z7NlcB+NAUdbv9kuLI9C42IXOfrgC78EtVB5WWOqEGH8Ow+V6rN9/v8LyUcR2mgDqBxgan5eIvsKKiCbFwgYjJUu79pMqacm85Ar15mm5zkirH7Afx/oe69coReJnzt0O4NcCKr+aAnnmL7FiS1dcvWHHlqTl/BFS9YGYsK8FmiRhak33d//OUt8a2i26Uu2pXG1dMIJnZjRlWuSuiD/OYMh9XtmClnLOcAaAazYIwl5rm8MV3CWfIkkYSaQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514009', 'A23126514009', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 90.90, 81.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '35f9cbabde0fda42385c0da299da8f8e2ec79d5e7ae2b47a223957374bb117f6', 'CERTIFIED', 'PUBLIC',
            8.19, 8.22, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'pMIZzdwweb41NEM8QP6vhAvNwDVnCFt1ggu4DVxI2ABzEhRZz4eqnsPv8pTFoOFFVrV++cYVg36Z2lwvzurT0zvozzfx6Gl9axo9mtD2E6uHt4N81fMrgcpriSHMjYbg7xqMTfLeTWzmzdDkmYzbszCcgUSNOnybYrYOsCaERAdpZDNp124YXkXt4MzQaY0yjZsCnZVvsAXGT+ZawwcowjvXhrDS0wSwgzowbAKTEMj6USINFjhNx4IZJogMDDUyCFQegW07pVL4VdMyOoK2XqxjoyO4lUfT/ckEmoaP38meF5f/4bwuU4UqYQaB0tUF4bHnmlPR8zEv5D1HUWOZJQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514010', 'A23126514010', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 91.00, 63.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0aa9c6cc57028707b1d456e0d11e82bc6e2eaade4010a637a21b3eaae6ac638b', 'CERTIFIED', 'PUBLIC',
            6.31, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'tS0EXN25X8QYFb/oticf25GO8yOncpzOb/R2BSzCvxUFv3TnJsgxIFcJIjVuf+qvHygbGgYU5pZ5Sr3bTkcOAqcpDrcs4LJJmKeiU6/sH1zqfrG3dt8eo8ssANgjOPm/n42bOWLcYbM6ZggZZZ6GI3euGckdQ/HrKitQ4lnqgzCLNnQ607CUsqGyn46oidQKXPv6W+CbgIytDLw8l0Yl+jiK76bkRKQQPscmxASMCPUBLl/TkotkjvHyAeZCJFBEf9uzAJzPMlmQtIWfM7piiVIwlAiR5lgcxznhpX7i1XxoKl7w8CyG5k326FiwMpyIJlaJ8vk1IGbMm68qJ9NtxA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514011', 'A23126514011', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 91.10, 71.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ec21b33ada325bf0091eaddce51a41da8a22e11043d19442b6f2f7f5cef36bb2', 'CERTIFIED', 'PUBLIC',
            7.19, 7.72, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'a0w5pvNQDPqk4WxeqExkPJuZS/Qeh+qAAkgTx2N4Bs2AHMiPl5etk7e7/gO16R9YOicUE+40dFU5sdErpCT6EB209RPG5IBnFs7zOF506ebg/2ZhclKH+J99a6mGc9IWCvGL82uDPh8WgO4zBwzQF2q3riXeiruExnnc21fYCGz9nPDIC9yackbRSWB+B2JLyGg7f96mUvxN9o3KbDY2jlEODHp6YIMjq5qboDybUI+8oTJZ05yL/6Tu+yc4QuALPriXUYCi/Qj1aTue7mVacL3FZlY2C4JVbRGB2norXpVV7mwWu+snWWGzCJUH5gZ5YV9SQOeZ5JKDcQ9jEUYBAQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514012', 'A23126514012', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 91.20, 74.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f5c57ef7b466978aae7973777944db0ef1d656dc7e6186cefc5840e36ddade03', 'CERTIFIED', 'PUBLIC',
            7.43, 7.76, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'i8L7y0GR8zyK+jdD0DrEheOkPtyCMTOkvQslhKE2lRJ4YdlLU0B26PCrAbGHwSmgAMFFFAhoOe5bTnfXVx2uCNesrGTVFGEQ6AB10NH2mijdQnO9mkGACszzOsqbLcHWHLbgsZs/RkPAImU2AzQlSxPe2cp+TdCZJcNjFWP6p3yHiQRoNi5U1OZuJbb2nwoRTjg/W7okbAfvIJC4zZo2fpQgCt4lx8prh0tN2woiiskKqNfrh1odDhG+PxLPdSBKlEr2XXkSzgInRlLzlbLJ0w5oF128mchIDLOdxA6x1ZJ70+53eC7njQG9ivMtvHW5N58FcsTSCcGhz2c+uNuhzA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514013', 'A23126514013', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'b22b09216ffeccf87aaf8fccf5cd44f7fac82aa9949b39131d0dfc64c792bbe2', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'n/DwEPtLobGCtS7UJLDdt/B/3xX9pDVpOB9bs8F/nKmNiM8RYwO5CbvYZA9d1YMBf0ULrxXlgqYguAZmdjklf77EZV+9cJqwarJ3VuHf3lsOneejBL+vCnBFPoWRaPGpLHFtLISuAf8lHUA0tYQpDdIMevVeXAhk5dFnUxqq/JmAB4UhUrhCaRLl8E9WgN+42aNYTuZ4LOA7C0RoKY7y7dsceDY0FPNsESjcjYrlJH809f+IAKG75O/RKhzcAZODPdx1aKU/tcYdnz5Ksu4dHLSa5d/BIyhLitv3lEQHnOlgFolzyh95Gp7p+B2KXV7o3kD0hxVPMbFZa0TmFs16Kg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514014', 'A23126514014', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'a6e3b6f79f6dcea07daaf2d42b04b2afe6ae8561622fe8e9df96f8445efe458a', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'VwLdr6RwS2PMPRB8aSuXht9aDS8Ld2YyVWlZ4Ki3IAOvk9gLTaQMu/vGu2yx42cZc+3Iqhr4RZVK56zQacVJFdA7PP1B3pqG7ydEsqR/fzo7YamviwUUpqkTJCIGMXhFo4/5AJFYyaLGxF7pE0S81aiCXsABmOhN6adgMXQWan5SWG4PXjqtuek45VcnzSr9UryuR3OmspRZfjhk7bLpx5WEWWmSRIC25TsQH8LZ6H6vjHsZZpqfnhmi+z+URu9JsKztvnyZFcXXtNFPVoO9aCXrah2LRHQ7qtSzDCR39Tq5Bhxsd2J5FgWeK4g7bxtX4rH1Ji3k5uNYwmQA4pd96g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514015', 'A23126514015', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 91.50, 76.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5bd97954da52925ce116df97a4737e5b4f8653736f78441f51b8aebef68f734a', 'CERTIFIED', 'PUBLIC',
            7.67, 7.82, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'PCFyC1nFmu9JQyJY48XtfQnZ1u91REA3SYhtw9yVIZmgRUmytdvEMOJD0Y5FdzQAt6FoArLz/YM/Cl84UEbw8YfBXp1ycX/023K9tfR/O/aCKyJD76XPIc60o2/B6nvJ13X/vTAXThSx3l+R0MMGkgJuqAVlgkmxw5cJUyJO3p3t/8/rRtReh3VX/KDD8bioYT/sb9y3WAVYTb6AMKGX8DDQiBa32XPJ84686IDJCY7OqBdGFqwv0PgP02Ie0skBPQITzniO3J9n7G7U1AE7Zc1/Dk2o+UXj20uegPsTK1lRDoFHPCmmYiWgzOjbvALdDdpSJDbdnZmNO+fv7fYKtg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514016', 'A23126514016', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 91.60, 67.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1d6881165a52a8614eb00085c92450b4adb926912c261ba1fda57f70a7b3d995', 'CERTIFIED', 'PUBLIC',
            6.74, 7.71, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'F3cJQCHRkSZo5FVrNtPY8LJe+qi8LOZKHRZvN29avUZzsUiEyF09VCvobRQG+s/PAQPBDYBd0nMXLPJR1qSDekZQDQZD15rYKaj+N6j4WSRyya9Iwr2Nc6CpA488NLbflTkRKcsDTqW98R5HQ3FQ1UsUBpmQDU/Bp+ZGiRLssiUOQt33MxANTzl2DhMo+6O7I7TQ2B1B8zG/fvfgOoBYQhYzoohdqet749Rhlk8qQ5iv4pckqDBe2d6F9xz2Esf51mtV6kxjBMF7ZjP0Wj187WO300Pc1d0IS0YSQvRf6xCSYymcnA3MHLsUZMZ8vNgW/RZDmHz88+rURW5+6JrbAA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514017', 'A23126514017', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '86f3dd4391c6d24ce04adfaae2b3b1f448471b25c7af754c140d2d34113d0ce7', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'L92CVMtgp0+PFVjC8+tpLWhys8b6BAtTMdzi/Ik3cc2qTFwxYbUmh4rV74iofLq0pgsrwhNAjT9SSKGMJCm2qtY0uXqfojmBXKtgZRg2uitWIk5EaQSb8ZuVSNMjCodb1EFYORofxli3Bj4JQmErcDlM3YLsOCyn/gz8DMINkktXlEwvDYEcLV2Ac3IpL955VPGUOMALIjboFnph49b7L64ksC3ykt5pysnqKmrgMipmnaX622vRb0ubSTRiXCKAdIxgPwe+1+4rUu0S0Xve8SMELmYKVkmAntQw8myz4cPDpbam/KPUch86ZXfUMLez2NvGZ2z5wVcKd9SOKPGiKA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514018', 'A23126514018', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 91.80, 82.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '00013dfcfd24b5feeadee761afd2ac07c36d8a6f7a6a7976948e7e61f40094b6', 'CERTIFIED', 'PUBLIC',
            8.24, 8.85, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'J2pNqGzemvxIkMJSc33gtiw5/u8aqcmCbFOhAa7YhNIeExrXDZOWC8oFYvWYFo1Rhh2k3GuvZILmYgE/W5+idCkBat/bzgf8WhHr99qAoahRwe8H4HuH1tHkUxBLF6yYTOJvLUbJA8XaGi9b5Xu8x03b+TCMNL5KwNi4ucMU2gLrpTa8BUldJa5YBe8tVP0EOY5SFNXoP+GMEOoAmAJLnEF9mTUHY4/dv9F/QK3+NF86aZDeXT5O7orpkpjjmtS7PnWhnyWWZZ1CBdPTjC0ZG/FXexmG90qEHDjCXVd9UjcY1dZP2qi8nW+SLfypRRGvd8EUVGH3C6UqprFEhw6T8g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514019', 'A23126514019', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 91.90, 68.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '53260be5d88a748d62acf866db94c3cbb3101ab027639630926011bb9addf085', 'CERTIFIED', 'PUBLIC',
            6.81, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'O3bZU8JYEXyL1VhQYWpBhGjk/CBqOJS+LW3LL/zL6gMq6ykw0MDeqCFsfONYGEzYvsxE1hYFpE5JobuHKg+iJCY14cvox81X66KFRBdAprUvK5xtUAT9Z34QUok1H++y8rlTNFcS5ZtfN0jbaKlpofiIoXTl6weZFzO6xyRDRK20jLX95xcYCYs0Uso59s5w6gCnOfD/yMnbcHTyFHDNnTQ9z55TZOR93vyDsJEGz5wibrb3wwjc9lc/uiZPLlmJVTNsAqsojSPdFFX8VFkuh54x1p8C6956bjZB0LvDiAf5imcghVqR5OQ+fRKL51ye2KDVW0/jBsFanq7MsMsmtg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514020', 'A23126514020', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '534f9c6257109005cdf19061cbdadf55feb6bbdc44ca7c79cfd2980b16e563a9', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 4, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'HkYfvQD07/QdhIr4je0P6oh71sL1DSnn8X76rEBlPX1xb1sPeh1Mcc2ZmB+rh8qTxiyv3Br19kV3+TNDJGQLUUu4yBwwZ7MGHsPYmYtuoXkKewNo1YZIlp0+h9w25TPVSswLziZuSwKLxanx2FBVQPYkJpvmxuoHFWyMWnm0PHUCN1MIvs0d+c8WyccPlF3PYLOHcvHSUMb1Gu1gRM+kVfKwKc6yrgXZ+Bf5gSfyzlLgWREzCHWGNp68DZ0paGSjKF3lb2/8npYS48+nTtRlIb1lTX2qfQQ5ufRzpCkjvBaeqzTnapqLUdq8SWh1vdEJousFxJJUGl/WK5bT3d6cQQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514021', 'A23126514021', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 92.10, 79.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f7336f3e0dd67c044e7d3acb8b1778c9082bd5dacf061b9d1ce14501cfa5e669', 'CERTIFIED', 'PUBLIC',
            7.93, 8.18, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Fobhy8O979iukd6zHGxgQCeVTRy+H1S5wMEBhys27jPZi6IB/KbyoHr7CI9pP+hcrxCaNH9JfESqau4bEoqV/esO6quwvRik/BWFrzjjyFvkmj4lzUxDfc6n43VwFQmwR8U5QuCTcVytF01lPvnUS36dwGATpqVMnO55ptnnjLt2YCPTZi34W/Xlwun6m63qbo2tFqv95c/P/AIlSUys0HfguS6ypafB7mcV/xAFfDtg9EcB2pLopNXcE4BoFIICpeX16qJSULRUyPwPKEF2pVtesfRtqWuD/YVR1EMjiarRtIt13PZved0yWCSC3iEpTUWBOWl8ri67Fku8UX3gXA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514022', 'A23126514022', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 92.20, 78.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '29f8cdaa712869b8815c0136609b08b869a68aef3fb09128339fd87bd27480c7', 'CERTIFIED', 'PUBLIC',
            7.86, 8.23, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'bNlUMgnNXIZNXC79ei7Xz5pSizW/kvLipBrMK/kPlz/foQ6HszUf/w6eMZTBeTeOPIYpQznhp/oAmmxfrypMq0iuRU1USqsKGWOPTU2oYp1be7Pj6lrJd0/X0fwhZ8qi+N+jBWPqKeoIswOgrOVe3ATRSHnaMSZiIgx30C1JeXhy0nynseBjypSdsbrn2l887tWFS2Mf56+p9d3U8h9CtkdY+Tc3fXAgtLf7CdW3vswYnOZFAYvFvAnPkgykt0vblx8BsbHyoBKGcXPj/aRlP16UBtr5Qk1wKWdaoC0Vd9Y41g3Bq3logSP/+rumC0kvBv7HkcaAMdgd20EIJn9yZw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514023', 'A23126514023', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 92.30, 80.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '11ca4065e0013c90034d35881f61da3c149d45cd5e40aa2dda30ed93456f1995', 'CERTIFIED', 'PUBLIC',
            8.05, 8.48, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'hAxbSLA1KyFUWYEUoM9YrjPKwm9zNI6j+hT2SxHv12+ekRCyNgcqvdOJ42oo2qMlvbSgtrIcY5j4xrfTq0TIxoYk/kuHC0P3/BSNhcJlyiVmIVDojdnn4puidFJDxLZdSrpzvHEtEeGos1YEX6NQtWpZfvuSwCnLmnhXJ1iO+mPiHtFbIx2hmYauXKdhjAJMXHlwxh0emb45gYUcFnTpPOB0LmPKqyFiizC+xNcFNaI8OvvJZASyw4aTOLbFHkUHTHQayYpFMnYvhrTKNztkCUMvaZFn73t8V5kqNa6jhKHgUif4wsQVobC/E7ZokUaco4i/5mHataztPazmsGhwXw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514024', 'A23126514024', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 92.40, 83.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '887ab6580f6da3e2ff673a876fb60dc9872070bae258ed744050cf8b01307806', 'CERTIFIED', 'PUBLIC',
            8.33, 8.02, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'lqCCwqfgx3sm4d3OxatgQOJNDTtIX4AD7loSUlSg429V5Dt10mZaderKzUc+w66NoSa/V9Cf6odxiIRDTAGLRPPFz626lUnxtbsTu9bwmAdBEYNj7LI9DWpcYdWRtw9knXSnstKtTrfsYkvorky/fggmLAI/BtkDk6qtTysuWTsTUe2FdHs57p/4770GJReL+O0vhy7Hn8lrYpGnUKfDJGC0uRKwsCHDgIxAVoGkxzuLRopFlRUHfZqrvpYM2UUbJwlaRtXRjO6qr1lGr8+Jtha2xyYWru+mEHXUmYlygn3y915uhpl85Aedw+8V7PDGm9FJdkqo9PRMA0NEhJQ3dw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514025', 'A23126514025', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 92.50, 81.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '806166205650e6243614c8c833d7f7352ce94b6e9b0d8ad741319857c4f69166', 'CERTIFIED', 'PUBLIC',
            8.19, 7.96, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'hodFlPxa6+6KXtiiRLI2Z250nhSlZxHPid95AJEvhTBdPzpxVeizPSfud23F3u7C6HcV8NyDZxEv98cmeGbEdm/kZ7jFxRwdyiGft0x+icFz1NwxtLxhtFrBbaahEXxcZJqnPo1o5YrwEyPKuyS1Q++IQMHcm/Eby3+MbrarlpScJ9kpgBGH57BLbHO5HdPS1A8PzHsG8PwNoIF5zTGduexQvf0YkdNLZPrMjO6NMfqcS81JjrS7tJDe+a9qNBwW+XcvJT2kzPZOWlkltVeoAdE0azEPx29X/C7xe8fiPRx4+675f0XUei9xz7FCVehgUcSqwj3YdY8DJ2BcFj0Ymw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514026', 'A23126514026', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '5ef025fd9a490500cf55f6ca5730445d027fb06f68a127d4d8a0d43bc272f6c3', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 3, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'hVVC6vkP4EGhhqrQR709HLxjPsIht136sgy1tTOgZtPGreU6rw1EiOxY2oIUnuLx66QRvGLwdIzpLTcuoodzrcPgWdOJvxzVxB5byMJx3FPT796DM0tQJFUlA3TQSDohxb/gHi273SiUcyp0rZasL86LLmZjk0a47YT9IFNbC7yhCmiKqyJzoNIs48LZYuAZZki08Yl79ciKWmDX5N6F8l6tSQQ1M6U89uE/6imRGvDGYX7gqUDL+Dr6dcy5Y12/0gm1qdMRAZLO0ebbDtWnWpJQGZ/yKzYt0qWHb7jSz2ObTW2TBy6xreMettwTekQzHOIKbjKgrQ93Qt0GduhqXg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514027', 'A23126514027', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 92.70, 71.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b698b0371da4025a90c9ffc41762e661afb531f89d89e956af970c2a16e21c8f', 'CERTIFIED', 'PUBLIC',
            7.19, 7.80, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'b4s0r9JN4416UxJ7jpEFrqHo1enK8+vxWwWP17ErhxS1CkKGfUV9Zt3uUuHZi9cHdp5ZWA7cBOeuj/E6RoUucRYxjW5FVjeTwCC+Rou5yF38Pe9XLzAhLn1RgSrODozTWlI3UD+uubzZT0rIQzS9FjrRQbmy8v9GIXQMB9uzE0P46OUdPur+18zU+3TAd+g/vx33w+VVZKBj+Q+RhZKGgG0qqBmE0OkW98XrL6uAUSBGb+OUh+9GHNf7LCZWJ1m4oEikh3ZGUtFLUwM1uV4ING01QhzLfmOvH6pVaVFtRco7rNYRAIAeshuDOXFPdiMmUjzxgss9KaoELpUX3j6Pjw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514028', 'A23126514028', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 92.80, 83.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e64203a021f11028054a5e863b07026d9afd367530816f41f2e3515c7aef1d12', 'CERTIFIED', 'PUBLIC',
            8.36, 8.05, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'oHrvbUbbrGJLneYP0Ak9QziNnepTOZllCgGANItfin6C2q1KSPxridSI6WEjs4fiRZV8+OM8JjIbpQ5I7CWlSpJjHKudFD8nvFLs4NT86YZaA61+4+2kBT/xMY8B6qTbgiV+9vNF7Rtmy4Irq8qpAZWnOFCMnvgGpfbXI6OOdOg3KFzPcHuJDXudKewoR7y0ApBHjZGYgSaClElwgQl6qTrC8hewKMPOGBS56BD7x4bGK6rCHZjHldvQfif+E3Gj0TUcEzdBRcL+RR+AJOGzZvJrDJ5fC/A0cWfqcHO9XZCapuMztm7foKgW+mCvnQozccVKsW1AZF9nI5RjFY6Vxg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514029', 'A23126514029', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 92.90, 76.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '851b28c76e737ae8439114392a651794ada6b49907e1acc64306ad3ccfc46caf', 'CERTIFIED', 'PUBLIC',
            7.69, 8.02, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'jVLmfQltjEmmJlJnxToEyh430W0xkN/0tlH5OXLWezGA2vav8xZT+2yfEORR+meL08FU5kDkpdaKrIN0FwdPiNUM7nXhWmcL3yZS6UEYheydismp5wxEHoR8FOSjOx/4D2lXIRLJNUy5Ns/p/SGUNjQ/le7g7hSVaCWyVz1gdL+vmJCSvzYUD/3vfjH60KDY4RvUJJnSatI3kiQK4MLtkR8cZpA2LczKEYiTYF4DFQVfej+td61sqdPtN58l0rVHnbXxBZ1XzqOnvw8kl8STuOBdH3bNKiKFk/9eg0Ep2fj+zs3ZSn1N1qUX7LMzeBH6SK/IznSwFyjRJIqEjot21g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514030', 'A23126514030', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 93.00, 82.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'fc64e4a24d5479ec3e8b0241851d1272f2d49f4f4c0c7a9b760eb27850b0638f', 'CERTIFIED', 'PUBLIC',
            8.29, 8.52, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'kLG3n+Ty00tBSG/0rj7weDJCV/rG36N/XbXkZjFB48v+t/aiOjthNyjeV5wua5DM+bcQjXSgtoUCTkPaMreB7ZnG16LARlOfFRcURBL0QUbJDmqEC4VnCHm65evGRkwXrtMJdyACQXFiSm3VL1ToreiWUbK3XFWde/YlHFg3xlBZbZrtwVQj6UV5Wz7B7fDogfsytrR81AbSpNvECba0C04RZ8I9q8A6dlthk89V8reGNuh6bVFKGEKFHRHgplatje3KiKeslw/cs2IicGDoC4tgg/I8vfuqCKABnQht/LNkbha+XPyyvODnBCxGCL7KqfjdUTalRuQWlpHNsFezBA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514032', 'A23126514032', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 93.20, 71.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd9260a262bf394d2ac6dcca2fb38e66dc5bcd9250a79178d9d0ee7db88fff06d', 'CERTIFIED', 'PUBLIC',
            7.12, 7.88, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'nj1xuynCfZRiEBLxRixoU8XCjjLe5Ou8BCJDYOgPTgAlyTtv696bYrRENAKJ82Y2oiUKc78Ls85bIvfACjKwPj7SA8GBaadk6Yfc6ITc95VJZo9bJyt5e9Av+/o2lcau0xYWhtfQcnk7sS7V2cop6Fx19PDxxnMH/mVLrOBM2sOB/pBYGa2+WVoU6wGYR9ajRE1Ep5K0aN2b7/UokZWRssfZCS+QPhaIruvxsva13WQw3GsOJfNuWATdPZ1nfYcIf95wHQBd45L0LjfJNNUy+UP9SsiWFGD8CakzOBQNydMk6e1Jq0bLySuAmLb1vM0nreYPy2XotZpn3VwzIM6Lnw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514033', 'A23126514033', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '347adb97c5717a2beda54e95a6f8ac959181ee3a1dd909b177f4b337455aa6c2', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'bmN4gguhLe3UpRyOJcxqsaoqKnD2+mIQf+XHSzycc62yG8lUfBlSdnPiUaaEtTOlWKZpnqFrIHDiNVvBTHzBTQVLt4VzKhMV/UKMCiphyzZLx7DAnhyYfhSkBiPEy4hO38ZNqd1rvGtD3Lv/AzmHox6AJZ6QkvjyZXHQv2qF/IOZqJEcrS6RMuF47UFc2WVK45Km9BccqIck6p97c7mhI66OT7CCMXOkxNZYUXtIxZh87ifXY03kiL7YnfmT89+HwC2GZaW9TEo/sk3bnBR7V6wQkkh4MxutzGsWIZvzyAHcoroZ06RyFa/i63+0fH85F9jQF7G90qZHu9zdjJY0DQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514034', 'A23126514034', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 93.40, 81.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a89719a890da4d023a5d9438efbf426b2968858bd4a623ac625b4c82b6b1d192', 'CERTIFIED', 'PUBLIC',
            8.19, 8.67, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'HB97pxgLSoKg4+wZhJ3wx4r7hBTNaokfGUBhROplrP+fMassCs8gye1E9eSMti/D5HpMYA4LKy73CYGQyoLXwx6LLkfF8o/l+mjD8gcW5SkszGep6QlZuDNF9PT7oWy+xbOMUSGXBNghV2onegkVe/mIJ0TIZV+osEpe73Vnwi/kYSWf5SCjBv7ZeUUzqbkvwam8pw53/8WR7bRIEjdTeyPOY7Fbb1UUvoKnDsyfG311ZNa5AhsDzE5D8xc6pWg9BZPAcZIbN9zcwUX+aPFwvpe4SzFXSQKYbB1Pu5qGP2hEXMO8mpfzv/FrWbGvvBp8uuIydT+fc0jDD7ZZ4Yn1oA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514035', 'A23126514035', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '059a44b4f4a49487ee5556413bbdd043f406a561f6ce9d77ba819fcc26d2897c', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'BjLz6WFbomnMZ5gezlDuVUxY5Ukhhjk0OZ+lSU2uAjtaJIhPrMCyGZN8vJBMaILqTmwSvai+4X1uhUqyo+gUBBYByyKA/u7WQFVvW1GeJBuQxM0EIoPLskqkSRQopT7ZnSLDaQlldk4QjkBQSS8bc3NrsXn4CyNa9j26QC5gPJ0w8p5koyiUp4ev+DBnuqY1m9QaGOpYGs1p9GYfOhMs1e/zxa18Vq33JB1K3LZ6shLT6ShRD6A0014XD27jSrWeDyhuByyoKfbIB0JI3j+t8q/qaq4ZrBlXbiw5aDIv3IaWhypGCbIVAdMPXQ8+plrvK4mHDknksK6dL3vYmYzsUQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514036', 'A23126514036', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 93.60, 82.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '63784185eda50c4f1f8b75c0a5ecba4a853a5e09943dfd05f6b38e070268fbdd', 'CERTIFIED', 'PUBLIC',
            8.29, 8.54, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            't307ZifbwAM9hzA8PhoJomYYgTDrVOKmj/B7Sq0StZMwsatlabcfpmjLQ2XAWB9B1Yd7Zx1LVCgpVJ5v5eLmhKbN425UpeTH0RQOWGvntk9zAQpLsn5Xb6RrAgYyrq82792TgD3Evmg/KrRFtr28tk0tL0EfkN6TA+L5qsH2Ik/oVl9ZaZBCJFAQ8By1ROle+WUrFmwE+87Jv5WK81hZO5pb3HMTskZ87s2KvTtqgXg3fLrYNW2tNyXwSMK7K6HTvdjzMqC+vXn62MxrBnHIoTMPyxzlCgb6u8dkChnXp9id/2cOe46wNJdT0/JLM0+Rpn955WDvqzQ6p/urmmaP3A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514037', 'A23126514037', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 93.70, 69.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '811049965d993adce55f8a0975672120359efaa64617c0c2889c6c39b2f1940c', 'CERTIFIED', 'PUBLIC',
            6.98, 8.53, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'LTj6y5cmON/XDtgRb9gQVZoNmAFx12rnUJL7naFIg3o1XSsZu/0sno7zTT/g2+ImTcf2r9gC3H0xfn34zpqI5NzA+z+xIlqSBUc4AEnkz6oIvMnt2lMi3uN8I/aX5zHyjZVDoOrlWTwHJNwdJTTNrZhe7LttuwSW+RmilNOse1gkxPqrwqLRcaLbY15X890JDw3GqUtz+iVdf8Cf8Ygco/wKy5Os/lOdoM8lTjlBte4d875Zdt0eDXQRKFpWhXA+svU89A2Pz6jEOEqbxUkrVEGmOMvu+LZheQi8ds+xeyEEBdR2MXYH+U6DpGRaqwnuKbsVODLV7IU56u/SF6xtaQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514038', 'A23126514038', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 93.80, 82.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '21a9045493a916a1304812573bddb811f63f0eec25f7cc0e4335a5be1a2ec949', 'CERTIFIED', 'PUBLIC',
            8.21, 8.43, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'd5AQn3DNhJCmHSVk6Cvmjl68Ptu+e9J/2uuH0MCzlSNs6JhgRV9uU7O+zm+xWv1kiGydVJKv52+fRkZOpfrJH+XZkhrEdEEIo/DIgANfDD3A2MC0GrDnwu+6y40vkX6RycHiIYHW46kBLYnF6nnqr6LTkVqSyxBlysY0yrpmkvBoHKvztTpIJhnWuqpKt+V2Tf2tjkFC77Khu0F/FawTOq7iZtw1e/JD+KH7LKiJAjffYnI37DX1T7l6VfopKUnnBIgsoIpl0LaOiOGISla1rYch2nZ02a6NPVCgIdhC/xQnP6nVIvBLqAdo6FQsPvFpmaQrjfyzHt9Q2dQIByeknw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514039', 'A23126514039', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '55a248b31a00e97b0309335a4605ca35411ec55ba1d7a428da26b328894eef66', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'AKMOfQKmXxCtwJT0rzxnq3d3mBTzCIYw5Qv7IQYng6DSeZQxdua0h3VcG6w3WvVqCqQ8GwSzNwtJkxhHopCZjKP1QIfdpSkwArPvdLAhOSStj0lwqQW62bes2/pTJbOh9DD+4rDfQjDRV8LFBdtVQUufD2qF5QDjtR3h5Je8+MHTpYaa1nOfs/JLWdAUAXjli9UMzjRMoJdPm8Eq3nbOkL5F0iRz7ylWRoDs1JccaF/gpShKBQvFpm5wqmznHtRQlkgna6a787/Us9FRBLGXK3lWxC26K410j5E9qOMHzXpTlMocQH9BLs/XViOkn0888rYbl2uEaT9g89EqoDWkdw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514041', 'A23126514041', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 94.10, 71.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '654c967804981ece284727f000be8aa08b0c584565ca9681892f9afc48caa3f1', 'CERTIFIED', 'PUBLIC',
            7.19, 7.12, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Ip+2Ef3wHa2kSqxU9VO6r2ObKjDtbNwlLspwaxFtP8TVoT1tAmX4NCsQmAoLRJ9DyrNNvFpuKH7ZLiVthEdrN1HDubruIajXdtza6m9DpUylAXq/OM/NkJ3Ok8GhIsgNSoNkL9rQpweXhVh/V7ieor8YuT09KGx14bSqjC3jTJ+A6Qjr4QsUYj1rX/8X11IL2T0CkRTlYkYpK7X7SBW9SyPOWpRMmBDCra+D+Q4EMDN3l87FbDF0kQ2q3s42U1YJlABv4pjaFGZHVFblJ5advTSSFuq7XOHmmA4KNpwOwH3YOdYIdS2YsrGwwAwleG9OGgcAcrUBcSEzRD6SmG8BRw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514042', 'A23126514042', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'ed1cb8b10eff3fbb7fc853e4994f89b2bede24c51f0cb054d226ddaa27ba1fb3', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'DZsZVFauv4KWUzFBYYMbNchD06VYODuk+2W8TYGrLKbcEnP+loXbuv59qi3W+oIfOd/jlFqz9rmRgav1OzYFxhgaqNfYm9OwUUkxZXS116i1onBzqM5+HaEvo1o3zz8ek/jKfbaFx3VNLpM+7G8UZCh8iNTFsj4XV93cJALdYutB7pABHoLmqEDrX53MfLQfFUA6INaWOAJR7MsXSjKAfbORTnzF59Y87mO9WGV+Fn4UzPVwkgUlcKepqaOH5RrGj8TVH/jYp11ijgmWPiWb4oD3XM+3ghgCLrbIDLXYa5jtA+F5jwpUAur+Km7CUgPLyznARwLsv7q7bFt7Lpaarg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514043', 'A23126514043', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '31024f7f1c4a349506b6d3ba09bd8030713cd2a689fc438ad856a243387034eb', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 3, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'V3D9D2/egT+7qv6uXg9fnnMqUlSOxy4cYlqL58vNVZHRWkwQqJtmTm2V3lHotWo5q+YTfrDWcv8rLaRHmFClhCHD3fKZk/aWJYHUpwghMuMf39Uy34wBn44zQ0dTvFHnpQcZ+0FrzlfNcbOX26ednQIIMDIi3y7yXwmCGQzY2qiK/tDBSBNOkyckOkJB5zm4ZIPpWEdQs09jCG+TO6WMKzebafqI1AwApHRgklkED40AwPt4475VkbAkSGkXLG8NHbMA++VXw4vsKHVqELwF1sFd79eHwQJejhTbb7c9M08rcNQXSydX6HAmQX7DPgkEc75WniGX69Cb36kS6Zfhsg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514044', 'A23126514044', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 94.40, 84.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '084af157c95ec8b2d35098ebc263022e48c6afad3cb2a47931babc8fcbb6dbba', 'CERTIFIED', 'PUBLIC',
            8.48, 8.72, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'O4QazWifoyb6h8Zd0e7fovmLjjZRDkPH55ZGLOHe1OT2xNnShaj3Te9dGEp3jOwfQk+KPHwHDVYw52RWevb5xLxVi5TwM4uDr9YZTJ1TEj7wC/exTYT3ToFlly2Dzf7K/ma6mrP0BPmMfqW/3T0t248/XHAc/hpFQVctNTPvMoh47JYtCyg8mOtBQ87JB/pncQg/pxxs1k64/UTg+/mTCwol6Ka61NIIclJSky3tsavrYJu+fGKXDraAUqmIxh5roCDp+qcZnbWWul18dhOTIMQrcfF3zqnEChAP0FSdU4AVTVy5oH4dxKRfq8OothEpElQ3eRtdKeVFiqU2S1dnYw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514045', 'A23126514045', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 94.50, 73.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '58f01ea222547a7a9038e6b3987b3ae4c789ebec860e60925f9f025e00e44d83', 'CERTIFIED', 'PUBLIC',
            7.36, 7.04, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'HCJJd/RLJgk2gB20IxTMCfiVf7/w4TFTMCoyDLRtCvfBlckAFZJqlB17w6grkVtTTgJBOuC6s6LfguWdqxN43hmUFxZXSmafYwHwE4TsFj54oJjQqqaJde3GXyyJjHM2LhVgrsdYoxC/HMIpDRlRonTbtGSo1M7hwRkYrAzqrlMF719k6t59GN94Oqnerkpqkgq5Mps7I+AdkpLlY3kmSWkx+QMwY//ODGracaRkw7YDN/tqSH0uFKLmKGqVKAbPi2kn78bG3lWsgxlIt9uf+qNnPZdYrenikWGimOz9xHgq/THUHQffieCRiOVVxg4JP1WWbKHowyts0ZtaftN5IA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514046', 'A23126514046', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 94.60, 62.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6a49a91feb30e307eadabad55fc667632b48b7cd3d9a1aaa86fb5469ca98fc9e', 'CERTIFIED', 'PUBLIC',
            6.29, 6.56, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ag1IXFleolzImc2tycvYANLgvTCzexc0ug1rqnW5VdEzP5ag08cuBlauQdiaCyCRz4cnedZW9hKpY4DB9JZkoKg+HKnhRUiUgV7yboxnaAnHjpSQUZL2mjGsxvzw1FzI6jCArC7mb4Y3Ki6/nJkjvgk8qmUfCNSG+WA1HyaEyHwEkXIvCsI5eTrgoQQTbgSaV/QCrcHNp5R6yQC9mL4NomJ45kU5Fsz5yQly+DKoqrjb/i9HveJ8adEnkyvYEKXIUVVL9tQj3FXgkGgISH/TnkciVGTRC2J+7HXZtPoV9p3txUjhUH2j/5F9PlWyAG2VBAc5QH+cmVTjb1P4srdx9w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514047', 'A23126514047', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 94.70, 87.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'be720ba6388920a2c1ae19890b2f1d290aa0fe7f00f9769b384505cb2bb437e1', 'CERTIFIED', 'PUBLIC',
            8.76, 9.00, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'XxVbmpaM3P88kwFEUMdgxIyB1cOQyUd1sqvfar5eiVSSZfwv/EwXukg1NjgoiWYOcFOM4XZJggUZqMJ5sw2vuvxshKlbRZGkIl87AQTEOM4PiALrw9RtUUyoQw8krmyj4TR/098gaM9qfKsbgEMTWTY+9j1oo++Ym9CpyTxBzn3QmwhPWDsT4c+TDY6j6rKIy5Up8BFdG6hdiiP/i5/xa2os231BwL6fEaFlzzohqCcAREAVDEICZPajLv3G5rCH9c6us8zTKtMEI6DFgl2cDu5hehiZuLTykYNG2fqqYOJlTAMWELcgToQ9LJ1jKwp4etTlK7CWzYs7yKZ+0mxX6Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514048', 'A23126514048', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 94.80, 74.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'abe2315cdceccd1faef27442e0d07d9fc428c38bc44099c0f60a3a21c47f0a3d', 'CERTIFIED', 'PUBLIC',
            7.43, 7.54, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'iVSVUFJmOLwRC35I1p6Hs8r+lszMpN9/qQ+N29pXIkqeriOlJLOofHN/7ttrEpuQiOmIbHKXB1GPCCq7q6EGKKqmBPMR7qwUOF//TwHUlSXFPL1cYuuRRYCoYt3HgXvFoMN2TrzRC4dneyYdTFQesWKb8NyWQkQVKg9ncf7N+7IG98cqkPgC2CdAcTnQG9SyCixnBiD0KUOqtozO3fxomAjoqiBp3+VlJegBKDhhoVg7C595jMdp5udrKYk+NG9mmORI69AMIE5Ijq2DvLSWIvOlDzKYDBss5g76ik7Ca9gLLYmlSLO0kM6oZf0I81qT1GwiW8VkNOTq4wSJzUeU5Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514049', 'A23126514049', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '2262b3f87f0421c66021bca776e918c65b4d94d3a15a3539b7d178a9bf1f3802', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'iW/NFpRc2+yJMvcqa2TW4estLAlek0kYrZjEEIHFHlzhCDo2HkWY7l6D/qE4P7Y+fVR3vYYSvQKfz5eiW3knAKeasv3eM7Dv3Ob7xt5fNu+UrtOLh5Ag+LYD4Sh6PsGKjbpq7DGBACqR41ikULYi/wMzahVhIK2U0A+afGBCvH2i3qCmAMuQQhsdrHn9WM2qkXJ+bFOq+ZrdbxmCsUqqRGUk2BuWm/5dzja2k4ugmOClPXvxxdZOIFr8ehFmGGicfPXDl+IlOHvcx1haGsQo6K0tQ/ikXzGRpbxZcZpU3/2fWmWIXrRj9QokoqmBLYFdXLvLkBALTvMPr3+LwsGnFw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514050', 'A23126514050', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 80.00, 75.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0799f25fd18f0e1f36fa2c7e0ae3407fb987b66f13807b50b6b79ecfbeb4d1d0', 'CERTIFIED', 'PUBLIC',
            7.55, 7.83, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'oKgMd52wo3H8dc9EokGIh63v1aayttfY/nAz62C1pFs2N919VeDhiXW/W/e5IqOtHQ9DDe7c8xlkt3ETUtC4K+Q2Flp147lHqldrcXCLl1H7CKnPdaYEMBlmLSVQkJ1gsacuSgnI63lyA3NR43U+stv3VHXC1kbc5MEHhSqiYRwp1FXJHxolm7Ct5tEPeYAaaDT8agwVblfBtokS/y08KuFPaIaD8bYrUFcf9qNRJv4MOSJ4YdkCEUmq0u+TlBOvwikHe7qk6//11uBkSR5nZPBvdOIBNyLwzMy9jpGZP3cro/8nkfryQrvj6yAbxZf9dkirPOnNs9JJsy8tNvA0MQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514051', 'A23126514051', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 80.10, 54.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1ae1350f1ee6b00ff659f32558aa75618eb9892beff2a5782194a0f5f9b0a995', 'CERTIFIED', 'PUBLIC',
            5.40, 6.23, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'gC9S0zgcV+3BDA5aHmuoCzvy5HoPb1UuJ7MGMrb/KGfpt5GnCG43t4nFN/0wANH0q/1OcwItRr3TK3qVqKz+GINLbbQ1Pp5TMdRqBT8Y/vXHWLc5IoDutny+NdHqI9MnqljDG04+10nuDxjnhbwyyRByWMQBRTNoC73x8k/DHaF7YrcLMl/qnyc1E8RF5MTm57TkidZKNToWN9TAdpcGwpe+e2C7E5nC7KjBkhmO4aJuB8DpIxnVSScrUNB/56FfGyzLI0s4CrwirCyU0AgPR07favH78nB2+ZN7gDL5IpszfSSeRvxhgz3PiMWdBbzeRKgiLa+HNeOniE/G9QHjiA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514052', 'A23126514052', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 80.20, 70.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f3a50a32fa7db7af1d0c846dd737412dd9c06eaed62b0122798a2f254f2ec6ff', 'CERTIFIED', 'PUBLIC',
            7.07, 7.24, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'I4FqSIClQsw6HXzsYE0Hxl0p4XfYW54cQ6gqOLkXdL+N8Hv5UoaASC2LoYKXYimyIHlFeb/BdYH4RKnUKNyYytGfK9u2r9nSPx2MKbXa/8aL20pVQY/R0SRnL+CiCxdVV4d9z4gm5/kDIftr98cxkUpip3AIiA/aWqUSJQuo3brSnGMBgamRBI40GzTx3z754eyLWqOXLMFSyXa/W/CdVGJCsDaTzS058f0dYto9dwN7ELm8oP8Ji6Sw48T+0NjvBBiwWeIhv7PR5Oyreclame3UV2JkHAfqtZCWVI53cqc8g+MCRZCUddzCl8S1gSr+xFFmmJ5lvdgSFR3+1bZU9A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126514053', 'A23126514053', 'INST-ANITS', 'PRG-EEE', 'EEE-PSP',
            '2025-11-15', '2026-05-30', 80.30, 70.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b446dd41d03c7c0a21acbd919431fa3940c03ee3861814993181f5410cfd40d9', 'CERTIFIED', 'PUBLIC',
            7.00, 6.98, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'qg681yI/C0TvPRkDiuaaCNRwe74o35RF6HOthvKw7HdhPdOTNf0xjLJFi+GhDvvEQ3KbG0ogxqFWSf//bumuMwnXT66ghqicsWBZ1Scp5moajOS284oM1rVpGIlPOMOYVcETxvfP6FkXIpQplURDXY1yE65JvlWAla+U5jHQxlmZxK8HDfrofsMMyeHnJRdTcNKxutEklDitmxvWCG1eZeL3LiBese05ahFqSP21cDTYWeNfLdBXOBB6S/b4GJkiWdXZrcj4U/+oC4RdowfGe/4+uYVpOJKHgpRwrYqjuAS7sGAToSR6c83BrcTlceIyyYX7eYTd8bS2Rz970EYSPw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511001', 'A23126511001', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'd6f9ac67c7f28da64ac280e607b60e2b6f67a6282eeb6ee6c57cb6afa8eb8dc5', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'FNsrEQI5H2LapOKxxDLnM8Gx01P5gvEySKyJ47egBR9vhMhOuB3jCjy8PngAS/PHlUPKcPyDlDtgXhtchsfFb6MoxiISpzQ9dMPQfK3FFgy5IJ79ZSGsiKHovfGAOy7A+xujFZLUi2fFAiVM7n9C1O8Ih/gbHRUTKljE3OlVHBhbdiEDjkwKOsu1ADjBnX+CFtR2yvkgyQHk+1ucVOaZSeyZUSsXQpFAA81xfnIqr5rf9T0Tfllz3UXkFE9UIiePyhMlhK5cnis9Np5BThSHmNq2DmJ0t24QdthThncUUe/cVxTTQKVuRSTTvwYt5lajRaLX+eacHVwDuqCYh5Dl4Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511002', 'A23126511002', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'da6e3ced67583fa2c1a1866437bec6a41931fa72aacc56f876d19bc36585ca0c', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ueeyWUPUVZrxB4U/29Jx0XkMTbOCQ4ehUy6a6WSYGqqKgwGMcn6bWQec0BTRuqXW8d3RarFTxl5FJ0ktMvgSoVPwM+6yO14kqYY95addsaug1TNaQugAGvKRXYV8N56SP7xAhp1iyOwNpLxB9E34alB1YrH8n0xfkxoI6JeAvnBss3pZ1u5lbAqYpAbkkAB2Zwxo1+WvIKA16uwXCiZOs2efC6tHBd1eKkGxoxBBHdYl84mYP9NnypgUC8id+tPVu7xK2ynDeMxOGI++8pWBEqddk5SqTFBdG+8VoKUnkU88C5AeU9Xbyp397QbZtvyMrJKe5QmB1L2h01YGJUC5mA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511003', 'A23126511003', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 90.30, 88.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'fb8a06730d257d8d364d3e393778f143c3d7ab2dad5a029fa77a88cfab5b95d2', 'CERTIFIED', 'PUBLIC',
            8.81, 9.36, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Gfo9zP2ZXaFfQHw3O8EHv0TPkZDv2lB7k8+X4+S6sv2WIKdHx83UMjpwy7YLZiKJcoMNeWHUsoDbGOo5BuhafD5SHBYFp91qk8IReuAiZ7cpX3AOxyYDW2qWNytxzrw6mKIgDagnlIGkmQeGLXSgMYA6Q2Z1VLIHb4Quw5PpRrND9UNMQiMF4RQZ4TnBkVUsdYFDqBA+yOrrd2ObBxJmkoyVVbbNWEvX5iFTPDmap1KpNYEpqAk19+MWJrAugibB+ErbeeePn1u9ke8IsQlFN9R5TD7OqFC4Jx2i6cTp/Bfm7Z2wVIU7sm+iw4ddpaaEnN0dLUaiUQ64fo8atrFmww==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511004', 'A23126511004', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 90.40, 88.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e79ff7095906089a1b36a2c9f68fb8d58d80bdf3835fe3237fd07eb2c2b0c922', 'CERTIFIED', 'PUBLIC',
            8.81, 9.15, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'jO3h8AXYCYHMSjaAxMSFS7AkN4v18VjEnuwUGuJpY4c9/kETXVD15Mog/Bwmwr9EJjshr/TDBFkdgTxksKd7QoXNzp5Pg/QGE++dxP/VeKSQZd1nD3xbJoBBCXrfsDB/2AsZmTn0U4rzh1f1cQem1T5yva2a64dRThxzK9LA+TQgBV/eLTL17t3hfVXoxQGUNNsGcCtcOtBgTHmoD2h91/t17Ph6XbV48Ptu0c79tXz5lAZtuQ1+O841y72F8K7EUffmOmogOhxLNBCG68RqVzdR6r5d+FZTi4TzMilceoX8cPxo2wtdtfjlApvS3WVZ+6lz240hh0OBNmGBwbCFAQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511005', 'A23126511005', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 90.50, 91.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6316586d5b8d7a3514726d954321ac4222071abfb5b72b40f599b6b5fd559474', 'CERTIFIED', 'PUBLIC',
            9.14, 9.44, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Iunm13AYFIpkZsMHYpBXCOGkDNKXXYlslvb2I3Rh93Y1QUxwNEkeskeL+PyNj6vUxkpK0rAsZpv51TT1hEKSxLrg5LFPjqma57LfodbW3b5B1GQ7Odbs04ldY2FJQeGSaFJr/87t5Q2jILM6Gh5t8WTVVPZylDMnnLqGBG/kcRplMI0PO/8dayyzyXo/bNGyyRBWuyGQfMUvWwvdE6Vz7eqFh/zkf2kI7ge2XHLXflWinoTgL1wQZzeXjpWT6NIowBvldOeYzS1YigUCQt59/W9KQb5poqWToIxFgHY+aUl3nExPRA19O6aPOO7QR4pJu34oMVmugrucTmj5aITbgA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511006', 'A23126511006', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 90.60, 81.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd51b6677140b269f1c573724a3e203b53ab6382126a4d1f70b388bab6fb1fea7', 'CERTIFIED', 'PUBLIC',
            8.19, 7.86, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Xju1Uogy5AL66kKh+WUf2aVmaeEf1u1HQk0RTS8QMNP1R8lMLJSKW4SDRvKny905GCCJYfht2iz8PAM0F+/fvVYPRcuZ03dv5UpPrFlPUJJxf5g673/hSBrI6PgFC9ADDsvP6G/20vHgKV7SRdbCzjbgw2PYiEPdQ8y9keu2oUe6KueRRAGpDhKuog4owHhfUjE/UAETv01/GswP1ph0dWocBfrYeX9zej1gnnYbeLSdCh5PF7MAznPoGYLBeH/CcOvqjPpqUB2qvl4sQorb5HkehRo94zRcDWvQmsk32qiuVeBemLrhyYXYXtgsG6/Kz0vTzNGQ8fm9h4YIidZOSA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511007', 'A23126511007', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 90.70, 81.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e838f190a0875433bf272e6c40aa095f5994f6efbb8031ef3723ab6291abc873', 'CERTIFIED', 'PUBLIC',
            8.19, 8.51, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'CG9aEaIx2+dfD+RlfUXRkZVXW839bLbq79DsFSt10QBtZq7Y87FshuHtyR0Zikjr4aqArYq02KqETwgEbQHUw6aWoh3RervX2nGlq+FDd0g5GbiDyGCLh094DLo0X/nnSDzahXz0YudNAdY3D46jAxTIN7iXwyPYs1bYdqUxn30J8kmv0opDScV/2GEvYVD+HMq1BvJjJiI3epOLyVDclW1xOBxc6GdzzJhe2c7F0CvQZBzgCLJP660RW+QQB5Q/8CffuguhNySHTWTVVHVkflNO60gb7NrPR2AX3NfDrypK39Pn4zR/xOkfAWR0z9FtMXs2wo4O3jPUVv6FfM68Qg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511008', 'A23126511008', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 90.80, 83.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'aeb0eedae793a9dbb9ac962ca1370d50d84b1cb282e2288ce49e9e025f960e8b', 'CERTIFIED', 'PUBLIC',
            8.37, 7.94, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'l2sEqdzlP4OGCQHrGUlUHgmVimp5/L82LqUQlz36l1bP4T63+HXAJ0AGffPNoumKuxtA0xx0UY+WCrXXgqwfkJtLe2qU+dMT/WqXPHRnM2tmSL5jdNkYCP41vWGBCaP2McBDvHnk/jAD295jicCpmPx/SyP02s5p4DSs9MFw+IQQA0yqL6PVyYlxyl6DBcGBMxEwpW020rpVaugQGX+DXE0YIgrA7KPXgGwTgNYD/2QEvs40zlp3XKVd9bCYVyRRtLGZTcazp6eYPhWRv2PAg8yZ0brcy2fE250PyQUN2/o/gs4NFMgQbx22ypzG/KWRl1QmoeQw5K1FEn/ohTEYtw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511009', 'A23126511009', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 90.90, 88.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'edc5ba2db595ebee44b9ff131f7da54239f73394b9b14155201513fae3cb2ede', 'CERTIFIED', 'PUBLIC',
            8.88, 9.02, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'cLp3pmjuk9HVQk2v7xrrxS92/wU54oWf1HrxjrqX4NENFPh9S6EPm1bGkRcrJyvBKcxYcYCrToWyjgNPObdmC77kMJzXDFyxll2z8QvjyNr+KdA8tAxk00AQb1KAdC0K0bmGi1NciI2/RqxiDMMCNqgw8856DQ4tGegU6mTDTAAqZlHB3IP2mTTVSmf6eNqeJsJhSwwDLPP3KANCan/2Bdjtx+FB2AZMspDo62s2j07N/WLYm1nWETFwD4CRBU3exmfMtMlihCs6+A6ffbGqfcJsq+DJaZBpqk7pZO9928qcuP2wiKk4rL/Pc6b/HpSkIj8Cr7y8MIA8SdTEgBoeTg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511010', 'A23126511010', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 91.00, 85.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'cf9e90bc272c0f3349628a117e2c955aa827de3f9dcf58ffc01a6d8c062f8389', 'CERTIFIED', 'PUBLIC',
            8.53, 8.84, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'f/02qU8wZPkBGWeB2yJG0hRA5glBw4PA+Kum7AqptQ/Ob9xhIdBT7ezfyCLZVGYKdBb78sn71ZzGeQPTH3T3x52ifPdK7mpMZNiymL8oSNdmuKEwa1Vj3uY4Snu4eGmtflxHdBrFIbPtj6u1nntfpkHvo92drR0RbxlS121tPsseSy8N/B2MlKkXsD1hWjzaMOWZESo0rrkKhVVzbxNawB8s+JAfIJeGSjHVrQBrx7EQ8vtVx/KTqULZFwoeZMJOMsr7CEG8hbhz4kprtC/4InX5ajmn0Vclou14BAnh2wqr+va5wKDy6rxQkwcGHlRNQRvBjMMFGgn5JkdL7ReCEw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511012', 'A23126511012', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 91.20, 80.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ef38db4fd588c448d3266def6d490c6c174b94fdac1c74365b0e35e0d4d51327', 'CERTIFIED', 'PUBLIC',
            8.07, 8.34, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'l4wYIwuYWMJNjT8F/K8DYFa1kF6Q4ethr7wgAEE2RqgO53sTz01CRE6INvPUkyHYzIRG1GUPSHgbaNgL4iGIUNMNogpuS0v6CnbzSYLwpny/Z5J15s9g6PyaMkXEHgESTrLLj5ssayfCxd8UTLG6peWm/dq0YD9xw6GHq6VqcL2n3dP+988Z+IrnSiqAsRJkPts33DuW/Uf1VGsI1WwBxmeL/lgWbsFlwSkGfu5P4fnPEOJBGiw90ipc0t/o+mfxpjPurKZIrHHozAoPUXrEcYBTc2jDb0YRZTdPSpyJb2AhrdNpZ56QsbFEm0i8LGgzu+mBEMHxfdaWfOEZ+lvZGg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511013', 'A23126511013', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 91.30, 80.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '85d6c4ee5022e0d273ffdc11a5120a6960a6b9a2353f063a225414b2ef1af395', 'CERTIFIED', 'PUBLIC',
            8.07, 8.99, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'g2hEwpSjsEIlByA9dUPhFBKVsVgFc0KTjdi5CO2xBuzs+F7QnNpz/mSb0egCL7YS4n5WzPUcoq2pd6b6D7t10RLVq1hNy9RfD8/hivv49TE50pHx3eYFMr/Ek1NmShGMHirRF+495eySB4a21yHzXbQ31Gu9dhm/ti+4wrC37whyH4WXh55XLnoC0jbyXdCbyfFxGO4hbB1zr4VnGkSZv/E+aUVxo+M8rRV63CK6PewJWHOR+gc9vPwe55UEc6n6Kttn43yLzXp0J/bjSXmMLShKaZqDL+e1AeP+m5zrZitI3NpG48Zrd1WnQNup9JFdLQcTE2B6qeGGszhP3DzKnw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511014', 'A23126511014', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '671a78a3379ab50035a74f1198668c434994d8b034a45947f43450c53c06a48a', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'plnHksTWg0V5rbH3IaU37dNmyeCrH2bn8Ck3MRzkJvHlW6Z1UUTxUFQXnrKZK5nwZzwXkr/bdLk0BeWFiFC9s/cfWR55wsm5keWqWoIg8dbvbGFEDbCOc/NiZ4r8/+vtNqk/bT/jUt/efvjGpolwhASxCnF52D7S58KRPOTZiJqfo/dOB5CSYYWyIKJCKkZA/PBVUh+07VeYa7jcyUjmdScA5TGhlVR83Vc+nTC0dRuOroecNb5fYTF02yHfILJPifzyX3CQBIAKgxFBaGOPFHp/ey7utgez1ZJIa8Dum4wZPHYJPEJ4dx0/LhAZ/+7j7W63skpa9M8HDWPRpVFk9A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511015', 'A23126511015', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 91.50, 87.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a25b6316e18e4f534849a01412fa0b228d81ce2e635c166865083578aaa90238', 'CERTIFIED', 'PUBLIC',
            8.72, 9.07, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ZNQYoe1tF0lsLziZECaC0PR1/DxJd45h/Ug8nO6y2d1IUspfb9wPtWtF85mr5rXuZNQWO3dcHJKGSEW4Y5kEy/+bUnuGLUhzZDyGgnfAZXKxWIArxq8qpKm0a+Sr6yhYhwlrR+ovXEvbJ96VaEfCapXHLsTiqiklEtEA1/4/qOmpdlR1Jz0aUwzlM1qorRYoFK6JKqCc0oKW7cq5/Fhvg2ZC0o7m8+aIrhcVIvfNAtUtZ8s4zS8kd5k8r29p6ilVsIj1rHqoV29uc9W9LloApj6UE6JFh8TmW5fg5CG64m0ddqisMvz3pBJsxjnE/nRRNwNkDIZHvOzNRVamsBSnKA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511016', 'A23126511016', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '5691351c9eae5c2f9204c0542c4273490fde7894fcd56801e8aeb39c5dbf574e', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'XBmbN+sYGw0MgQ61VbXzLOWo9Tu8KX1oYInheMIxinrEr1LbUWAmHDdYW9nwir/phcphIJHORbbB6J6j80VBpvbLwb/vTJ2XrpQ8OOBvBdiXKloDlsXUfo6sCmRI9aJ61WqC2/Kh+1rZnLq6fOfIYTCCRaT5tggpbWfvNy0zKgUCvwr//1FXDE+fQsOtAVlVYPUpS+s2Xsbt4/B6qVqftm2TkxreXu6O49odubIycHtCUDPs/bGoCTjwC20f6fNQ1Yl9auKzFhFZp9Tpr/nWlPlI19zS/kSH/HO1EfmUeAhDHBDfxWXEmZs/X8kRZHCEpcVAf7a/DOnME/mI581Xcg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511017', 'A23126511017', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 91.70, 85.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '01af3a509b3ddbc6c2a3ec37ab5d16cc94bef742764a88dc24e4c4da53e41e1e', 'CERTIFIED', 'PUBLIC',
            8.58, 8.78, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'LW1+BZS+Nwpz8Zy37LmsNpKCWhODYAQ8ySHkSPNo0yFrwqogawjRqo/6veKx68V/mKO6Fvmr7fARlJ/gNc7fGxHNgkoRnkl+owQohiS6Qfdz85gYF74OnbErK6t5gJipvl7TK1u3xe+MtOpPGo8Wi1roHJZJkNFga9VYeWGgGILU4w6PPa/k4AjSyEdnXfuyvp3VgiJC2C2xHwQm06AxmQWJAGggsVQIuDbTvoCQ5+rnMDOhRgetn9cBF9Tv0/qClVg/p4PvrW01EfFV9v+5Nqe8QK+obgbLLVQOFaKm5F6Q5nf/+y42As4TC3cS+s43wai9q+yhopLrpRCUOW9adw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511018', 'A23126511018', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 91.80, 78.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'cfb3f3285fa59c07a1f102a953271829b562b367c8c3109c050699dceeb01108', 'CERTIFIED', 'PUBLIC',
            7.86, 7.43, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Gj38vYztrcajEUMwMM1SerQ6t4lq8hQA7tn+2iQvrBK+eb0DnjSSTHY/96xzA9JduHYbEHgmI8RLohT6UlIHmFwQWewlRghBprMYI1h3RkR/cl7wZPsU6PuaMjk20poUx0Jp/V72xWaAHfQPNWXXahtxcvdyFe5jgUeakZmiTIoQ4bEv8y8FLzA3AH7SK2wEWQGd2T/tPG9K6JehAegOte67urx5BCvONE0r1FEOZBx6wB09IMQ3UdW4kzvfP2OPx2q/dXUamKsNmkzkHHvuMoH1Zz/i31dUe1H7twMY6AdsIEABrra8qBt3bTg3KrTRnHAkuIDGNAXZ1D0+j23miw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511019', 'A23126511019', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 91.90, 86.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6f2ecd23eb5847977bef2810cb11599915c7da54119065ff7ba8a8cd7f7a2628', 'CERTIFIED', 'PUBLIC',
            8.63, 8.95, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            's3Eun/3AcrkZwZE0vGHS4TzmCGTXTs5KT3zjrDRrINd3a6kQ6XKrpiQGezuzdJ1Aw9Ui/CZn7dpL7L+2Fhyy4uKkY3ubRYVPgfD68aHyBE7zSeyLctbbOpzMSmIHnJnRkPoGFyheBDfHscmK6bFnmuDp5pAy8qHOhOYWL1FnZO3bgToiR/hWPwb8vGKpWel5bS29rLdWHrLe/MXb6yu19dR2c1Rn6uDkw1LHIq97H82qSgdZUHcRDNf7GXUF35vEGGn0GomiUR2+nId6ukr2T+f3Rn7SFyf91Y21a8rZkiQb5U09zzcfpUSwWKU2nkrUmADtJ8Kirdu6kMfMP4FwPg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511020', 'A23126511020', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '705af6cf6c14c1a5169298ab1f85dbe8e15ee509884707d63519c0658438144a', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'RsZzbTdrIJ5LLuS2JixIllyj94GGARWYPwdLj6YfX2oYSFA4LIPTZQ/0Ri/I2jq68W/mLxsm8kDXreue+mRazdlH16jo2YClnluRo6Sc0E8ctGIhHPp5lctCBi42QTUtW5YefTn4R/uC0oKOCDZhbUcUy2lgpiBrLAjd3tvLme+cFnYby/BUb58Y09vXo3xzPFwQsS+QfVzPJdMdkOeHREwAkt7dZyI4sXEXShCTuxd0XOClZD52Pks0TdESZ6d6qrWVqyedumzuOuGv9nY56SO6BRO+qe0pmFvm01wU5N5f8AGhSW8BgNNN8a1+bSYcburL/ul8PaTrntzeqOdQ9w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511021', 'A23126511021', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 92.10, 80.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'fddb90daa2d465ba5ab3c14179393fa09141b47eb20d2f6ba240f43c0232d813', 'CERTIFIED', 'PUBLIC',
            8.09, 8.49, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'QkF8zscb/z1MzDO6WwHBOEdgYgomqT+mq3OVEp7EBGKTObeNrnoL5TmvDKCY7vnHRvuQXOToEmKXSz5vUeVFhgcb4TKzeDlKWA43Mwy6ztE/r9QDAfkFEscxScI2ATSObelfOeqCiK/ONB/3hRDzkQ6zBJEUaHBVH+WIoKv9OvidGQ+5JZelP9K43DiBuSs50O+wKGtYRLu5q+8cVbvN+o9JL5TgbmIihguLs2Z5q3LLCm+Lm9kYHMTyX5RtwVKn6PNZ2CirzzFHEHra9nCQoi7wi+64aDXrAr74XwTZZ4idemFsZ4aDGTdGmXQMiadwxKU4NCHfhGX64lzEUx2hMg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511022', 'A23126511022', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 92.20, 73.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'de85f9d2574670a3d496f2b0836ebefdddcbac5e77e252d12224fd6942ad6e7d', 'CERTIFIED', 'PUBLIC',
            7.30, 8.25, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'p+7iC0a5a+w/stZ7WPAHLgnGcDv76W5tu6yFv0p/u+TLL7gJznlUJftafozEnXrOJpDfqshtyHnqLQScpEc9UJv0YhVwTUaqLJ4lwvHNNa8fkKWc8MHA0B1Hf7PHzxEdkpFybgItuNiqnsy/RUSzr+q6lZ5wmfCrQ1ZM+qu29OH4QNBOI80ytm6NKduY2EwN8wP4ANpogZGtjSIOumjV2EdMzd22DHJt5fstpTO4LWTpuhaD8syycBB18lJJA2UrKwI6m5kfVBp4itDMnVvFLr9YkLUPyFsXSqH7pST8LGj7Um1Hq/NNdqFiFCrvEld361F61cRL0bh9DpB5z21xXA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511023', 'A23126511023', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 92.30, 85.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '669913e15a1cafd659da13e637686cd2c40e29d092f6a476e5fd0a49e72ac2e2', 'CERTIFIED', 'PUBLIC',
            8.56, 8.73, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'BAWSgpa8vfXFwvdCq3+rkClMkXGQXwKoCgpap0fTwpLZHmAWbd+vzeLqj0OmkwQR5Zq+J8ArJN4dt402TMOx6jL3J41GtNlh23ynRcE4Qmivxtp5sy40CbavLtk8C+PQY6Hiso5OHU2OLsVDbjCOkCmFZSsAyzQsbxHzWl12zzZIhZewTlV2KqsLrs+zGOUnEN49/iyfV8qE+BODOcuf5pFEmxZOhYhp5riQdrU28nyByVivKxwLdXpxr48SsNayd9whZOKkdbTQs0H0WSg5eRZt5iJM4//k9bJ0ErlWBlzRB23de5phsMsUc1N7vgyqj3teymFVdEY4hp4O5rfKUQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511024', 'A23126511024', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 92.40, 85.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '57cb8751f94735ab7ccef14a0668212e633a378e0011817ee7e1f08181c404a3', 'CERTIFIED', 'PUBLIC',
            8.56, 8.81, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'bE2EitbNss+/AYoUifm+Fd2BT7kBQ8i9Nk9uesQYHz3AScWc1Q3b6O8WB+JH9WFQMQ4czOtyErLRC6ZhbteeMXChgbigmwHEwbNIGxb7T3zqnCwyDG4s2wo3Iiae7ocLYGJq7Lky3143VXmz0AQlZR5rtBNwlB1/7mXLicLc89iRdRG2lR37AaExr1lA06kvjk+4RxDzC53kXmLz66VfiDwc7AQEcHxmWsRNo8g5LlWpHN7YDf6bNJTGyW3s5RS4iy2pn2HOlUqvCPIx5O6s5TM3unQrlB8hF4vtjHLnGlEirXksygylPXhX3fD6+S/ICeusQGHtciGAgrYTuwHXXQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511025', 'A23126511025', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '509482e0019d672e0f60eb12b1c5172aa6178950354b9128ac56b9b2f1c30da5', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'qaoEwcruplv+62viHDKWAt0r6R40qbI2BO5imMhadBCNZA9p+skTMNN0UtFkCujoN0NozRHg5abNfA9VNEveXLWSl+4keMMcuBsDhv8P6vIdxNrHYwMz0r0rXi8W2x/vpo5U7WUr1GWe7AIs5iJbeHC14FK92IjvPON8YaJzh6YGxMoe6kwUGc/iZKF0YW2F3/r3wgkPJniQ+ijvHyMpx7a+j3a+6J/Qs+vXPNtkJUn2N5p7VegiPCsRJqDSfHwo6vaGTAZYAcf/S02jV77+9O8SDGYSmu5vxI9zYuxMmnLzrnEvL/QBPZimWd8ZkikJsiSPb8b6KLLaZTd3Gwd/Aw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511027', 'A23126511027', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 92.70, 77.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a52f113ae83ef11c5b4ca951df01c28e03ebb0c56a22136658fb1e95801356ad', 'CERTIFIED', 'PUBLIC',
            7.77, 8.05, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NFMcbQRMTopyHYmW0DA1DcEvGHncIH0195x4Xdxc8Qc4KO7DCjA2+g10FuIk54ntPXnHPyJnDiVMjbvyJ/v60iTGJl3AUKGf6kWhc+Ygh6EqdSArZdfihqaNKidRbck43Wc/NF03YVhzHfbM20G15GKQKSiIwrjCj2rt2f3jzNS1f+1EnG1zl7qaErF7Det+3Fg//7yObq+EzzAwosdqe6Xgj1hYpMwqsUejRXtJRQrB8cA6VSipd62NXvotg+Ytq5J4wj5qK+6s31HxBU5IkDfLkDbX+Ukx3etBrme1lixjdNmX2gj58GkHdykGLgRuCJcXkEtQ5HszXR46XXwx0w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511028', 'A23126511028', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 92.80, 60.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '679574369fc5f5aea88a0cceac4173a93a10dee481c8dfb28e09a12643340692', 'CERTIFIED', 'PUBLIC',
            6.05, 6.54, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'CnnIIriwyloVjrXHIDew43psrUW6NqseQCIiX2ux7+ymgwRPtgEK9ZUW6OFG8XAuj8oOwQlSGp6VilxlIhyVBk8mPTDXAtJaH8f8AdAJR7RUu9veew3fWYgacwGxbAlGMtk1Ch2oO6Pcjs3d6G9LiyFDD4y/ttkxwVTpraOE3LOw+CBOlnQLlj3x11Ic9k8N2A/i+6TKA18rVRU4cCUa321xAU0Q00l+YHBx6hpF9nTKeYqEgF2YWi2dFYsemXGR8TlTXWCAXnUD+BZN/Mj9qlHY772JNFEkyzbQ93jDpny85cNHdLRE4fnShpId2G8frv8TBB0B3tSUkxCAmZAQ4A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511029', 'A23126511029', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 92.90, 66.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '217b964b31632f948a351c90947c84356a2a657793800f00b8d15e2f99236e07', 'CERTIFIED', 'PUBLIC',
            6.65, 6.68, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'HtDvwX4RZUvsf4seVoyMomtYqi7R+Wl9J0LMAuXXtzvhRTW5GkdMPh0vpwNa6Dy5proLHnPiG3yH3n2PLZYBskbngsrbXkQmkKH+fMTyQRixq2Vw9gCJZMT+lHHRuSMN5f6qxmloKdNNVZb/uTBYeOTMU9jYu0zFVyIcCc3H49TbMg6ClKrl92fs7sRsKPi851NoefIKNHBB8RB4io5LU8KwypTLyuMXyf/AulEbz4AfBRsfJONAU4b+RWdZxnD+ROObvwT99BPcz9fqckpDyL5f8ntrwhgFkrpIYYNoi9ZX9rTRhcan8gRG5K6ZJx1BC+LAX20OkCaKxUmJAGETrA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511030', 'A23126511030', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 93.00, 80.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f98065f75718e20a65ace9594f1aafc5250f19d8a775c251c903278c81bc6aa8', 'CERTIFIED', 'PUBLIC',
            8.02, 8.85, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'W4mvSN9bDEyIIY0DrVua8P9PxlFXNGDDkjfo3nDFy2E1sUuR3wLreIRzx7MOBY3RNnxkNMtTAvcPDUSijlRCqX833I+o/13O6dmVnSGha4BgGd1rSQb463An2D9Wzv7uJ/Fn2QfJ6LrHgMa32fhxZcjK9+4vsnBto3RQpiCC2swXWigi6KJyrv0M7xVYBrNyxqSdnUzfHRuqhRBu0ekRmsvpk0KAqg45iYSjVPe3WcUIov0zwzSQWno7iUUQlfyy07JN9z8uLOxPeluINfBrR1yGnGO9A1w9aMxjXiUlLQfBkak92gJwCFArcyjCjTZaqDor22MSslutU4q/qgkiEQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511031', 'A23126511031', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 93.10, 79.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'da0a39aa93b40902f4c4054d956d1de174f4cbe5b48b5d1bf22d1b2e118192c0', 'CERTIFIED', 'PUBLIC',
            7.98, 8.35, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'QmUl1U/Li1l5ZBvzENnVdG5vITCYcyo0jxfozzeUTbtc1rSm6oNVlzryU7+WxvmMV4XNrO0tkpE7fK420usSI2/g3OMOiiIVTANtzvABF5P8FCHWy71nt2otvzCIu8pLLNYPTCm0vNG/F5Ul5ge3jYh0C7rzVZkBUbaVgH6y2Lk7MVoiJAraBWEZo8H7LqPA+RtPj/0aX4o7mfEzO2sDMLnh6cmh1AVimidiYhQ0cZFRPxiPffPX14px4aV1l9eYsuq9DxpkI12OIP5b35RQ/QMswJoXpjdzr4KEgIe7//Yf45dmHacX9rppCD1j5Vs9H/NBR+YMw0NCyB3qPyaFdg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511032', 'A23126511032', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '10abff7e8e07a895fdfdc03fed01b904a91f2531932e65302a4157a29a2e3ac2', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 5, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'O2C/t3ZkofXMD3PA/wFx2eftbsNl2YJcQ6NHYzrsmrH2sTP1Qaknz4RhnnPRUOK5Z3meJwmfP8EVj3n1E/OBO/hC3ixdtm2jfULrWkuy/0euEyTzdWVXG3bisV6ljHXdjijCMSv7bHO2/zHpav1LGqGp6foz3xHvbVLJxsQw9CVNObSYNoLJ3x1yF8ut8+gVTouKXalVil/75UmqOqkefRnakR5TzOJ1KSDDdp4mEdz0SxDaX09OXJU2+kkh4sM7oik7LPVld691XRVi/x3HTZP4ArJzhgRYChloUG9rHJJTxcDISNrzCMtHexqwj2F2kp3moMdSokFCl0V3Ml0S/w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511033', 'A23126511033', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'a578690eba4ee865497c9dc4c755ca0cfd883d4b102588cea373b88d304adeaf', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'MX+OeX101IVNs+hp0twIsztmb7OR/XpyD3UwuUNzNh6lJhKKLlkKxXuTzfAwle7jb8EE1PhaCmWrAWNRg3dMb+JF5ZFz32fmSymd5p6WHAs2mMUADDZwH33K0dtLihHvo2SlP+c6HbvnlO90mnNDxpxalpT+q4j+3R3SofKT2z/Xue7o6F0ddwBzHdFoNzCfXyH+hNrK/cJyqSTZuohTCag/0jle/VeZUz6S8VgU9HGx8p2Wz2t3FlFr8jxwkaBYedOERKsdG1Ommz5zBBKq90ay3bOK6iSIbH26eGSJxGvwV4MMWDmCO6oLqGzVHmK34ItypX3NL4N+kFVLBq6Zfg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511034', 'A23126511034', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 93.40, 75.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7f3a91fec9eb5bda17c821f477a1091471035aac3ee38d06f9e27aa5949c1dcf', 'CERTIFIED', 'PUBLIC',
            7.51, 7.46, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'VKNyEcHkTGU1UV4pd9koflaQ0pYJLphR44IFHNPtT3b1vCH3ZgF2qwo+uOPD5x1IbOpGOi3uMf3zLAqcRCmsjwKpEGMD0QxkMwDIkS6S771wUVXdb5MYthQUO8MF9cLz6EZERr4209fJIOkGLXcr132JCRA63vKzSXuMYJ81ujtDz2hsmQdWZMiMWBM2HvH3Y/J42tm+mzYp9EmQhfsDy4oAgfSAo/y4Ib299K1n4C+qyIQ49btR0oXoSLGoCLNbOLPQXrtBONRpot2AVyuuMouVK1AXNrdDsF4dPkOSChf8KYp+qbJDbCZhCj39TSb1jLrKTbZmsEKV9gAAcdBiTw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511035', 'A23126511035', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 93.50, 76.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1e0b085052d8772761afe6a08d4f285ed94a5d8a98e2981b4d2bfcda2ceb84dd', 'CERTIFIED', 'PUBLIC',
            7.63, 7.59, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'r9SiwLeO+RHGm9XrQv7Pu5x7d/a8UUBIxeMsjm+A4cmLH2vOVSkWCDNqLNoejctrFoZRcT7HUtvO7+x3AzQjYD8TIN1yzgWKx9+aBJy87AB4oDIWlLW5Cujw+8CxpL2mTXmkfKnwXEvVu/BkPHPwOwYnpdgaxaeLso6oYlxQR7lIywcwv6pjkEUNLzENgHObB5MIeWnSEyq/oZAXVNYDfi9rw8BUdWvCEJ2n40jYCMEgJowZFJOQ/it7GMeQnuhAHpLFjw/x0pxfF+j/JSHP3PVpVxUiTi7zjFhvR7vAZtf8ujUrp5W8uI71kx2y5RF3zZFDjCsjcuTl35aETnWabA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511036', 'A23126511036', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 93.60, 85.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0d8c004b31c8f2fec0c52335c08a9eea2345a3740677efe5a1f8af0076e11bc5', 'CERTIFIED', 'PUBLIC',
            8.51, 8.80, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'is6ewQCyr9WHM35dtPNquG2ObCRVv2791OK8ZAuWp0ZMI0aDCInDwxTch3sCQbiOmlF7AROHTn669er8OAyNUDbGRpWgBjAZ4RxfYQrXh7PKKHPvibJplWxZZ6Un/7MbvnSAOvwdgH4BKGr+auZZaAbLh9VrtYQUJHZQdwL0AWZN/BnGnO3Q4uwGnm+3tReTT6rh6Zd+mMPOGxOPpR4v+Oel/Y+47pRgzXAydKier3pFCn+nH2cly1ySbNFIrT9ihdHzPpZwCscQqkSamBnqV81e7bc95RCG7wqe4qUwbjVoPfXxkB0Z2pi0rLV6ZEqLL93skbi2v6mZAHqyrJjTyA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511037', 'A23126511037', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 93.70, 85.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'bc4c887c3f013198f5ceac7b216edb19b7984f4a47e7aff4ac2f0fa1f35f83e7', 'CERTIFIED', 'PUBLIC',
            8.58, 8.97, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            's2UXXb8ZLYE1YtVV7H4MjWZm0zF8R/YBb3FAMw/FK+WoDL6M+r8wvpQCdqLU4/eq7+iXK8WC8py2AHrabq1JnvTyF86xS0iEC9jcxVOjVtap91sFH0egHew8egc+UMXEZfwQuNp9idES1JCgNAgvL84g75O5iduSw0Mz5vsAOl0kIHOEvgWhVytYxHu8iqdMOL4yRXcmq4LDHYoBYC5JA2arsmb+XQtvNLxYfhTaiftDjI5Cn6kxjlEf9zdeTc5cJOyi+VT4nhLngCvDSJTMxahaz6kdtevlzr4JyZ1hn4+9e8T3YU2y2yFMLpTIf4wkWlfLjZGB3r+mFXcgfVcE0Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511038', 'A23126511038', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 93.80, 62.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0bf33db563599ecd20f4d70b49a2d7fbcb26aaba0e3f6d50b0915ead37682853', 'CERTIFIED', 'PUBLIC',
            6.28, 7.46, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'AwIbIDf6Oa/kKu2BB1HvWZsm9lBJOnTaxgKG7bzOKqVruMFT3LvzuTVwVJTt51DtKs7sXAQfcZJpUGpzaPyuFbcgffBgeTb+4At+Fs8CCikkYxi/qIXkXQAwLUJSfwItia4MiJNaGoM3UejQYXS29ijBZsMwDyuzMVAl7Lz91g9bsF7T/TQnBrK/fQjar+DQDWhqXbiw1cAPHovDtqow9YhG/61EMu5wvrOhYunz7Uxb8UO6aEAe++svrRLLllBuH9ULNZgISdhv6bUYtrYfOjXo37YB+ipNPyaG40bQyTG/rdJ1w22XSTdB5ttUijPRb9RXTiOgtAFT8HsqjW+PTQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511039', 'A23126511039', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 93.90, 83.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '3a9b619238260cbbab39388789b063eb1c7e6ab22f11aaa28f23e70cdcc6e554', 'CERTIFIED', 'PUBLIC',
            8.35, 9.04, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'sfmxzFaqlEbCOXglDAo7sI23QlkqNs0V6jdD5/+IR34TFkx2jstiKsLc1lHNRdF4McRYMdZHsJ1qsu1CVMqev/bPaL7DfebkuJF4saxKngUD8sP6Gdda82su088dygBjpeT9SuxhBRXykY01cmqpsw4500k/LcTiKcEkCBzr1eR3friyUEHBlL6wgocOi684Qyt9iDEwpUNWU3C2U2QHTWf7v/Hq621kjlq/OP4id+7fQWJGmhRojnWT7tCJfxEIu5AUo93JQvaIoqNuD6kYx/U0otW4fLkfzAWu6FKxAFgsh1vWxxrVWfos9iDCoug/2Z9N9KaYtolFrG1op3WgkQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511040', 'A23126511040', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 94.00, 81.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'ed0a08a7fca5382c7c982a9b43f307fba82450ec3b5a2e5ba6f64024405c48d7', 'CERTIFIED', 'PUBLIC',
            8.12, 8.80, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'QCe16KFJcjK25KsztqQS2mEcl1B7qMUIrSnQFmw8KzslM82RMy9V4CW1o984Q8c7jpvdT5oPQUISZS3LsJn3e/QR/oBMCrB2DQ1060viPr6zE1TUQBcBTdb/yvG2f3+fDxQt/xqawEQZH9IpYEe+bquLh9Orh9Q0hn9k9c00AVhWWerop8TyFNzz0DHiJRcqkg7qii9QXKudSct8NUMEPo3s2Afm01/fraqq1X22HskzuvXd5ObuhV5cj+/aBdDZa+B5War6tMEvT94oPHfGQ6XNH84nwVTQeM4oONquViUGfEnYEnV6VvDqIcVYpwVC3KjnnHML3DGvQYMvQ24ylw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511041', 'A23126511041', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 94.10, 92.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '81ccfd40c255f6136ccf4ab2345fe997e1457368f3519968bf0dbc9e12f1cff9', 'CERTIFIED', 'PUBLIC',
            9.21, 8.90, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'A8A/7Pt3+Y8nJhaXdG8WpHgDVQivrY52behpc/0l6W685bbaLSmletudbMQ7yTlL/wFnoPnkF7ukH7p58mzPwGsq61Idw+O7VH5/kqGLrrgSX5/q0XABUzrX35M9sRsftbycCjTudJeND5lQLi0BQzolzxStNx7fD51rAkU4IuMbpSD91LRYgdfcJSJnTEncQwJa5B4//cvksxnpx1zJxnpo3n3F1o4JnhEjpHvnnmdYnl+YeCophRAox7GsoXJann8/i9c64bZ/X0WIcjB1YiEUwDR/fR8MIMLMLpgMG7MUR62KYuoBT6sJJZ50wHlnCWwcb+JUUClEDl/6Dr58BA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511042', 'A23126511042', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 94.20, 72.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'f63575aaec4d2ef0eda8559133310895f55c2f51793aecc9802c0f72e892b1c6', 'CERTIFIED', 'PUBLIC',
            7.28, 8.00, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'fT8KT+XdruwL+1/C8GcOg3Cv9HAfN756aPWfpBJ9JXlCkvg+UGvaZsXNkw+KU6X+SN/BH1XS1zbavbDUM3oAsy8HVn7wZw3ACdK1zLWKjKFWsAXL8kH6nEvZKoLkWa2HJKTN3RE4CZIaxJqc5yVmqdWwtdyb8xAf44gYW0DgK3hpP/9FINNrHEP2491VZ9yS37DUTU4ZQM+bcIxHZ1ur1QyuDlsVYs1ru5blovZrXoGWJSvJS8Njy7q8+RkivoOXDd5Uy0QKE5BWgppkOJAcCZ3BWr1NvivLtnkNjbLsE6mXlYHeCEUVmdCL3VDw+vaF96Ci6rH8Pk2E2Tm+a8LY8Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511043', 'A23126511043', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 94.30, 74.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '558fc43302dfe8f2f0a3ad493d4ca18b712eb2306d14f584572d4ede0111fb3b', 'CERTIFIED', 'PUBLIC',
            7.49, 7.74, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'DDAX6FICfr0/GZ4YCajkfQrsck60C0SuPr3ALlWZEeGSu6Ec2scHmXIfPjH8qU1edbGKraWJkBynRvtRmyJkuXnYGDOvyJUYX4On+69PVU50lTHggrnJzp0cabMN6XmzdxDsxnzjheGbdXTMOCmb1NsUjUDPU5Rum1TRF0JMmvmmuR3pWtCXKPMe727yLJlLkLmbn4RyHRfPm1fmLAYsFTSSLLm3M5dFKVhAvdaYqqfNaIYne8Vr5RZaQTLDPSPg56krbhucRDpR1fuHfdriho9ZvrfpoIJCk5lVUzZTtl+SEtSsfQadR5C8cKP0l40UprUe96iAR4lf/maqyR9twQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511044', 'A23126511044', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 94.40, 89.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '04d446c98f928e5151bfaaf4973bfe8a5688fe08dd126e2559ab15cda9e50d47', 'CERTIFIED', 'PUBLIC',
            8.95, 9.30, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'AYN/kKt/ZQHbgrpFIdJqzx0Rylv93kNMu9Uy8EzT7zIWlQxCKZnGA4/IpyP/73TYV4qBR45UVptrnw1rYQnEHLpBIr+LVoXRTy4F9KK+YTBA+KJbfpLF2z07CozheYbn+IrgMaANs97LXpTenNtXF6Fu7/kDNhE89s/Z74+4IZo3c33GTQz7OVlx9V41YYrM5s56WS2owQWdMPOYxhqJVoJ71MSwupPi85o6W7M/z4/yHlnRR+eGKbdWARmxOyyNwEFwcIMq2eJAKPMD9EdoongYmGZNURDw3svnky/4pkA1Oi210czhPJH114nPbGQLvOEJUA/WcZp4drKTgkswPA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511046', 'A23126511046', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 94.60, 81.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '1af5656013b12838952820cc6972c82a620b520651e68e8be9c8e3dd9e78082a', 'CERTIFIED', 'PUBLIC',
            8.19, 8.92, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'WzthtsasxK2N9B2GxFTHuuavo6rjZ4BC9hMFR6M9pelu1BjcCTwaRTnxRQ7SUR/NlSYMiev6IavfedfIcbWEbI3m7yyLfak5GZXAVlAOQMWfiLAOThwHnxnJO7zqHr0SQEInABIJJKnSAwjKkVMmxA929B4beCYdYwYhHymCA7w72uwVQP4JW8/K2dhO/s9Ne1kgqZGiINqyQ2PEwbBNqBcQtSLFVY1M16wAo7NgbZDFMw7A3s58UnNvU/pl/dzBRDrwQcxX17d8yiQpa0yXKSCSSCaXRcyppJuOJSZgxYnq0z0g8/d0egYysrroXLhdW13W2BUJX6X7IPWzkQVSIQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511047', 'A23126511047', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 94.70, 92.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '932a2c92413864fef1895ee134114f1924c98c3ba35c85f7ff6fe50c86933205', 'CERTIFIED', 'PUBLIC',
            9.28, 9.46, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'vEz0zqQiifWK90eXrRI1nihU7V73uh0twEGAEkPP/+hlxCoPfdq06e5ErWROKYHk5UbSVdg427z5y+Z27NJla6qm9USes4IzEEBiZUT1JdzsAHXS3D0weXwt93UKq4RhlZz/IcVcRV5rPjk8waUDfOgHIul+FVPCVV0AtOc/apR7rhTtfLfvV53UKUsYK5TFgqyQLuQ6MKw3cDZ2nSNe7ngtvzXQbyJ3QGGYIr39RZFsT8UVkF+afyXht9Dk2lu5Aw44rQGIruMDhI7mU7iOxzBBM03K6P8VS5liWcZfGt1+5WEFiNEEYjpoSxiUcjQU++zu7gWeUAaKnVRuKSuinw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511048', 'A23126511048', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 94.80, 81.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'dfb06044358d9414d872a958f42aa2a7e182cc0f2ee74f53f4e077a520fc2fe9', 'CERTIFIED', 'PUBLIC',
            8.12, 8.88, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'tglFPsgn1VsqjgsT0ysaJxNV1LuOtBQKPj6gy67nv7O1dufstGWpRonRZeFMBJTUvDtg9M4bXE/UOkP+mya+NN5XUm/NO7nZ2VGRKl0H/QnqcLISMe3KpTAE+ml9aS0tQ9RKFbLHdytha+J7arEkwCALZGmgttFnuMETCRA0TTJ1aMYUOBZ31xaRXAz19x3283ozx1DsrnwWh9zZ72JIE7btNNOm4WEDgjQg3ixSjGGjbXzL3nDugte+86Xce7GQ/qngpO59nSMv66xPGF7bmfAj6EyufZTedqctDNU/TKDyuM9R/OieLF9iAH9xgaoPSpob+5PIwWldO0PnbPmiYg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511049', 'A23126511049', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 94.90, 76.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6d07d18fbdcbcfcb9dba1e70e792bc815f6b8986bc927945acbecc544fb0db28', 'CERTIFIED', 'PUBLIC',
            7.60, 7.72, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ed8LVwJ+ySldmLQXguIKhRGiQq4QMidPBfdks2TljcBic0vdMkXuD61GlW4aLgu/2XphpAQAit9W9JGRRjocJN5MculrDR9y8KaF2xgP14h7nyJTAvHVcfVpVHgnRsA04S+w3r0kzKZMvbt437hhAV2amzjnO+wKnjEaRYZEg6cwB4WeIXFEWtnjbPULYa6k0Kx1Yu1Q6s1MBHgfukKWNfPPksHBjS9cTs23wlcZKZVXeMLHcT7V3ciL8nTt7pKMP7YMgzUw69ktGxV5eFg/a5hXs0yjLrSpg9JFBJxlW2/Xi0NDfmGX8DFZZthPGrOB4bI453a1GMBsUHdqg1YFQQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511050', 'A23126511050', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 80.00, 78.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '29e2eda3625341a6b2641236c5f81dac3123cc74e809a27484578fa1ff7d09aa', 'CERTIFIED', 'PUBLIC',
            7.86, 8.31, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'LoSm8ixHmy6wBDh6KvM7qTXwDiAaHDIEho3T/MkVX+R+Y1JrbGuCSuM76ymiNcy79+lvhgBeRT2jRrULPMUajFq3CiBTd21E8gHbXNWCarMUvF+HUy7pLqapdao2HfsJkD4bE15DV97mx66hYlPvdI90qfj7VoRvfpbWQkr74qd5t8Tyi5n457QG53xJiJgSnboOO4b/l+Y9+7/uPOt327+oMW+VMR39T/RfvoM+MCxJaVpJEEDoDGPy+cQfiLPqZjknWjftgwf0Qb06Coy2ruYYJDI4ycvlxq5E4yDFo3BefYNk60p5FhcMclQSBPLgqGf78oFZBwWj65Yu6uzLFA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511051', 'A23126511051', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 80.10, 71.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e90763e73f5be7f6e5f61b6ec0200e841cef34b656850336126b6f2ddea5150d', 'CERTIFIED', 'PUBLIC',
            7.12, 8.24, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'AnjivFSf1RH4UCs9Vg3H88ci6cj+eHlP5rBrEoTd8N8LZS78XmieNLWlqgvv6i3QR+WZTXVD8fc40mhtHATwZL4nNfxPk0BhMHCQz7iJ04QqKAhAD/wCj/KbnxR3WX0f4LNT3pTmipGhYZhpcq0WgdFNZye8VBconh8HvzRAhRH9kv+d6xaHs4B+6y1vR2wRJ/IlRbCfCAkn3OY3NNlOJnGkzWscfsMz1OH7p8yp1SQui0Pk+IgfkQBhoZjXjglSMTbHzsPRCF3TM0PGi+vx81h0UJRx6xfNclBp0UsM4erG19FYnAyFdpH7KM986IpoFiBPRUs888AOQFeuHjfnyA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511052', 'A23126511052', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 80.20, 76.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '93ea14d1721d7b1340821c5f923be2f654f16733455691d49e7a874e862cb6b1', 'CERTIFIED', 'PUBLIC',
            7.63, 7.34, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'he/k3r6nRIHi6VFubzWOnWSiOSEbb834NPrhaUbqbgaDS6KeH6QVXBIjW3fo5hDY0ZYvNjGi2+OJoEcvRGI8Mnd5GpzmQBWN97kOE3YUUYnM3AHjbgrnlCJY1PW9JFlqGk1paubrTHvDVPQkIK7qYtpMVz7yVJhVAp7NgpxmG8Kusv49L0AFuRjyUbpNYxwsLsXuRQrL6AgjFfSXytq+Ix/4Q7pCOOsimq//SunMXvstAXzDLJHoRR0UTLO83rxLdz07DJD60T+fZfVC75AH+ZuWDU5CiOCGp5+CtUuzyzg1qMDdKpESQhvZM+5NWmlhNfU4Yn704E24C1MZxekJHg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511053', 'A23126511053', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'c8a489f1dbfd7e103f961ff5d903e36a305ee376bb4928ef63380b3bc8b0a046', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Lw2q3yqLxtJJQWouriVNydp35SW4pgaDTkqxb/BT27zMJb+LKrj35bNT4bKu4nVIZwEEuoMoYYbRA/0+hHtpO4Brqi1DJ0Hn5qkm4bYUZU565VIr7bjJVBm+8oFzwLEI2lKKwa+BHz30E+tlsmqtTAtmq5TEkugXYgU5Wg37JN5UAf72UBrAtfep038XmLrC80zoknN2B1NsqPlCX1ZPvF72kowF4XkrWev3AYzJw7o5Fz1Nk/bacg9A+XEoaXjWzLJPrp1pCxhKgvqWC6rayPLBZzE2DRosKRmbFntW+yYPRtO/FGHFum+hOBxK3oP5XYHF8PHPvgc9BjOuwYS+qA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511054', 'A23126511054', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 80.40, 88.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a9b3576d73e0bffde216697bb5e0e15279149d0e9675adac4d3cf71ea955f95f', 'CERTIFIED', 'PUBLIC',
            8.84, 9.18, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'F63S7q13F5L5eEzNt+FCBsYZEJYt0INexhuy4+8B1k2c/2GsG2kM59Xmf01bgFNeaMNafeIC5A434InKoXYcGdqq6x235wC3Qxbl/XsQ4af1Ha90n/vbxKWISEfnGRp14O89nf29TbX7BeUbCzia/Y4GW9dVapaeBy86WG43cjxYFlrA2znX0i473VGEFuJLocsCE8f6DueDTbQMFUvKTx7IeXJDPWUhJKXQNKMySEu+LP73zDTloX0QkTHwZWW96G/jtWbub5OP5b+hrJeWwYV9JEpzGKiNZ0x+Iya936C/se7MpYhOmV6oQIe2YohnXg4t2qS4GExoQ5Gdc4Ssyw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511055', 'A23126511055', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 80.50, 58.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '9c2811948af8cbab01e3c38daf875019b2b6893db6973abf0eac11fb5c9e8e43', 'CERTIFIED', 'PUBLIC',
            5.81, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Ok/m1d8fSn7MX67SbrQiXT1ksrDV7RavwBN9Gepfa1dmmRbLQaRUuyeXhA5IlEsVC42huUJ/VTxzyNyMqkA3pJFekZ8J30h1V1dzM4vpPHMcIE5SsPiKZjZqVks2BYqFqVBkEWonfMWQa18QUhOliNrE5Bcr3aavgKru1hO76Quokg479NnjBaOj2tFPOSHB5LTVuoJyIVWH8rYv2TAxLW02zeu94CZX2J+jEZm8Gc7uVAMVAMf3TIsNGt3wW+WIOJajkkq/v7YxQSAbJ66ZxzUggWLp492UtDl51fmm9rRskGgIuKHGqNcfVW5AHy+9mT5lvYTowCcDrVEO6APfbg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511056', 'A23126511056', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '59bc152f5203e74c61886058a00a8d4673b30a620994d81d4ade1d85900fb55e', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'f0dqJ/zlqEC5bTcFox5Z2oDYjVstWAteqsDp6jIdfdVvDBJKZi/xcwuNC9a4gh0q1jIFremJc4oNp8NUq1DlAQJVTdU7n8hZxvzryB7BzzgWji4EzZ+uTbhRQ7/p5tL9XISRKFfzktWYkcr/7VWbQpgrypx7K/0w+XtgXz4v38ijgp9o0dfvDsc9Fq4K1iKqJbF/+y64ko79BfQMiR0Poh2yUHqMerGypEwYEEm2SRx5E0kcQlKyUYWt6TJrREN3tDwjX12VNbOwd7FRO3azzhBUmoWT67KlDyBiNSOVRvCJluRhnbAfzNsMVV7wJ/RUdw6Du3Ivx+g1kOMN4I88ug==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511057', 'A23126511057', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 80.70, 85.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '35e8e3a1090d444043b32701ca09f9592b19918eb340f21cf3012522f53bcbf3', 'CERTIFIED', 'PUBLIC',
            8.51, 8.61, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'SMdeDJTRn/wfZ8+zCsyjt+G0ujqsWjYH1s9Lc3n611j2l8FBfb5DYrOAFAlDceHjdXEKVeZNCmw3o/VFhzPH/24aSsQSW8qwDTyrYFp2l7RYN2oYr8yODYkR01f4boCtZmbc/i2lBrGHoZCSDxxOlOECc7iz/zgklrM6meFQWE4otOAgOJZFm1Fak7ofT/nGKnns4kT/Nm1QztNmOiZWP1TmA6peVmtkrkyJ2d1usp0H/Bzkp+2p8F+9Qa3ToRMw2mVLlmeMn+H0AVg4uCL0IvCnxNHi7mYseJOYNiykjPTH3PKKZgh+w9FSVyfs4HRe6ghO/dkHzbuohIiKXoMTnQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511059', 'A23126511059', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 80.90, 79.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '75cfebc300ebbc66eb9ca82fbff0ed567ff8619ea6a0e2a355dd56dbbc9a2f03', 'CERTIFIED', 'PUBLIC',
            7.93, 8.14, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'CpAq+IeoQm1JaTZFw9UzAAC3qLwMgySItYgw5x11Itu1j62bApL18u1zBW1JxnBC73dzhir74kUz258EVSdleSe/a45NT3ojIsOKneK3/KTaOSRdQ8u9/UBwgDWf6+krqXvHYEd8OgjbEvJ31Ovgs/XfWls/AwrszPktKafYysndIipDE0VdZO9INrr1IMhGvLxBaBcB0uPkCRi2/DnCF/PovKwK8NhbSkGNgB9zqJ6ZVkcxS/NLjjN3PAyIMOyTbV71kgiQFV3II2G+isc6juYroKf5gdGzmT7wAJDWEREOCwKfYAcJWllNbosKo3rImZMhfiam1Ge9ZEIG4l3gYQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511060', 'A23126511060', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 81.00, 83.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '78c21d051e9dcc9bc50fbc0eec702440d14ca5fc03eb768d0e2546dc96f69c13', 'CERTIFIED', 'PUBLIC',
            8.37, 8.49, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'PLdFLhwVUwuhPtJhesi4/e/tjbg8SME3TwwdLA/8SufADHPl0BmHnIhnhz7A/imhr85HbXPnYn3g4Tm2y3JnmfSf4xnxbA1TslxPIVstuOHuInvhYdSoL+MaQQ/JhAXOEBHBm5NFR3g7a3qUssqLKixRll0ueOzPir95dnmSEV3x0gQFiXqdjr9OCGnJq9QHVDYGCfbV4NqrUYLGbMHLD3mPTYUf9uoHDoGJpQFU5wazF+5GrkPILfEWx9VIMhIQolBbsXLSFhZIV1N+n7TNGjpzLUulHs3euibwcJLwW6mjA24hZPH1Uz847ixaeSPKQRQfl5EsJ8t1njYj8G6Kog==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511061', 'A23126511061', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 81.10, 85.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'cfac458d380651fdf498b6961b52d809a90564d6e388e1ee241acc3105f26dd0', 'CERTIFIED', 'PUBLIC',
            8.51, 8.88, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Vb1S88TSapWtCXsdHixyxaOCG9FmAu7cGu7SrTMCzBRQotdXLCEvhk1mwTSIuOw6BOlfY3XCIVri4JVQRbcQNwBASM01PKAYl+Cjh9mXBORi790ryKEvASUlSOf2HO7BiCRvmsEze9m3BwQy29CJ9SY7+JSsYI9rEcNqO+FMgmk6yaXKBxlD8jQZsWk/3pjcQQ8BN0jYwGewGPlERTj8vS6EWgieCl2ICKXUsqd0P/2r8On3E16XLU0f4lEhDmHiRgUs4oPO4byLYC4PcL3+1VHVzYE3qIzZ0cypyIsKlhhd9PZtWycDc9XdY2P4b0Zz0w7dh6Goven0TWBv1Lin8w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511062', 'A23126511062', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '72dc3afc8e7af1926eb33d8f296ab4af4aff33915e8a02f16f4c4f4bc40e9156', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'J6AOpBNe0rnJoZ9lJc7kNkGgt044CBNZV2bjnU2U25586KnnRWl1wOZ9qdiEphaN+UUwaX6h/1oMq0Q5VHzpq905PkzcuILscxO7A+rCSDscK2h0zggKMICS0InfAOC1z/P+EgzudKj7NBAAsLy5HGXk67td2sIMCoYFF/YEiYR5xN/1qxiSqxcT4rxfi/c/aX2qbnj55UG5jkBdNercK4yDDx+H5Ki3hPSSgj45UChxFoD44+xGI+oOyyH2HH17NqABycDPIdeUYxQJEjhKIFSkjNOD2sFEKJdsoPPiYj0GzCu0IXjX5JIelrPQOelYSViqTDezCt1YAP1Z/rs/Ew==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511063', 'A23126511063', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 81.30, 86.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b4ca3fc3cfca1a953399c8f71f89ca9bff243100e16d14166717222fcfacf824', 'CERTIFIED', 'PUBLIC',
            8.65, 7.62, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'XYjIIhflA3LehOBe9y4gezxsC59yUKu0db3uqy/sdSRh4T+TxB/t0mdcJOy21pz/mpWIe17aNNykWR6u2OVx2Eza6xxarjsbFqBClqV4EbqwHl2p0WXH/AHAFGb5VhCZDC0hTVjIksYky7TY/V7PaKBlR84iRH93VW78MEMoY/P3r5gdkfpFzgsBRP8GxUGCWW6yAs89stjX7rB7gRD4RrSP3aO+DnD/k+1ksDSlFnN7uv5MyF7BnL02xSCg+VgmH+QTOAaz6EH1ZRmR7nm0/opnb6z4WMOa7Ovok4WDoEmRgtaKL0FS7FEeKDfwR3b8csYuLbIfsK2+mwr9GFQ2kw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126511064', 'A23126511064', 'INST-ANITS', 'PRG-IT', 'IT-DAA',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '7facaab26f0d0df15eb7e328340c482cc76a109917adfaff6d046bf1f12b0658', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'ZV4rwA8S9lQu1j/pJJH+9PCF1GtCL9kmiwIzLdOC2ld3InV7+NLmcAj9vw2ZTYYkix3MuEdmyPQCBgP9Nn8VQrQCfzqtqbeMpZCVFuCx/yBfkbh09p3XlGHbMN9vJJxs9UG/lk/IJbCpSbWan/5p54sdw8ud/e1Boy1oJX2KenOXqiCOeDLo4rh7IEsEJjM9RPfonVzltBpZmsz+WOgqJQNKMPvFVyeFJwC+5ytLSSZMH+g7KaBT7Z8HdUKK5gv4cpXt8+SQC2B2HI7EPDPoqlbw6mn+FnH4wTozzwxdM/gLjW9+JSIjj4WgldB5p6e5BBTYVvgMCcG9rq4qGfJE5w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520002', 'A23126520002', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 80.20, 89.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '8c95463776d5fe92dc626507d050d598d4d768fee2b911da4bbc5f3bce34c180', 'CERTIFIED', 'PUBLIC',
            8.98, 8.34, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'm6tLg/gxW9tzD79CRjMacLZneGMv4aguevVfAtYqMRgsLH/dkIPvkMdC+MwhqzrvchKcZjXtBniEj92yWghJ/0BJiXEGPsPPwGsXaUeATrkpi5iLBr9VmQfW+y07E8YsKVXcIcyuKZuGJaiFh6AVYbeTDoQ0Bbx/nV5vHfGDaeQTLb2BWpcT9SuKmCS9n0dV0p+QMHt1wpn17xLBiF0LP3ZFHqX7/k3796bzSb2IchWTlUj7HBhbHPXr6NDSGpCXTaKMwB9XEkmkLT5A3tNeC8uev1aqsGi3bjADML0wj6gjQ3uUUmOsqFtusPgowojuKUgHA6EfWpx3oXCfBCjynQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520003', 'A23126520003', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 80.30, 80.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5f8d5d1113bf2aa4d3d05bb478c3ea2bf0ce11cce4f58551a939bea7e6507c4e', 'CERTIFIED', 'PUBLIC',
            8.05, 8.18, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'o9xt1FF2VusLEIum/KRj4VcMGQnm/zbQt6T/lU24SOg3vGl4Ownqisn1PiG1/Y5ANGcWtjsEL/Fz1dlgq51CiStsv1ZSOuFODfe9GxPHw15TtrH2k7+56+K4RKk/WQQ2VsD0zYuVjJqrvtQDCjupWYFRcoc/k5d8AhWNVWh64I0Et7HY9xnheZmKD8N59yI2GhueYH95WNLHxrnyQJVcTKy7HIfMRSdKR3emEFRei5XwiX88FvTrb9HCBR+rz8XNf+WAlV2v6/2cYExsTrRfV2jlgEdnpN74B+ZeLE6oCxCSbCtOpYsC3PQt9f225v+6arugz4wTBjONVgQyx5XPgA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520004', 'A23126520004', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 80.40, 76.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a4f9493df2c7092ede29c5b06995f692f1b2c70e30e09ec864f66152856da213', 'CERTIFIED', 'PUBLIC',
            7.60, 7.73, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'rqUeVxao6FmmUdRWF22JmcT8XrlhozQM+QtzwG13fJikIlc4U1DYX4YDxt79kCg3+nKDYb6bioaH01Vux7tzUpwDXMm9/FhoBXNNNFIe59m0KrFd1wls4sCtKyoyvucIUmM2eGidOax+Z8iwUlwrFGDLKc2omUqArjQk+M72CXpj5Ayc4JLwS2KookWM43y/QQd0eo+bX4InjlyTfCjBHw4sdVHIH7Sp+gA8XF9EuHC++O7+uP16tINHfUZDJ/6tBkcurGmL+eTnSZnCBunC2FbAtj24MAFirnWA0eAdkEoLvQ7f409s3b650GVQgIYm92wi2hyjANUxtHWWxhERwQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520005', 'A23126520005', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 80.50, 72.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '58e84110b86272006b97e87ac409f5372972df7fe212ccb0045b82cca5ca9523', 'CERTIFIED', 'PUBLIC',
            7.23, 6.94, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'illcD9YNWBFmZWbwwobMt1SYpE0kr5htYDNKYjTYtVNmhwIeRV0SfhhJkOHZTrDelsLsLH8gjLHLGizHH3jyvmyKogLBW7U+DZ8F26HIgafGAK0Kfj78KRR6zXxA5aXOpwAvRuMk9v8UJmLkRKM828iUKTlhZx6euP05+UdgBsy1iue9dAnmTeijSHtKGVKWCzJH3Y0c4NHOgVkh+vPrprWMNnCOFgHCrC2VhPjbmtXLpzejoHattF97zgT9bpzCa7cNpJWAArNoYNzmFKhTVJiWVXthgoaR/1TKJk1k50D9hT7fgdmDkfDrXekiK8P66n2BqPT7XHi813G0qbD7qA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520007', 'A23126520007', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '92c26529d524faebf3ec86a05516233316ef6a37bcb3803495120c8a37c03d09', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 4, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'vEFRYIXZOcdjIOOkUw+Ekl4NO0efpvHaQI9DDzfcXuX96YW0SGEUfC1mPHUfg//m+1v5/8zL60y/vPmHPYkVZ+5psHe+mN9i19IqhvVIDMIqJu+w/umBsGArwN01os0QdfYvkXBuC860oZdg02R7XhyTODr0dAmdmUWnhIo1zJZwOHBM/mpsgrmQkGNxmp8cAegAETSknFJ5GzGgZ7PvZBWNwk4AP6xKrteocpzQ1My3Al1ODuGKCE2fAHWTTJvIptgh/weUriJITg2AVjj6aXwJnfrlfZZhQxesNy8DX5Q33/blSl+Q8kMJkdyny1oqHn0KnR036/1b5I2Ilarb9Q==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520008', 'A23126520008', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '631cfaaf5e565e29f7a24c470fff1bafdd48f98b2e08e28b009ceacc9169f4ed', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 4, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'XsPTHsl7ZWk8R0Luj029FrunZBlzgdkU2duajXLBF1snH/lJ/gACYmsukNUPtpb2gkPLEI+fpj+TT1/8oCbcFFkyNahOJ4I+myIBU2LNnzqk12wwCy7oHanWSwNIJ+IXZRYOcrMUd3APhYRJh7WQhOT8Amv6/Lc0mVCL2RAGMlZu+VHIBKMIMDGPSL85DTUTxSd1okI2HBrAaoxuWSJqOefkmoCUNNgRQfvvCtYs7OU+o4EgMZ/yPaRWrxENkvEgpuOCogxji22g766wxf0oaMmiNWupioqMfvUK/yUwrgXugH9egpbh+HC0NDV13XRwZhc4uVmTmA++f2VUII/p+g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520009', 'A23126520009', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 80.90, 65.60,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'e254256ab9f6f56d84e4a816f2d19630a53b4f3a48433903bc245f2daf641bab', 'CERTIFIED', 'PUBLIC',
            6.56, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'UJqdT7v2Tsw8ZJgpakKX91cMSpkYJ09KEDR2gnloyPAa11XW2fzez978UdhWLNG/2Y/PtTjzI6TaK5OZ6jJq/wlPaX9OWzWZMIvsXQLyioCWOQBuAdNVXN63uVONm6gewmIXnGqhc6CQifOew5Mml6npXF5kRgGx0ZNNDgPfIqQhjhwKLPEYPs3Bw8tOFbo0431Zq1kweJPrgF1ASWU1wdK4Nd6/tW/yBvplAObN7D9Clp/SNGwGwV75hcobA3a3rhPa0Lw432hSVmVAwKI2NuKhvuFolMsWyTiPm0NONHGmDHyE6SH8GQa7GFc/oN0D8qMqIXfPASsew6JDo6FQOw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520010', 'A23126520010', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '372a6c34ccf36ccc87f44ff0da4b2dffe9aafd0eeed1c450c66d3c3389335a96', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 3, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'a9NX8d75gJUDe9GNkoREi3fz+k+wXiEo3PbsQ+k5qwq5lzt5kXRmfhq8dZ9C/yyJqXemV+iJ47TbBgjdI/dziBqSBehKpeTIohURE7/3QJQgkp2GKyVizFh/sv+cMi2caYrNSE5h9HDwTWV9fbLUkyL3lSw6lQVIckfvDSqxeugAnHbCmPrgKA9ZZVocq61negyS+xIramFiAyb1+eBP26PyFjABTB4DSyRkQDA1HwGQzS9t8tObbNUKtIcjy8L8kblYAoXp2OxG5ptLDGilB8qlINxN9Zy7agdyCvzQFRNxxUeAZQ/1ArrQzYyGZNyvfc/vlEKdpUKBs7ENBKimtg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520011', 'A23126520011', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'f4652b0c76cf694168525df7252a1323a3f81227d22388aa76e6c890cdb707f0', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 3, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'u0uveYTcATXw8xpsWNooBKbAw4EYXGYSzQZvxWKWLG37NEyG/MzOK8/9/pzd7WTmrjYBX9vGJALT5dNm58f3st/s3aw2O4KTwJ5gj5oe7tcOPZPbGJhL6o982Ximb2sjwu8VygwFgUUQGHS1NJr/9MQ5aYwDfn/VPbA+insTC/1qoqrdZv/nRx0Kai/zeA0Qa+0BvGMBwlZlmYAH+Q5zSsTaQE3tTrc2A2/S9LqmFCV43Ln+cMncensaxRVP6tbNTjfSzuFToLefQFnYAqtjRr6wwaVR4uTYwKDxqiwpwtv4tfGR+kHdBdiy3JzQzwaKVDnBH+tk2M6r1K1PwT1Hig==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520012', 'A23126520012', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 81.20, 67.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5ea6b4bb990081a62bcc3094b727de552947c6737ba1b7f197d07fa4a62bdd3e', 'CERTIFIED', 'PUBLIC',
            6.72, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'UECjjUGcRc2611yS0Rqu/lUh0BpuYDVFpd7eGgl772s0Tw4bzaphRSmpaFiwuMCJyeQRteJR1AzX+1pEIDsdh12OlG9YdDi3KVTX4w4kZiY0fsGWGUe8f/UMrQPwwlQsGuI+djNpaP1+M9DjDil8ONF9ukE/KAMaCVU3q3heDcvw6EWQQoxrdwU7ihEMYrP7qiE2TBthjNPeqMw8QnXRUlCc16R9nUR+3szotWAyUDGRpEPsU2fznlUJq9KtLsNzlop1D1cJGecfOGRKEfy0Pko/O4sCpzdkthI7aHf6VbaKO65PJnWy86B9nW2CAJz9fm/dYbhDEqseGyQQqPwElA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520013', 'A23126520013', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '92686f6999e47110653538a14e41a3fa46448ddee0d0116ce39499025108e4dc', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NRxKHeOKNSl8Cva7oj0TwqYlkZQ7NGyV54PODURA4WAPBbu4jrv/bc2O+3oxot++xoHhzifdDoDKVaSpGKIku/0g4RyktC9RT4CzoqQhlOj7Ocon2nMnBPAKo+jhpgCQqBYG/esFoQlw/1py4rW1mBdNOvdSlp/2dUnwoJDSe/c1Bd0wwMsIENQb0g3IOs6xXr/JfFICfi+vb5n1IYTq6Sc3E2U0szdSxcEKdr+01oz0l1jvnsWT5ANZ2xcFNH4is+8oh1vU0UsLRUNMmMkW20+6YQ/Fbf93hwf+AjcBLfad2Cti9aCkPZEV17r1RiY7LQSj7Ej6ttfelo2AQT63GQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520014', 'A23126520014', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '3e65aa48ae886f57fce655e20a8bca7e61578f9b43d45e30693387a49306bdbb', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 3, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'lJdC78awiWTm2shXnnkV0UsTCOlgbx+8mD9sVwvWTTW4bLbmfAB6APU7Z9OBFsItJqoQpXII3iv6pgNqs9q1IuSa5KawocIYW3OzoTKWbSU7i/X8/TnNC/KH9scQicAim1zbaIJcxD6ur/DC5yn5cVdIWXhsM3Xisv8JqDb9//q4PSU9+6ZwnTaoLbOgG/IZyT6AuFKLK1psve5r0FXgM2ACD49Pu4Chm0L8pO6K4dJUaqZ76PxjpgQ6eNdoOijGL0KMWrbQDbEAY+2+fVAP9DfJBQn0eqpB7Nm/XnbGWtOhDxBP67ujQiZl0YOMsj7vieKechGUHMFQFB6ZUBnQyA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520015', 'A23126520015', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 81.50, 74.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5fac96cd1a6b690af0e034a7f16d7ba027ec3864bd5389c4e4f29d3740ea44c5', 'CERTIFIED', 'PUBLIC',
            7.49, 7.83, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Dq0h5blxC8Q9AJn7yPmbMQLIZG43LBJWBumqlbm5ELtLdyY+8yVej9rKDNG9P1eNSQ0ZaGwMxEsmu6frK/fI8GlKmRtrZskIEwfsdzywyfiHvqs/IP35xqCuERx/7HeSmqez2IF18tBOKTMxt28/cu+jFiRYfZLB6gc8DClWVGsBCzjzRqLGr6fvhYiNZlCaCO9xAewPX2ya2jTSqgf5RPXePVe5rvUqtOPKffXPPvYD/YgGqNZk601DiyoOv4zxY1wTzAw3OgWDPG0W1Sc+aE5aQujo3l28LVpYh9EIbzKLdDOyfcSXfeeGp3DvGtAjhqkFal/e+ZNdIhNkiAJ3WA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520016', 'A23126520016', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '0d3a68c885669f5156deea6111314d9a75650e16f118bbc9ca0448c4594090c5', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'aW0yvz1Dr34YcQMJkv5Z7rE61+PYxgok1syMxSCBChs0prx+1PmyzCbsAge2DlEOJG0RnJeON6i2hFzXzxUN6uWMPI26xw3OsIn/Qfw9hWWZz2hNf4u+MsVLgBV3x5EgLTVaDLq3FUCf7lLnDijGTQjczGa6MqbcgnfMUe5EjlDfxhxTu+ELUicP89yzVVvIFAiITnNrAnGZcQjAwL5wt5izFJdA0vXBb52M43k3qbCK15kMPi5+JDYbr2HSKDig7vNyydhmby+CGuhmdOxHROcN8JBib+mup5Ao45+/je+z/tZGCmyoySqNMNChRumOFruoGp4nWnH4Al/dCe+Ghg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520018', 'A23126520018', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 81.80, 62.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7a0191c65ef80f9bd93e94f205477cdf85ae5e6f012f70b833ee45b3edfcbabe', 'CERTIFIED', 'PUBLIC',
            6.23, 6.43, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'iBXWjDOt480GA3CN2UHi9KGWuthGt56wSs9iA6BPlvzdI1Z6oTveCIahZMJcouqyQSDzFoq307T0p9NGyH4FwRFboWfbFqR3jSIQGjAXOs7p5BcUXV8sumS/IWxmJikK1z4ovsnNrQUr0PYh0RHoIfG/adj30o5cLUXDkVO5nlwe6BepoWHkO+o7qu3OHF4UyeQCXrSwU3UxQuHXpF70DXlZIiZv7TI+bY59+pWZCCU64tAJmaKUDelFJKpBAQYv5j6OYGK3i0UZuJHQrSAlDqtyspgaYbYyEMO82xj3PCatOI3EU8RdNU/Jmq5pkD+RR86UhoKNRIU2JKesFjo/FQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520019', 'A23126520019', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 81.90, 62.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '9322c1f0219e1f8585237dd94b5a86ccc01a1ed1336ebc3ad22fa178ccea9599', 'CERTIFIED', 'PUBLIC',
            6.21, 6.88, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'P6HO+up9hPZ3oPuj0LnCvkJte/wiO7OZJCG4MObfVSIEEiEZ/7s1Qgv+5kC3yJYCP0yBYH4+S37DbhO+c5IruFgDo0VIiHDpbyPDO2MYnQmgthsu0/zjqRQuWQ0iiJQBnfWG5P/fG21U7coiEVNi7N6ZPwi/szuUXiPrVS7JPlqOogK5HFF/8ptlpSL3efVd+4SKs0tdZXJfGxaxVwGRk9GGKkVPIAxyg/XSeHa4FhCcISZZcDDDPd2KMJvULTCNpK/ZeeEo4e1fFCDPHUAnQNcB2RPxeWgwTIDxLWcZC5YDFyZAHfBPlxtU7Kmg87nXBkL/xlDiGqStJjWHbCpmRA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520020', 'A23126520020', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '944c5136af39010fffb236a5330dfdb552289c77d62a86f8f779db0ea1eb8d13', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'o4hdVxkVLEzMq3LpkKRj1w1i9ITm/Mx1EWnG1MnjmzcTgAYwJOwzqsedjDh0LtSwGMLAxFOJrKyyWPaBlEVVj/vyT1KqdH8Q4fIr/f5fseJUmZ6bJsgL62SDkWVF79BtZWhBsojPWuQM2pgg3xgqQl/xNVxddVFa7hppOa3LUqkm4DUsEvad5+OJeBFlsB7hsw7Ziq1i8XSfTW4hk6rY+s5BO4q77TRIDrixnUZZRhcPPnmLSDAcxphW3JYbv8Tj9TEe16n9g7Jb72j5o62j6S1OlqIB3/p3ilGLmd9oT9k5BpWFsyqdQgG7QQOApBj0zBr6WI8kj1nRGRT1LQRZHQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520021', 'A23126520021', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 82.10, 75.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '487304b64e13bca90a47a3c417a8eb51226de7432944a0011355abbcf012a953', 'CERTIFIED', 'PUBLIC',
            7.53, 6.99, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'a5Hv15HtgkmmBcKHurN0/gkgTtzc+kHGrrcZqTiJQAxJSRgvr66+cPWICSWIOaewXObKf9v68lfAguRYc8m8JOJhn5nSrjAwZw3P97mA/PrkQln5LL1AvQVYZ26cyPdBk2AAgzQD5lOk4f1M1/hiIHDYjBMzdnlwDXfTlVDrRYksR5vk209bk3LoCL2AZpQqeaO0OwR2lUJ8GfTj64m8J1/qGgWoS75ySgycT4IGdV6coR3axX7szPZfIdfvIYgq+EcMMFpfEhRgyFSyO9bmaU4BhXfW8H0BDwF/PxFJ3RKPTrbcIMStR4mItxXNUT7XlrQYibJWmCh0WYEv3d0Fag==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520022', 'A23126520022', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'b74b56da8a3ef6cdfd63892e084fbaeccbdac24feb661f062cbd42b9a1680873', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 3, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'X4Al51irbM/DqTsoX+EjlZunoSlLVBfP9wVip4dbM4CmTcBDROskEffFUxetAGvkmvosk3uSJ+Tmepb9gpIrANFQbNJFRAWTeXhRSXAmbfK8NvSzLR7DvXSVB10M4u/7Bx3aN5jS+/34Xuc8C50CwRopjLqN3FbRSvzE9Dxo13R4M2y8RgFz4t7cJzbYQm+GeOQ8A/zoKfLbIILRtOkpwLnBBFttqe6ewU4dOeSdLFCpl+Qyzc9EjsBpsrmHXY+9wIH9PKnYLsDyCOpHBSxin6E7R/b44dgwxOgleI5TFX/zRnCWY33WuMVcVRh/PwBU+7FpA6N8OosPLbUCi/wbmg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520023', 'A23126520023', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 82.30, 63.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd668cf1638c35c1c3113659a096bf51db41f29c1805749f2f0d3cffd166e2a75', 'CERTIFIED', 'PUBLIC',
            6.33, 7.09, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            's/RbZm4oPY4x5zU9hiy6r6adz8Xe5NrNxorPUKYGOZEUPDthx10NFxTXPE75ll3hI1nDkX8xDrQHPqUwh1j9s0LbpDvzLEyqtNouVl6DUVKnTvScTIGzEmfnym9GHuMiSjI88A1G7XVDQFQ9GMivJyTAA+19p4JNNlwjPhByMrJA9wYly2EsjFWE/o4WvkzioabVmuelVOys6hp/IwuOiHM88RZMRlvOhge2xbBsQ7OloLsascXBOZyvq2rUvd5ul+RRVl1OfUR7/oW2jnfc7CfrO9UvxRM6KebvVK+IBGaUo0Ep71m9xJ6zAEleoH0L+PAZvgCcTjtHTXLeKjT3lw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520024', 'A23126520024', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 82.40, 69.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7a356689727af7950b4c20c0fe3d1f5cc791aa5ac093473f5b999da96b1d1268', 'CERTIFIED', 'PUBLIC',
            6.98, 7.42, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NkuHYG/vn/Ii4b11pB985KK7lDL5b7TkcDzIAfOZwiQIecxPsrk+M9qo9Dl9ndqfhEVWAj9PemGYOrjIdRuXLVqO3WGtIkYNc0ek+intk50WXOrmf4zErSK/GXB/bZRuEvR+u32Hh6+F6eiiZAdWiLlev0kONQQmoAdQ33w0wkMdQKDPWkjdwgI1BYIAbt3KJshYz2m5CBOEbGbrXjfejNrEN61VZx51k+rxFm5V3zJ+fYglOuBl1iePcAGtUutHqhSYimUd4T3/aZhCgK5kRjtITSdi31VqKa04582yQMB8/+yYE4TeaY6d1UJHix3YShFKW8qRLOViGrvNQmVI5g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520025', 'A23126520025', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 82.50, 74.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b33e2210ca6634a7a12adf5ac04ce51407afcfa7ce1b78cad27deb61e83fc656', 'CERTIFIED', 'PUBLIC',
            7.49, 7.94, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'd+XMRYkRutDCPyWol+6hGjO+tQn2f1YhYzfoRvidjE7fyQVhB1iLlmRHjLmpqsIwumLi+M1v/MUA7hKMRFroYlV2bY0Fq87yCYL1zUB7b3bFTA/DX9WDXcWID1akGQAr72GN04vZAUwMmmJE8aeoXYavy44h0C0eRGI2vdZuxKHN4GmiunnsMw4aJ2AmBRY+MumiYft3GgzWTr7YBJ2z+ZaBAISb7GNustUSh5tVL8544gvdMtzHM9Ns4hV9CumwgMpb32lwnNt0HCqIHjednociVpYojxeLWhscAYDRAUepvPwRFTOnK180VTwYDYfdx/y7D/zEONJ92sBXHxEQdw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520026', 'A23126520026', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 82.60, 84.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '7ca1b1f4756b506897f9bdafbdff61c66c8d5f8be1ad1e5739e384855937b7a3', 'CERTIFIED', 'PUBLIC',
            8.49, 8.60, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'HGM5v9i76KNCNa14cwMjVNv/xZRK4dYFUTVMc1b0n3B3SrZgVxyuOYTV4WNFc3vZMmP0EexyuNEeOhX3SOc2CS+zaFxAUo7fzHZhti6B/j6rnd+4TP4nFuOKQney5Z5UKJJ93pF3i8DetN3ODxK+L7TS/HD/CnanG6TOsswXOiaJkG9ZgM+SA8ET/d0BRfJlHRS4E7FQJz4aM/7shguKl85zTmxY0YlF93qRo9RP/kzk0aDtpRL85bMuRM5/+fDOeSKpJlslhUNJqITL4jHaIdUBAiWlhf8B/QdhW6h3itHUzX4ZtajcBz78EvGVOzPYBEkZmi0ygMZhGcNqhq2DUw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520027', 'A23126520027', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 82.70, 91.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a76d0a808bb78746a98674fe333af0dfd30b2d4f1c0a0c8f34f3727f5596cb56', 'CERTIFIED', 'PUBLIC',
            9.12, 8.64, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'V+6i0RTCvyOTRoyNM6VZzkdou2CGPm9paHEzdx4b6twHzKd5Aog3ojyWVVN7pV/2athR7aafZzgKYiuFW4kXBkVl5LuE1kgzLFepewD1HP/QwgVD8Kv18ZD/G7v6DUuebLozGA8AY89twF8EnlETds6/cyBnc2Ej/IEK5/svV466A0fK/e4/TirrfJs8xgoJHnJuH0WQSbuXrmxvMmgfUQyJjiR++jEVQfaxAG/Y1qd2hhV5imnxRW8n8N4t2bCqMAeSNtJ3ATj+9zfTtpADcxtCAF0CjeVptwKdSUaZ4VT4xO0524KpNwa3E2MnfGgReQ3z8krvbRSrQnC1wKJ10w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520028', 'A23126520028', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 82.80, 76.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '32a63a9f350ca9f5f794f22bf6ccb52f45ac159bd24f32e0faea522ae8653dc0', 'CERTIFIED', 'PUBLIC',
            7.60, 7.74, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'umlggjDU1QMQEpzjaSSOzy+uwrAABDH7Ar8b/lzR1GFBXcqqk11dosh9RFvKmaHsYKz64JUFHpGOf8SGWb7mUZ93ELK0UdgXbHOaVIkP+To+mK/jnNmDJ9TyqTxZhb9UtVlPUCFffINqE+CDiIgQcxFv6aWlfUpkQZXQQmAIpNspvBRj/2Ojg4d8hb7JkELhxwrtdsmQasFW92POe+QctpTTpeDs9VVqX89hagxavO5HQL49/vHPQIQsA/BXSyNPAiQnC5os8a6XcdeqfLB5l2Cr4xMCoX237Uzgn8zCiGPShGjz+hqKlH6U3ZUshcijGdsjgLEIrBAIsWRi9ri2eQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520029', 'A23126520029', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 82.90, 80.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd4ce3abef64d249e305e04b1ccc0f5cb5cbcfb75296f180d21a34c92346930e9', 'CERTIFIED', 'PUBLIC',
            8.09, 8.54, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'bnEkuOMRBQjP9XNw5B9tdQq+TZHKRUqTxTaa+1BvgYfDjJ76Bm9eor4UsvrAkXZuX8fD8Hmmf3bUxHvBD7I54tDzNzrboZEeJH80da7C9X4N/ULU0juKc/o4xRrJ2M3gPHTnvfUrZS1zyzzYCqQylKJByYqeoQuMiMiSJ8cdD+y0Nf7BXsScmErvQsMwqFbo+EIA/d9iMXbOq+LJFIOYp6QmbdqPFZPeNrkL0c10aKcNvtbYF/FdCxhc/wJxwFBGCdJwjKexpc1/avX0/CFxdchbZ4zkRBb7Bb5oD9WVq5aSdfSrGnYt+ZC/4aoExR/Qn1nSWcUsCDi1TA4OKTHEAg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520030', 'A23126520030', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '042b912b92cfaf510d5df76fc9b56ce5ecd13dad786601018c75e4ac340f02f2', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'lbr1exxvFEV3Xnhpb0uSMXLK1NVs8yXMqpWgcYY+G8NDayPEu5XpwJiqB0jAJUbnxhReMlwdip9OENXSzPVMYYcMjUOysGRplQo+lFuDYvuy8Vgs0Tiewfk3m5dVKxDV4sYoPv/TUZIq/5qcPfT4QmU/4bjVbHNfXuturSfeE0IBllMNdMr7V5xCPV/f91+ts7EEdr0EKxg8vdlSZ2qX4t6QwndhWKV/z6t/3z042+jsgLHTlTkHnY74ahHsTXZQWu/97I4jtrYj9UTu/JntZ+1dsdi7bNP/nFdyb66kCdZ4ytTqtsfp+4YcPXXYUVahUw3vvWsYcef00BjT9Emdgg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520031', 'A23126520031', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '973e61c4a43573fbd2ffd8a3d110846cddac81e9277c6645d1bb08a627dc1b2f', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 3, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'kSsLpYAnk/ztWfRN0i6zM0eus+NiU792z3tVIcJZv3yomBIAcq/m08ikG1VGFjR6jxRAiIJfUgkNDUKnAxnKZRC6XXUKZZYe0TxG1js0E+OI5TP4vurVCL+KXt3jATd/Sc1eF3DITe7KquMSeUDnx0/hk9ZqOXnXppPxjN1veWRaj/yHOhAkJfQ4AEDQox2w7VQFx0jDpbEmhfwIPozu5lrbuaJYwVTLM+sVVhS8uZ8WUntWjSD90/I1X1YXtHAdqB6+aKpkXzFfKqDL+tUJ+Bu4vRkBQFpY5YULGexdra61ztf+jYVvJKgP6lC7dIzGfRgWzZureu7ncB/4bQX3Sw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520032', 'A23126520032', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 83.20, 76.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b2833d0fb8afbb1c49ddf1584b3101eebb617ac1cd101a69e378501109c5525b', 'CERTIFIED', 'PUBLIC',
            7.63, 7.56, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'KIR2jES/JRp3ZYGvQOa/6tnJRMQFDINdNUC9KD6+TaIxJbQEPghVEB8jp+7xOS5BDT/yqhcfXHrgetDUIkpW1A3XTjUD8k1AKBQHHrT1AfP6rn6sQBx+j0O1rVXHe/AGsfbaGvKvkOFHJ2KIOKZVx84XpNjZi94cyOZ+EUUO2PseRy1SDNxf7HUZ3kz/RAwmc+RZXLLrMjftlBjME+5bGh6f2booqmF7O3GTVU24aUC7xneo0Afd2dQdd8ACZFYeMAF0IdUTXZhgT/KTO9rrrzjUnYQ4n3yLmXgRildfENwGifKFHlI9KPdFSJ/JobMLFC+Fw3bFj5Pf947xI/v/mA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520033', 'A23126520033', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 83.30, 80.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '5a9cabfbf470079003eb71eda65589d0752b35670638855d829599659512f07a', 'CERTIFIED', 'PUBLIC',
            8.00, 7.00, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'S4tPoU1l5R/ikJpgSP00DneRrP4qmQJpfRqHedf2aBzB8lCe4yNVfx3n4Yrm1Jo0JFr5roq+qWJL07WQJUfVV8EPvbrn003g9Y0rLeh93H9BIIC0Wf4QNNL0YKBtxbyfvBdEcWX/uMDAdI+6GTqnSpSTIAR/zb6Bvhmo3ZucKVJoiA5quQ6fwffIprVFnDmX79hjJwWfgCBdEG/XZ0wCuw1U0DJFDQ9fZLvmFIKR9AKF1MJJj4msKmjmErOXJUI0LQv6m6ydSrCVa7ItTfbfvNgkOtKxVYHNK0AeSz265RfgGQ3+LFBy1WBnMFYho3FgUJyZY4uut0z3sLP6bGuhbw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520034', 'A23126520034', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 83.40, 83.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '3ad2a8d4e3750efdabc82f08821df56b6f055392de02165e23ee2c9592f8c2b4', 'CERTIFIED', 'PUBLIC',
            8.35, 8.19, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'okH980dwBIdUaMc10sNTr6t+L80hyBBnSo5/kyuKCCOmW+yCiMYEwD2cOW4YKia8Pfj2P89euuS5l3E50ihQdHs7UcQrVbkmYaqV5iBDV+QcvJ20yzosJP2Adpmr6gSljimDtZCNsnKJlpjJx+3khxEWoQGdNkAhCQAl8utX1Ok+WzkK7krRdAZDZqc21G5xW6NjNtiT6KTMAIOd7AOuXhUozTXD4DZWS8R9gBqOYM/1yJLoj7v5feVF62OhMUJqkMscPekTZ5fWtAw7lwMSXmGI5BHNEEO5O5k5Wa2Djkd4uy1uqlpkZz+YErGAHi6ap3qhrvuU7MP+F0DPec+WIg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520035', 'A23126520035', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 83.50, 74.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6080b1fd9d974003d89ccd67843545d20d6c910416da323c7adac78514f3195b', 'CERTIFIED', 'PUBLIC',
            7.49, 7.95, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'o9Tlxm3VO0m5Q64aYfwzsn58HX+tUSW3Ip2OfOuxCRDwtvJmZZUAjvwUdsOGyQP3ViLmsHiEaUeFtndKfwo3nfAuNPC2LDXDdnNdQ88UrXPmIUMwHYHDEEjkgaFKqgzY1itHr3qnAnbZWXa+xLyJ5TtKyOPNhvodPLYCsmuzWI3fpxRderf4gVu7BJvic5+0RPwxuJNEl1MJ3ktgLM5gTczmsodeDTwAOkBRUr9MV7nUlS1Nl6RcNUaAFHxOlWSHn+KiKb+3T4AHICPFn++71oXasQYZZhhVGKdpBakUOr63DpbJOkm9WldXcI275jpNlK2vjmq1jENufEAcyjrOrA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520036', 'A23126520036', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '6948c0df399022b81e501e107f2c3fa5a036c79bf03b9ee799ac44ee74f64cac', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'aMsR6PL7UOGx9BGQYUu9CGOJVPoWGZ8u22xc8nCLkVUg9uE2ZOZZ3mUwxJ5dIX4l67kdCccPH7b1tBKEvPZ77miGs8fUvnhcLSsMTJs9eNzET4hyocLVR643W3XUiTfPtCpp+AGsMcXBvxzR/hfw1y36EzBNqBCRfiasqEWwziXpqYfihUPN6loK3ZKqS95/Hb4PT9ovcKRSmsChXgLGLBN+8XYgsLhzdO97Hi6PL8Qqg0sDcod51aNc2cSM+DUHs1wrToUHCBvf1qIxxQpSMS6qqsO/KA2qVK77lpfddQnqGortP73ueJiZ/XobXxRlVXdzBjyzPtucyvj2Xcv/UA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520037', 'A23126520037', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 83.70, 74.40,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '88fe57b93de16c5ba27c7c16fbca2cbfb029f5dedf2e744ad509830ddd202677', 'CERTIFIED', 'PUBLIC',
            7.44, 7.32, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'mCIFcVKrf1x40kvn5vQb33Q6oL6j8wr2QnLAKrC1p9Z8v12fcReC4pUoLpTrkmeYIQgiK6a1s7Z2L3FUj1utQIU2il2JYm6hBdIACxs2mjzV8XzlsAwikqhV95ote4zu/S53t3/NK8Cxrcgm2PmXO8SoAj5+zG42YVhUZoxqAxIxXxy/uLY9kv2cMFIiS72CE3Mjk88qgClCSR4zvOyZ1k4WYqdnF81rdPWTVnvpv7TzMP3UNRw66fEIxYS/5+V0KLus0tvZxbc45mSa/YxANnz3JLFM42MUTRtK+hVmzj1iZweXymRAnRSgXBMJqVzo1qnNbziDq5yRUNcVaZE3Zg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520038', 'A23126520038', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', 'b5ede69c8f130ffc70e10c9d69acfac5bc2adc18f462501682d4b26e925ab915', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'bcoL5gd3GLiP8Mzj8266AphSsvHzqG0rRjKb8HSNjzw+QwoAvqmQG05BjcWfhPAZfdIBeD3rxoVnDVDqqbb8AGAdwkDRLPH3i3o0Lf2cetExiZfOx17t65KcDf8UQtQteGCPnP9ea6bd7mhVhtSBgx+NRz8HFLWMdnsm8YBjsb+V9c7ZmWsQDnB8vkf3H+k6zmd/HRAOZNaSSkGYkFIUIdiZ7tlQOIDWZGyZAMNqKea4DzQldMW7PRreyQ5Uhqf/UEPnM10xtT9sIBcyedrazSSg+ufojjuTyg8lKyVjBwrGZg34axAcxWoZKa7hL5+lSr10/N4KOltNM9ehXUEPAg==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520039', 'A23126520039', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 83.90, 66.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '0a891df55bbe6b412d3a0f137639d3c836a1cdbdb3607485d438686b17a83da0', 'CERTIFIED', 'PUBLIC',
            6.67, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'JU2kS2HstJVBSimqmVBXtbMC/opZiamhbgC+FI7JdVwdDaw8V7rGYwYucIvtEz4bMmFsxoY0/JM1Gz2XR+eGLr5KUyrZlwj7rSxcNLO1QMoBBnjf9BxpXi73w3IiG4Y//RzXY1sRdADhU4D0bt7WG2lVCXLtyMrulJdj+3TLNaqsOjf0MY+O4W6TgPQn5BMWeiuLFkd7kCTK81HQAmaX5M8MWolSy8b6di8l1EFZFWb22Cpwe0db8xowDw8rmgflJsTsA+Al9yHZFd+FfwmpbrisgWbidUOhN95XZxJ0jZMQcGiDF7h6YxTu0TkR9UH18Q0EcwNIzFDNrYrb2J3Q9w==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520040', 'A23126520040', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '23cc0482055bc762f59f43e7097770989800ec6ab33fb7a588dac48ab71978c8', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 1, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'gLqM9ybYGyYdCOiRQXkeaSn8lT3TL/UzqIs8H03R99Sk6sqr8Yccq9NGJDH5OAxizaq+ew20R3nZVn3WkwmGm93UASjm1LRv4qpayD9k9YRcNpyLKjSevKZnE+VEr3UuUtfCjIb9hUm5iNsJB16IRlE9k4dYEctO9q3xwvw6O1qzKdGH9LEDUgkzw67UXCE9zbAVjw6Jf1jaj+sF0nu7IfioKEb3RPEq/cVzFF+AV2R1ATeS0pqHWt1M0lhbi+um5kMMtxbjvoatWV9ygAmzpdBuHzNuLXI+y2vEvGJJ/xCLgSO1wFXMp8WwodVPf0SO6CdDqYvty0wYzIoohb7kzA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520041', 'A23126520041', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 84.10, 71.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'c0eecf85f03dfd23f00fc0c4c17fc845bdfe01ecf0bd3097625060f471f2f4dd', 'CERTIFIED', 'PUBLIC',
            7.12, 7.25, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'hFg2kvrXPVSyQevkPi2D5Ea9zkzk/+Q2b+Y81rQpPPQbeCKD20WyqRPcu4sqXAvxeSxMKdMCDP++R0xrQHEo/8dUanhtvNqStaQtssY65mT37cSYk5SbVFmi+CgSNpoZm/A6wQPN2wmlXZHCRSu6YByGhirYbk4u/l8T0qIWSZefPQuy4NL3YoEc20A2rmRa+pqkLgxR1QEbZqDr4TGJVVTxTtGQ3VfAhOHgrODQheIrKEYvIciHCmUWRb2bARUQ10KNLfuO/Qi4C9wi/mRrzyBH5fP4yCGgFp7Jdw0s2OntefliqIZUygpcOW5fbxw6AxyzFdAoXijF2GOlF+sXZA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520042', 'A23126520042', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 84.20, 68.80,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'dbf9562b3b943229bf06f1a654c1a93d8e94a47b65736ae4638a1c896199bc0b', 'CERTIFIED', 'PUBLIC',
            6.88, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'joaRDFbkRDkzZINMIRnQslF7cLmAuMu5Pm3Dym+uRcCWMPUG5Tt19kXhX9taNXvNrLfsLkkF9jjYn3RP2ej0F4vi5k9P6sFU4Dh2H1sSqUf66/kI7pPKq5WAXuVD0e0daWIEeER2B3EboHhuRYKvhvlRnJQOtRNLP0TO4ymXA3UVcFyhVhiRldBel+6my/GWrtN5MyN2COX9lnbwCjRifhOj5MN74iW3LvIJz+47XpjYa3jmXmZTUjlyE8XQnyPAVcwb2kbolIKFprrA2fxPHPFdOL7z0d/Ufps8Zskx9lOGkPCm8AiNNII38R3W6C5xvC/h2smnb3aV4ayhjkPlkQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520043', 'A23126520043', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 84.30, 80.00,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '3821bb04156a3599fe36f8242df987a125c8457a3775b031f8935972fd578582', 'CERTIFIED', 'PUBLIC',
            8.00, 7.52, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'RmZ25pRtvrCF+4TcnK5nY7ZcRQyk+WYNmcdBhbuj1FPcNl6tVhx8K/Ys9Rm2mM8oHrRfSZFyhAx4k623gjCpzwjTdU1b8xheorr6OqP/2+Y4o4j2ZO7ZmjENt3tnUSF+VOqFydL/VkOgNoWxBW2hBVleeth05VO+6NgqciA3Zkwzk8Whi/se+/sF4ebOvaeAwivta9yvkMuPBrb8xrVLuTnC3luknc3FLlDtcQO3RZ8kg+LHhrXzzrQm2bZL/HpF2IvW/thHOJfxi8ngmTNtPFdm1eTaRDVbQHDcLdvkUOk+EF3jyFSmM8PoXSSIP0tiOm9GcsAiitmd3Jb0q8yOoA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520044', 'A23126520044', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 84.40, 70.90,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '6844a5f1fb3f1ae493a7c43ccf80981c5ad4cd85c99dfb9a9c256c53e5d61d44', 'CERTIFIED', 'PUBLIC',
            7.09, 7.09, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'Ae1sW1CKfsszDfh9xgsnwCe2xd091/W7W99ja4/6sJ4Lvqv+Q7CzOMXd0GdRksPNk6KG/XcX/+cDkuZntj75lR9cjQ2T0OVt4t24COgGGeLNUXT/bM11G0eynzksj7vH2QVRMrcvq2lxaa7Uym0y0dxekt5Rmxq/agBAOLCsW7UTgv0Mhiy9tJfqnXM851gbqzNi8v0SrR7LtefxNOaaL6E8wZsK3jIe4Mm3pLGiS35kH5T5oTI667ketEMYH2ZNvqdlK9kuDY+iWS2TYXj0z+nw5SIyODmz/FRt3PvJyUWRx1B/lHAJgAwBq6jfJdcF2nIOU53s3JSh6SrKWmB9Sw==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520045', 'A23126520045', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 84.50, 80.50,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'b34a419fa4b887b18b2d64b447b8c1cd32b3e0935446542cb0805a09d1a2348a', 'CERTIFIED', 'PUBLIC',
            8.05, 7.98, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'djQunyl8xQb13xXG0he7Z0B68qpO07cls0cW2msuVt6RxYYHg3quNlFMPj1+Tt+RxEzRcHUnB/Kiy8TWu+NAIHaFUVpBWfAe19Y2uH11aPYYk5iVVVA7/pAl2eUoxu4zN85xIs8ZaIWCq24xaydcLu2P2sn0Cii2HLExKEXqpMyv8TiD3gl1gymclkPZAJeMS5MS2ek1ax4c7G3z07/7XBFzaYi6OucVhmsZcTn31Bow1n1K+XJ51Yxjh+piE7ISZe8KDFqg+dr70xuEayyQnot+ywIfFr3ANigpMaPmJC3uoE8vsg9V4kuwXW3vZNAlZIh9NuSbzeJtjYmVUG711A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520046', 'A23126520046', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 84.60, 84.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '91e85f177e97b01b74db63ba74e20b38011dfe459b3caa170a63abea2655f58a', 'CERTIFIED', 'PUBLIC',
            8.42, 8.19, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'KrAG2gBi8lUR2yWjCDlZ2eVOVAIhn19yxkBkKCYthTyGjkM6bBA8f9XPuVpXGwszPKELxuU8ksWtVZQA5mw0S8dkjyUXbzT+KFGYiQDvjGG67kpmzjVL3O77Vuvwc5BMm3o43UE4xa44KW4ug5YUoxoWmu0gxRuwOPZpVGxM+q219DBJYk+Hz9/WYIbslecgaoBS1Q3LIlq0E+UnW8X4jsUovUV5UeTHErvUQTOEFIe2UxhF5wNIeQY2DkAtG+yky5ZvY5CoFT1psR/Yxkj7wPUQeocEOm4yTZOqrZGrSG02ns+JTQVrmtKt7md5jkfd2Teb5+Mu9rYC9/qCAElb6A==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520047', 'A23126520047', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 84.70, 78.10,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '58a3398a1b670d194f812f87c3fcaf7de111fefe7206d9c3d442bb5d018812c7', 'CERTIFIED', 'PUBLIC',
            7.81, 7.55, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'acwlAJK0OqnlSyTnOyLtc5r3Hns77G8a8H/cOHZLY/dP+ofuCbh7GZ60mRRi0L/S600DpffW+0SPM6+PyXqL22dWe3k87qVfqx/eXtuXHgM0eI1PZv5iYxPMkRNMejgSYlWba+kgbgKDrhCP15BcwknY+4EieTPpVzhFZb9nKtRX7nxlNSpk/+ej8dDTtrF6LGWsSLSznR6i+rnsKd8W4/Jj3HC0cNrAmy4ybV4reVMRg/Sj20IYKMX5c1hScEhmNnmH1BDdu3VFIO7ZEojmpHAwYMnzyxPqYJIKRtEgxquq9o4CDNckZEMEo3yIKzN0vm3r052DbKWvQvTpS4HBhA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520048', 'A23126520048', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '9a8b50ae4cd0c0a436863da3df4349fe8339c0f4da94a5aebe23dc34624c44b8', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            't/h/tJ8zn6DJSHL4+0v2bXoRtPMgiNw6vVJFNZmKrjurQWJRbwNxmUpuqoFIUkaQRXDZswJFen/iSv8GgHvbZRSs/MhOFy7tTPirqgIcNvAWx3J/kh0N3mLBFpv6GQG2KR78SpNbG/8iNnjMGzlsFzE4/hTPDe8Pf0HRmPKpU1ns9QfZF/yjJ/7pQjr3YL+R0+Wn4bWIp7XofbEVdO+sU2M3+aLqcDirYzMuhfAmmU8Fa5b3IPIDuhXU9SgaTXryR2bz93uHxRO7ek3mUtc7JJVsI6gtpAKD9RD6hf3Rum6itPk4UpfEAAmPVNOYsilpPM6HLdwgc3IUD+0FcseuzA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520049', 'A23126520049', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 84.90, 60.70,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', '16f9fbb3e054fd98158b37e4623ae63309095927d8bef10a948ea5e8610ab08a', 'CERTIFIED', 'PUBLIC',
            6.07, 8.50, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'NiGFFpsisyhJ6trsb/BySsRwxyMm9EmSywpnNkBBkA3ZgWPyQvxQ/UMwxhjqyLN095VFCUJKdb6ed++D9pqSQsCHQnWThMI4EnpRReVTwVrnDHsb6b6mR/ErkH6NuXdn/HC27Ri3bMkZMtkCXmcOVw8vz+rdO9JXAJK/llHXexgQXtREGcHb4FuV6rhi/grtBlZYlQctZUAvLRf+KJKosrl1LrqP8RWMvgfc8VFeL5TQI/8G4dJL+amkGmL4UKdR5I1470fP94dVprnqZT/nAHRpajgx2xc1bNMyq19mwr0X1A7fQR+WlAcQb9+Tje/cDZsuXNZ3ivMH3p3MGFGUiA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520050', 'A23126520050', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 68.50, 42.00,
            'INCOMPLETE', 'NOT_ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'REJECTED', '49c5381a99481f761cf3c49eed11f8e027c4c39f63a336ad9ca88ab8f6ad8554', 'UNVERIFIED', 'RESTRICTED',
            NULL, NULL, 2, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'efz90Gmg1tbeLJOClF8KdlCoFRhyp5INd7f4WSPrGoq6wmXz6vW5qgan2yxSznNNU98wW2EDyhr5paTaTHWJMpZ/SSSqK8eJ/fhGcb46g+q6RElpRbrEhYiR8AXaqbQ94Q5eSTdaZrngoafxhAFmKiKSTN0qwDB9Tyy6gt/daRKayA2yyoRb82KJQgrFm0pLTKlXeOMRKz9QQpdAL+4Fa1w3nt3Q/CEq6PFOJbTXc0u3qwBTItp8xAS2mivSxMTb0E8KlFdkfm7h89prCa6+J/16p/tRFgjjIIZnxPpQQJ1xMEg6/ynBE3S/gE4AywoOk48GwwCGFtvTyG8Opv1Nig==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520051', 'A23126520051', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 85.10, 82.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'bbddb0687759884bdfe77d7d3bb80ac3bec7ebbf1c929a7c8daf6e135b12ae18', 'CERTIFIED', 'PUBLIC',
            8.23, 8.52, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'sCKfoc5BSUbC3sTmQTL2JOThqaAuf8OrNbgIut2b04uUJuErYxyf7nPcSQpMIMfXMhNvBT6mSDWn+adduo/HrdnqDo7jJ8gP6BWdPEXGHiqcYLb9cADYuaGHpbG1NdaukRFo7ZIfRujn8sfLKjnowDH/zfVbTUKV6oaYrhWpA37JbcXLTALwvDKVpQ4g9rxK8ruqxDgLSSUJ/4XkO12ysGTUgwBsfcLpwi5gnkIijezavDclC5GV4preJM9BxIBJR/wJ5hwkorPYjp+JBVnmE2ClcFv7WwyyKL57Od7PmGl4Oycp1GhT6Wa9my3RBb2lK5JKA2PLfEXBN89s1T3yeA==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520053', 'A23126520053', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 85.30, 74.20,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'a35740d429f5d33ef2a44536cd97c97648315e4a0238b73c74fdcb4408250920', 'CERTIFIED', 'PUBLIC',
            7.42, 7.42, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'VhPhb41SozTlopWq9Plx504cdkHpS9pmLY4fLIJzDYftVnJ7vALohEqHSjVaULve08C6EBGFS3wCVXDLWp9XFK/cU0Rpfup4OYwXAA1PRcSBK2B4z+0l6APc1etQh0qOrgAj3XVBRSsOsaF6vPdZPafubtjuIO3ClH2nHbGbtBokfFd8NTFVcYjn8Llha8IeekjFpSoEeEKjSyWTMP1YbvRyQp50Z+iiFYHCOSTEctDn1q1OSLvWDU+RLtrPww61fNlDGbt0UIBDVcH9Mqev8nyA/dmRDpdn2IhUc3me2nY0G52aMj6KpLfveN/vhVKyFqzgUGTuF4kza+1Z2kWzxQ==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );

        INSERT INTO credentials (
            credential_id, student_id, institution_id, program_code, course_code,
            course_start_date, course_end_date, attendance_percent, final_score,
            completion_status, eligibility_status, credential_type, issue_date,
            credential_status, credential_hash, verification_status, data_classification,
            sgpa, cgpa, backlog_count, signatories, digital_signature, signature_algorithm,
            issuer_public_key, key_id
        ) VALUES (
            'ONEST-ANITS-2026-A23126520151', 'A23126520151', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
            '2025-11-15', '2026-05-30', 80.10, 93.30,
            'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
            'ACTIVE', 'd55b0ebdad0ada6e1383deb2e2ae730a867047e569c4d928b402cd406dbb2a78', 'CERTIFIED', 'PUBLIC',
            9.33, 9.08, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS',
            'pVNuXQp/3A8E1LOkVs9U4wNn7bcNRxHFZI5CITCVu1nr02kQimcYzgzJeS6dp8LcZl6M87fFNtnAHtWHT22QhAiG6XHhY9AX2dKVFZgTC5f/7s8d8O9PqHmwmjU5OEGVp6YjJwnmStC3U4P7zTC9Zoq9M1eOWp+c4rf/OCHIqOC8hGPm5+HLG81NRBFcV4JFTP2aaPYc1hVgImQIraQl/qhJJoWzeDPdqw0sYqfOXFwYor1SoJXr1tLw6wHcjRWcx5VJpp/xJeyHlaCnltd6omUIOvQIjCqvM/+tf26cMYsCzwr98y9N4YW7BLzCk+cK7o6YP/dCJACXM+BkyfO/8g==', 'SHA256withRSA', '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnqYDN4UyjYegt4AXQ33
MIEtqKNar3p/kecXvJewYmm7PH3GBpNE6qoWQWsP7mcAIZEg9C0gg03jGQfAFngD
gB5glwtcisJCGVJuqd6UzGNePAR+UDwxauuQ0Dx0uQc8+R7v+ibDV8zOjYmM8vOa
QLe4IfSeigcMkumdpL1qa4YvnkvwmVFj/8gv4/xHayFsidLljhsYhsvaeK22jnEp
TaJ5T8ITnLf4iScRKABGYwDxkZOS0SAOAHXATRYSrR4jpKssPahAEv1Baw+qo+NG
8JF9/u31/etkbuC0V9nLuC/N/4/sbk159oT+sISGWmiJZLHJY6CtCKdNYXCk78+G
EQIDAQAB
-----END PUBLIC KEY-----', 'did:onest:anits:examcell#key-2026'
        );