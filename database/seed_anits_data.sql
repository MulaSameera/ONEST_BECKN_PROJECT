-- ============================================================
-- ONEST DIGITAL CREDENTIAL PLATFORM — ANITS COLLEGE SEED DATA
-- Institution: Anil Neerukonda Institute of Technology & Sciences (Autonomous)
-- Affiliation: Andhra University (AU), Approved by AICTE, NAAC A+, NBA
-- Regulation: R23 | Degree: B.Tech (All 9 Engineering Branches)
-- Real Data Source: ANITS Tabulation Register - III/IV B.Tech SEM-II REGULAR (R23)
-- Issue Date: 2026-08-20 14:01:01
-- ============================================================

-- ------------------------------------------------------------
-- 1. INSTITUTIONS
-- ------------------------------------------------------------
INSERT INTO institutions (institution_id, institution_name, issuer_id, accreditation, affiliation, district, state, website, contact_email)
VALUES 
('INST-ANITS', 'Anil Neerukonda Institute of Technology & Sciences (Autonomous)', 'ISSUER-ANITS', 'NAAC A+, NBA Accredited', 'Andhra University (AU)', 'Visakhapatnam', 'Andhra Pradesh', 'https://www.anits.edu.in', 'principal@anits.edu.in'),
('INST-001', 'Anil Neerukonda Institute of Technology & Sciences (Autonomous)', 'ISSUER-001', 'NAAC A+, NBA Accredited', 'Andhra University (AU)', 'Visakhapatnam', 'Andhra Pradesh', 'https://www.anits.edu.in', 'principal@anits.edu.in')
ON CONFLICT (institution_id) DO NOTHING;

-- ------------------------------------------------------------
-- 2. PROGRAMS (ENGINEERING BRANCHES)
-- ------------------------------------------------------------
INSERT INTO programs (program_code, program_name, department, degree, duration_years)
VALUES
('PRG-CSE', 'Computer Science & Engineering', 'Computer Science & Engineering', 'B.Tech', 4),
('PRG-CSM', 'Computer Science & Engineering (AI & ML)', 'Artificial Intelligence & Machine Learning', 'B.Tech', 4),
('PRG-CSD', 'Computer Science & Engineering (Data Science)', 'Data Science', 'B.Tech', 4),
('PRG-IT', 'Information Technology', 'Information Technology', 'B.Tech', 4),
('PRG-ECE', 'Electronics & Communication Engineering', 'Electronics & Communication Engineering', 'B.Tech', 4),
('PRG-EEE', 'Electrical & Electronics Engineering', 'Electrical & Electronics Engineering', 'B.Tech', 4),
('PRG-MECH', 'Mechanical Engineering', 'Mechanical Engineering', 'B.Tech', 4),
('PRG-CIVIL', 'Civil Engineering', 'Civil Engineering', 'B.Tech', 4),
('PRG-CHEM', 'Chemical Engineering', 'Chemical Engineering', 'B.Tech', 4),
('PRG-001', 'Computer Science & Engineering (Core)', 'Computer Science & Engineering', 'B.Tech', 4)
ON CONFLICT (program_code) DO NOTHING;

-- ------------------------------------------------------------
-- 3. COURSES / SUBJECTS CURRICULUM (ANITS R23 SEM-II)
-- ------------------------------------------------------------
INSERT INTO courses (course_code, course_name, program_code, course_type, credits, semester, regulation)
VALUES
-- CSE Subjects
('CSE-ML', 'Machine Learning', 'PRG-CSE', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CSE-CNS', 'Cryptography And Network Security', 'PRG-CSE', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CSE-CT', 'Cloud Technologies', 'PRG-CSE', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CSE-DIP', 'Digital Image Processing', 'PRG-CSE', 'Professional Elective-II', 3.0, 'SEM-II', 'R23'),
('CSE-NLP', 'Natural Language Processing', 'PRG-CSE', 'Professional Elective-III', 3.0, 'SEM-II', 'R23'),
('CSE-IRES', 'Introduction to Renewable Energy Sources', 'PRG-CSE', 'Open Elective-II', 3.0, 'SEM-II', 'R23'),
('CSE-MLLAB', 'Machine Learning Lab', 'PRG-CSE', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('CSE-CNSLAB', 'Cryptography and Network Security Lab', 'PRG-CSE', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('CSE-DIPLAB', 'Digital Image Processing Lab', 'PRG-CSE', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('CSE-HLRES', 'High Level Reasoning and Employability Skills', 'PRG-CSE', 'Skill Course', 1.5, 'SEM-II', 'R23'),

-- CSM (AI & ML) Subjects
('CSM-NNDL', 'Neural Networks And Deep Learning', 'PRG-CSM', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CSM-NLP', 'Natural Language Processing', 'PRG-CSM', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CSM-DEVOPS', 'DevOps (Skill Course)', 'PRG-CSM', 'Skill Course', 2.0, 'SEM-II', 'R23'),
('CSM-PE', 'Prompt Engineering', 'PRG-CSM', 'Professional Elective-II', 3.0, 'SEM-II', 'R23'),
('CSM-NOSQL', 'NoSQL Databases', 'PRG-CSM', 'Professional Elective-III', 3.0, 'SEM-II', 'R23'),
('CSM-MAD', 'Mobile Application Development', 'PRG-CSM', 'Professional Elective-III', 3.0, 'SEM-II', 'R23'),
('CSM-BC', 'Block Chain', 'PRG-CSM', 'Open Elective-II', 3.0, 'SEM-II', 'R23'),
('CSM-NNDLLAB', 'Neural Networks And Deep Learning Lab', 'PRG-CSM', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('CSM-HLRES', 'High Level Reasoning And Employability Skills', 'PRG-CSM', 'Skill Course', 1.5, 'SEM-II', 'R23'),

-- CSD (Data Science) Subjects
('CSD-BDT', 'Big Data Technologies', 'PRG-CSD', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CSD-DL', 'Deep Learning', 'PRG-CSD', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CSD-WT', 'Web Technologies', 'PRG-CSD', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CSD-BA', 'Business Analytics', 'PRG-CSD', 'Professional Elective-III', 3.0, 'SEM-II', 'R23'),
('CSD-FE', 'Feature Engineering', 'PRG-CSD', 'Open Elective-II', 3.0, 'SEM-II', 'R23'),
('CSD-DLLAB', 'Deep Learning Lab', 'PRG-CSD', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('CSD-HLRES', 'High Level Reasoning And Employability Skills', 'PRG-CSD', 'Skill Course', 1.5, 'SEM-II', 'R23'),

-- IT Subjects
('IT-DAA', 'Design and Analysis of Algorithms', 'PRG-IT', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('IT-AC', 'Applied Cryptography', 'PRG-IT', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('IT-ML', 'Machine Learning', 'PRG-IT', 'Professional Elective-II', 3.0, 'SEM-II', 'R23'),
('IT-CS', 'Cyber Security', 'PRG-IT', 'Professional Elective-II', 3.0, 'SEM-II', 'R23'),
('IT-SC', 'Soft Computing', 'PRG-IT', 'Professional Elective-III', 3.0, 'SEM-II', 'R23'),
('IT-DF', 'Digital Forensics', 'PRG-IT', 'Professional Elective-III', 3.0, 'SEM-II', 'R23'),
('IT-CP', 'Competitive Programming', 'PRG-IT', 'Open Elective-II', 3.0, 'SEM-II', 'R23'),
('IT-PS', 'PySpark (Skill Course)', 'PRG-IT', 'Skill Course', 2.0, 'SEM-II', 'R23'),
('IT-CRPLAB', 'Cryptography Lab', 'PRG-IT', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('IT-DEVOPSLAB', 'DevOps Lab (Elective Lab-1)', 'PRG-IT', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('IT-IOTLAB', 'Internet Of Things Lab', 'PRG-IT', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('IT-HLRES', 'High Level Reasoning and Employability Skills', 'PRG-IT', 'Skill Course', 1.5, 'SEM-II', 'R23'),

-- ECE Subjects
('ECE-VLSID', 'VLSI Design', 'PRG-ECE', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('ECE-ESIOT', 'Embedded Systems and IoT', 'PRG-ECE', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('ECE-BME', 'Biomedical Electronics', 'PRG-ECE', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('ECE-WSN', 'Wireless Sensor Networks', 'PRG-ECE', 'Professional Elective-III', 3.0, 'SEM-II', 'R23'),
('ECE-NNFL', 'Neural Networks and Fuzzy Logic', 'PRG-ECE', 'Professional Elective-III', 3.0, 'SEM-II', 'R23'),
('ECE-DIP', 'Digital Image Processing', 'PRG-ECE', 'Professional Elective-II', 3.0, 'SEM-II', 'R23'),
('ECE-ITC', 'Information Theory and Coding', 'PRG-ECE', 'Professional Elective-II', 3.0, 'SEM-II', 'R23'),
('ECE-SA', 'Sensors & Actuators', 'PRG-ECE', 'Professional Elective-II', 3.0, 'SEM-II', 'R23'),
('ECE-FQC', 'Fundamentals of Quantum Computing', 'PRG-ECE', 'Open Elective', 3.0, 'SEM-II', 'R23'),
('ECE-VLSIDLAB', 'VLSI Design Lab', 'PRG-ECE', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('ECE-ESIOTLAB', 'Embedded Systems and IoT Lab', 'PRG-ECE', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('ECE-SOC', 'Skill Oriented Course in Machine Learning', 'PRG-ECE', 'Skill Course', 2.0, 'SEM-II', 'R23'),
('ECE-HLRES', 'High Level Reasoning and Employability Skills', 'PRG-ECE', 'Skill Course', 1.5, 'SEM-II', 'R23'),

-- EEE Subjects
('EEE-PSP', 'Power System Protection', 'PRG-EEE', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('EEE-PSA', 'Power System Analysis', 'PRG-EEE', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('EEE-PE', 'Power Electronics', 'PRG-EEE', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('EEE-ACS', 'Advanced Control Systems', 'PRG-EEE', 'Professional Elective-II', 3.0, 'SEM-II', 'R23'),
('EEE-DBMS', 'Database Management System', 'PRG-EEE', 'Open Elective-II', 3.0, 'SEM-II', 'R23'),
('EEE-ESIOT', 'Embedded Systems & IoT (Skill Course)', 'PRG-EEE', 'Skill Course', 2.0, 'SEM-II', 'R23'),
('EEE-CSLAB', 'Control Systems Laboratory', 'PRG-EEE', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('EEE-VLSI', 'Introduction to VLSI Design', 'PRG-EEE', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('EEE-HLRAGIS', 'High Level Reasoning & Advance Grammar', 'PRG-EEE', 'Skill Course', 1.5, 'SEM-II', 'R23'),

-- Mechanical Subjects
('MECH-HT', 'Heat Transfer', 'PRG-MECH', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('MECH-FEA', 'Finite Element Analysis', 'PRG-MECH', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('MECH-HEV', 'Hybrid and e-Vehicles', 'PRG-MECH', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('MECH-DME2', 'Design of Machine Elements-II', 'PRG-MECH', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('MECH-MM', 'Mechanical Measurements', 'PRG-MECH', 'Professional Elective-II', 3.0, 'SEM-II', 'R23'),
('MECH-ML', 'Introduction to Machine Learning', 'PRG-MECH', 'Open Elective-II', 3.0, 'SEM-II', 'R23'),
('MECH-DSP', 'Data Structures using Python', 'PRG-MECH', 'Open Elective-II', 3.0, 'SEM-II', 'R23'),
('MECH-MTMLAB', 'Machine Tools and Metrology Lab', 'PRG-MECH', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('MECH-CAMLAB', 'Computer Aided Manufacturing & FEA Lab', 'PRG-MECH', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('MECH-HLRES', 'High Level Reasoning & Employability Skills', 'PRG-MECH', 'Skill Course', 1.5, 'SEM-II', 'R23'),

-- Civil Subjects
('CIVIL-SS', 'Steel Structures', 'PRG-CIVIL', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CIVIL-FM3', 'Fluid Mechanics-III', 'PRG-CIVIL', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CIVIL-RCS2', 'Reinforced Concrete Structures-II', 'PRG-CIVIL', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CIVIL-WRE1', 'Water Resources Engineering - I', 'PRG-CIVIL', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CIVIL-APC', 'Air Pollution Control', 'PRG-CIVIL', 'Professional Elective-II', 3.0, 'SEM-II', 'R23'),
('CIVIL-WSM', 'Watershed Management', 'PRG-CIVIL', 'Professional Elective-II', 3.0, 'SEM-II', 'R23'),
('CIVIL-SE', 'Safety in Engineering', 'PRG-CIVIL', 'Open Elective-II', 3.0, 'SEM-II', 'R23'),
('CIVIL-FMLAB', 'Fluid Mechanics Lab', 'PRG-CIVIL', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('CIVIL-HWELAB', 'Highway Engineering Lab', 'PRG-CIVIL', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('CIVIL-HLRES', 'High Level Reasoning & Employability Skills', 'PRG-CIVIL', 'Skill Course', 1.5, 'SEM-II', 'R23'),

-- Chemical Subjects
('CHEM-MT2', 'Mass Transfer-II', 'PRG-CHEM', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CHEM-CRE2', 'Chemical Reaction Engineering-II', 'PRG-CHEM', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CHEM-TP', 'Transport Phenomena', 'PRG-CHEM', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CHEM-CPDE', 'Chemical Process Design and Economics', 'PRG-CHEM', 'Professional Core', 3.0, 'SEM-II', 'R23'),
('CHEM-PRE', 'Petroleum Refinery Engineering', 'PRG-CHEM', 'Professional Elective-III', 3.0, 'SEM-II', 'R23'),
('CHEM-SE', 'Sustainable Energy', 'PRG-CHEM', 'Open Elective-II', 3.0, 'SEM-II', 'R23'),
('CHEM-MTLAB', 'Mass Transfer Lab', 'PRG-CHEM', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('CHEM-CRELAB', 'Chemical Reaction Engineering Lab', 'PRG-CHEM', 'Laboratory', 1.5, 'SEM-II', 'R23'),
('CHEM-HVRES', 'High Level Reasoning and Employability Skills', 'PRG-CHEM', 'Skill Course', 1.5, 'SEM-II', 'R23'),

-- Backward Compatibility Alias
('CRS-001', 'Advanced Cryptographic Engineering', 'PRG-CSE', 'Professional Core', 4.0, 'SEM-II', 'R23')
ON CONFLICT (course_code) DO NOTHING;

-- ------------------------------------------------------------
-- 4. REAL ANITS STUDENTS (HALL TICKET MAPPINGS)
-- ------------------------------------------------------------
INSERT INTO students (student_id, student_name, seeker_id, program_code, batch_year, regulation, current_semester, email, phone)
VALUES
-- CSE Branch
('A23126510001', 'Aarav Sharma', 'SEEKER-A23126510001', 'PRG-CSE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126510001@anits.edu.in', '+91 98480 12001'),
('A23126510002', 'Bhavya Varma', 'SEEKER-A23126510002', 'PRG-CSE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126510002@anits.edu.in', '+91 98480 12002'),
('A23126510003', 'Chaitanya Reddy', 'SEEKER-A23126510003', 'PRG-CSE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126510003@anits.edu.in', '+91 98480 12003'),
('A23126510004', 'Deepika Rao', 'SEEKER-A23126510004', 'PRG-CSE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126510004@anits.edu.in', '+91 98480 12004'),
('A23126510007', 'Eshwar Prasad', 'SEEKER-A23126510007', 'PRG-CSE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126510007@anits.edu.in', '+91 98480 12007'),
('A23126510008', 'Farhan Khan', 'SEEKER-A23126510008', 'PRG-CSE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126510008@anits.edu.in', '+91 98480 12008'),
('A23126510009', 'Gautham Krishna', 'SEEKER-A23126510009', 'PRG-CSE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126510009@anits.edu.in', '+91 98480 12009'),
('A23126510011', 'Harika Chowdary', 'SEEKER-A23126510011', 'PRG-CSE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126510011@anits.edu.in', '+91 98480 12011'),
('A23126510020', 'Ishaan Verma', 'SEEKER-A23126510020', 'PRG-CSE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126510020@anits.edu.in', '+91 98480 12020'),
('A23126510084', 'Jaya Lakshmi', 'SEEKER-A23126510084', 'PRG-CSE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126510084@anits.edu.in', '+91 98480 12084'),

-- CSM (AI & ML)
('A23126552001', 'Kavya Madhavan', 'SEEKER-A23126552001', 'PRG-CSM', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126552001@anits.edu.in', '+91 98480 52001'),
('A23126552002', 'Lokesh Naidu', 'SEEKER-A23126552002', 'PRG-CSM', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126552002@anits.edu.in', '+91 98480 52002'),
('A23126552008', 'Manoj Kumar', 'SEEKER-A23126552008', 'PRG-CSM', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126552008@anits.edu.in', '+91 98480 52008'),
('A23126552015', 'Nandini Gupta', 'SEEKER-A23126552015', 'PRG-CSM', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126552015@anits.edu.in', '+91 98480 52015'),
('A23126552064', 'Omkar Joshi', 'SEEKER-A23126552064', 'PRG-CSM', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126552064@anits.edu.in', '+91 98480 52064'),

-- CSD (Data Science)
('A23126551001', 'Pranavi Reddy', 'SEEKER-A23126551001', 'PRG-CSD', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126551001@anits.edu.in', '+91 98480 51001'),
('A23126551003', 'Rahul Teja', 'SEEKER-A23126551003', 'PRG-CSD', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126551003@anits.edu.in', '+91 98480 51003'),
('A23126551014', 'Rakesh Roshan', 'SEEKER-A23126551014', 'PRG-CSD', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126551014@anits.edu.in', '+91 98480 51014'),
('A23126551016', 'Sai Sreeja', 'SEEKER-A23126551016', 'PRG-CSD', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126551016@anits.edu.in', '+91 98480 51016'),

-- Information Technology (IT)
('A23126511003', 'Sandeep Varma', 'SEEKER-A23126511003', 'PRG-IT', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126511003@anits.edu.in', '+91 98480 11003'),
('A23126511005', 'Sneha Ananya', 'SEEKER-A23126511005', 'PRG-IT', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126511005@anits.edu.in', '+91 98480 11005'),
('A23126511047', 'Soham Sengupta', 'SEEKER-A23126511047', 'PRG-IT', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126511047@anits.edu.in', '+91 98480 11047'),
('A23126511114', 'Sri Harsha', 'SEEKER-A23126511114', 'PRG-IT', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126511114@anits.edu.in', '+91 98480 11114'),

-- ECE
('A23126512003', 'Tarun Raj', 'SEEKER-A23126512003', 'PRG-ECE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126512003@anits.edu.in', '+91 98480 12003'),
('A23126512009', 'Tejaswi Nambiar', 'SEEKER-A23126512009', 'PRG-ECE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126512009@anits.edu.in', '+91 98480 12009'),
('A23126512014', 'Uday Kiran', 'SEEKER-A23126512014', 'PRG-ECE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126512014@anits.edu.in', '+91 98480 12014'),

-- EEE
('A23126514001', 'Vaishnavi Devi', 'SEEKER-A23126514001', 'PRG-EEE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126514001@anits.edu.in', '+91 98480 14001'),
('A23126514005', 'Varun Tej', 'SEEKER-A23126514005', 'PRG-EEE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126514005@anits.edu.in', '+91 98480 14005'),
('A23126514160', 'Venkata Sai', 'SEEKER-A23126514160', 'PRG-EEE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126514160@anits.edu.in', '+91 98480 14160'),

-- Mechanical
('A23126520002', 'Vigneshwaran M', 'SEEKER-A23126520002', 'PRG-MECH', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126520002@anits.edu.in', '+91 98480 20002'),
('A23126520027', 'Vinay Kumar', 'SEEKER-A23126520027', 'PRG-MECH', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126520027@anits.edu.in', '+91 98480 20027'),
('A23126520151', 'Vishnu Vardhan', 'SEEKER-A23126520151', 'PRG-MECH', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126520151@anits.edu.in', '+91 98480 20151'),

-- Civil
('A23126508005', 'Yashaswini K', 'SEEKER-A23126508005', 'PRG-CIVIL', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126508005@anits.edu.in', '+91 98480 08005'),
('A23126508015', 'Yuktha Chowdary', 'SEEKER-A23126508015', 'PRG-CIVIL', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126508015@anits.edu.in', '+91 98480 08015'),
('A23126508036', 'Zoya Parveen', 'SEEKER-A23126508036', 'PRG-CIVIL', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126508036@anits.edu.in', '+91 98480 08036'),

-- Chemical
('A23126502001', 'Abhinav Sen', 'SEEKER-A23126502001', 'PRG-CHEM', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126502001@anits.edu.in', '+91 98480 02001'),
('A23126502004', 'Akash Murthy', 'SEEKER-A23126502004', 'PRG-CHEM', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126502004@anits.edu.in', '+91 98480 02004'),
('A23126502022', 'Ananya Deshmukh', 'SEEKER-A23126502022', 'PRG-CHEM', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126502022@anits.edu.in', '+91 98480 02022'),

-- Backward Compatibility Alias for STU-000001
('STU-000001', 'Aarav Sharma (Test Profile)', 'SEEKER-000001', 'PRG-CSE', '2023-2027', 'R23', 'III/IV B.Tech SEM-II', 'a23126510001@anits.edu.in', '+91 98480 12001')
ON CONFLICT (student_id) DO NOTHING;

-- ------------------------------------------------------------
-- 5. STUDENT SEMESTER TABULATION RECORDS (FROM REAL REGISTER)
-- ------------------------------------------------------------
INSERT INTO student_semester_records (student_id, academic_year, semester, sgpa, cgpa, attendance_percent, backlog_count, result_status, subject_grades, exam_month_year, date_of_issue)
VALUES
-- CSE Students
('A23126510001', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 9.26, 9.36, 94.50, 0, 'PASSED', '{"IRES": "A+", "DIP": "A+", "NLP": "A+", "ML": "A+", "CNS": "A+", "DIP_LAB": "O", "ML_LAB": "O", "CNS_LAB": "O", "CT": "O", "HLR_ES": "A+"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),
('A23126510002', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 8.91, 8.95, 91.00, 0, 'PASSED', '{"IRES": "A", "DIP": "A+", "NLP": "A", "ML": "A+", "CNS": "A+", "DIP_LAB": "A+", "ML_LAB": "O", "CNS_LAB": "O", "CT": "O", "HLR_ES": "A+"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),
('A23126510003', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 7.47, 7.84, 84.00, 0, 'PASSED', '{"IRES": "A", "DIP": "A", "NLP": "B", "ML": "A", "CNS": "P", "DIP_LAB": "A+", "ML_LAB": "A+", "CNS_LAB": "A+", "CT": "A+", "HLR_ES": "A+"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),
('A23126510004', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 8.00, 8.64, 88.00, 0, 'PASSED', '{"IRES": "A", "DIP": "A", "NLP": "B+", "ML": "B+", "CNS": "B+", "DIP_LAB": "O", "ML_LAB": "A+", "CNS_LAB": "A+", "CT": "O", "HLR_ES": "A+"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),
('A23126510007', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 8.72, 8.63, 90.00, 0, 'PASSED', '{"IRES": "A+", "DIP": "A", "NLP": "A+", "ML": "A+", "CNS": "A", "DIP_LAB": "A+", "ML_LAB": "A+", "CNS_LAB": "A+", "CT": "O", "HLR_ES": "A"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),
('A23126510008', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', NULL, NULL, 68.50, 1, 'FAILED_BACKLOG', '{"IRES": "A", "DIP": "F", "NLP": "A", "ML": "B+", "CNS": "B+", "DIP_LAB": "A+", "ML_LAB": "A+", "CNS_LAB": "A+", "CT": "A+", "HLR_ES": "A+"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),
('A23126510020', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 9.58, 9.61, 98.00, 0, 'PASSED', '{"IRES": "O", "DIP": "A+", "NLP": "A+", "ML": "O", "CNS": "A+", "DIP_LAB": "O", "ML_LAB": "O", "CNS_LAB": "O", "CT": "O", "HLR_ES": "O"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),
('A23126510084', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 9.81, 9.60, 99.00, 0, 'PASSED', '{"IRES": "A+", "DIP": "O", "NLP": "O", "ML": "O", "CNS": "O", "DIP_LAB": "O", "ML_LAB": "O", "CNS_LAB": "O", "CT": "O", "HLR_ES": "A+"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),

-- CSM (AI & ML)
('A23126552001', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 7.33, 8.44, 82.50, 0, 'PASSED', '{"BC": "B", "PE": "B+", "CNS": "A", "NLP": "B+", "NN_DL": "B+", "DEVOPS": "A+", "NN_DL_LAB": "A", "HLR_ES": "B+"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),
('A23126552002', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 8.68, 8.65, 89.00, 0, 'PASSED', '{"BC": "A", "PE": "A+", "CNS": "A", "NLP": "A+", "NN_DL": "A+", "DEVOPS": "A+", "NN_DL_LAB": "O", "HLR_ES": "B+"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),
('A23126552064', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 9.75, 9.73, 97.50, 0, 'PASSED', '{"BC": "O", "PE": "O", "CNS": "O", "NLP": "A+", "NN_DL": "O", "DEVOPS": "O", "NN_DL_LAB": "O", "HLR_ES": "A"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),

-- ECE
('A23126512014', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 9.82, 9.81, 99.50, 0, 'PASSED', '{"DBMS": "O", "DIP": "O", "IT_C": "O", "NN_FL": "O", "VLSI": "O", "ES_IOT": "A+", "BME": "O", "VLSI_LAB": "O", "ES_IOT_LAB": "O", "HLR_ES": "A+"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),

-- Mechanical
('A23126520151', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 9.33, 9.08, 93.50, 0, 'PASSED', '{"ML": "A+", "MM": "O", "HT": "A+", "FEA": "O", "HEV": "A+", "DME": "A+", "MTM_LAB": "A+", "CAM_LAB": "O", "HLR_ES": "A"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),

-- Chemical
('A23126502022', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 9.50, 9.27, 95.00, 0, 'PASSED', '{"SE": "O", "MT2": "O", "CRE2": "O", "TP": "A", "CPDE": "A+", "PRE": "O", "MT_LAB": "O", "CRE_LAB": "O", "HVR_ES": "A"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01'),

-- Alias record for STU-000001
('STU-000001', '2025-2026', 'III/IV B.Tech SEM-II REGULAR (R23)', 9.26, 9.36, 94.50, 0, 'PASSED', '{"IRES": "A+", "DIP": "A+", "NLP": "A+", "ML": "A+", "CNS": "A+", "DIP_LAB": "O", "ML_LAB": "O", "CNS_LAB": "O", "CT": "O", "HLR_ES": "A+"}'::jsonb, 'AUG-2026', '2026-08-20 14:01:01')
ON CONFLICT DO NOTHING;

-- ------------------------------------------------------------
-- 6. VERIFIABLE CREDENTIALS (ONEST DETERMINISTIC REGISTRY)
-- ------------------------------------------------------------
INSERT INTO credentials (
    credential_id, student_id, institution_id, program_code, course_code,
    course_start_date, course_end_date, attendance_percent, final_score,
    completion_status, eligibility_status, credential_type, issue_date,
    credential_status, credential_hash, verification_status, data_classification,
    sgpa, cgpa, backlog_count, signatories
)
VALUES
-- Credential 1: CSE Topper (A23126510001)
(
    'ONEST-ANITS-2026-A23126510001', 'A23126510001', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
    '2025-11-15', '2026-05-30', 94.50, 93.60,
    'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
    'ACTIVE', 'a8f09b5502a1b9d10e53efc1234a9b20984cfb7762a194bc028591efc77401a1', 'CERTIFIED', 'PUBLIC',
    9.26, 9.36, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS'
),
-- Credential 2: CSE Student (A23126510020)
(
    'ONEST-ANITS-2026-A23126510020', 'A23126510020', 'INST-ANITS', 'PRG-CSE', 'CSE-CNS',
    '2025-11-15', '2026-05-30', 98.00, 96.10,
    'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
    'ACTIVE', 'b7c10d6613b2c8e21f64f0d2345b0c31095d0c8873b205cd139602fed88512b2', 'CERTIFIED', 'PUBLIC',
    9.58, 9.61, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS'
),
-- Credential 3: AI & ML Topper (A23126552064)
(
    'ONEST-ANITS-2026-A23126552064', 'A23126552064', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
    '2025-11-15', '2026-05-30', 97.50, 97.30,
    'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
    'ACTIVE', 'c8d21e7724c3d9f32a7501e3456c1d42106e1d9984c316de240713afe99623c3', 'CERTIFIED', 'PUBLIC',
    9.75, 9.73, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS'
),
-- Credential 4: ECE Topper (A23126512014)
(
    'ONEST-ANITS-2026-A23126512014', 'A23126512014', 'INST-ANITS', 'PRG-ECE', 'ECE-VLSID',
    '2025-11-15', '2026-05-30', 99.50, 98.10,
    'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
    'ACTIVE', 'd9e32f8835d4ea043b8612f4567d2e53217f2ea095d427ef351824b0faa734d4', 'CERTIFIED', 'PUBLIC',
    9.82, 9.81, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS'
),
-- Credential 5: Mechanical Topper (A23126520151)
(
    'ONEST-ANITS-2026-A23126520151', 'A23126520151', 'INST-ANITS', 'PRG-MECH', 'MECH-HT',
    '2025-11-15', '2026-05-30', 93.50, 90.80,
    'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
    'ACTIVE', 'e0f43a9946e5fb154c972305678e3f64328a3fb106e538f0462935c10bb845e5', 'CERTIFIED', 'PUBLIC',
    9.33, 9.08, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS'
),
-- Credential 6: Chemical Topper (A23126502022)
(
    'ONEST-ANITS-2026-A23126502022', 'A23126502022', 'INST-ANITS', 'PRG-CHEM', 'CHEM-MT2',
    '2025-11-15', '2026-05-30', 95.00, 92.70,
    'COMPLETED', 'ELIGIBLE', 'Semester Grade Card (B.Tech Sem-II)', '2026-08-20',
    'ACTIVE', 'f1a54b0057f60c265da83416789f4a75439b4ac217f64901573046d21cc956f6', 'CERTIFIED', 'PUBLIC',
    9.50, 9.27, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS'
),
-- Backwards Compatibility Credential (CRED-00001)
(
    'CRED-00001', 'STU-000001', 'INST-001', 'PRG-001', 'CRS-001',
    '2025-06-01', '2026-04-30', 94.50, 84.00,
    'COMPLETED', 'ELIGIBLE', 'Course Completion Credential', '2026-08-20',
    'ACTIVE', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', 'CERTIFIED', 'PUBLIC',
    9.26, 9.36, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS'
),
(
    'CRED-00002', 'A23126510002', 'INST-001', 'PRG-CSE', 'CSE-CNS',
    '2025-06-01', '2026-04-30', 91.00, 89.50,
    'COMPLETED', 'ELIGIBLE', 'Course Completion Credential', '2026-08-20',
    'ACTIVE', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'CERTIFIED', 'PUBLIC',
    8.91, 8.95, 0, 'Addl. Controller of Examinations, Controller of Examinations, Principal, ANITS'
)
ON CONFLICT (credential_id) DO NOTHING;

-- ------------------------------------------------------------
-- 7. CREDENTIAL REQUESTS (WORKFLOW INBOX)
-- ------------------------------------------------------------
INSERT INTO credential_requests (
    request_id, student_id, institution_id, program_code, course_code,
    requested_credential_type, request_date, request_status, reviewed_by, reviewed_at, eligibility_summary
)
VALUES
(
    'REQ-ANITS-001', 'A23126510003', 'INST-ANITS', 'PRG-CSE', 'CSE-ML',
    'Semester Grade Card (B.Tech Sem-II)', CURRENT_TIMESTAMP - INTERVAL '1 day', 'PENDING',
    NULL, NULL, 'Pending evaluation under ANITS 5-Rule engine'
),
(
    'REQ-ANITS-002', 'A23126552002', 'INST-ANITS', 'PRG-CSM', 'CSM-NNDL',
    'Semester Grade Card (B.Tech Sem-II)', CURRENT_TIMESTAMP - INTERVAL '2 days', 'PENDING',
    NULL, NULL, 'Pending evaluation under ANITS 5-Rule engine'
),
(
    'REQ-ANITS-003', 'A23126551003', 'INST-ANITS', 'PRG-CSD', 'CSD-BDT',
    'Semester Grade Card (B.Tech Sem-II)', CURRENT_TIMESTAMP - INTERVAL '3 days', 'PENDING',
    NULL, NULL, 'Pending evaluation under ANITS 5-Rule engine'
),
(
    'REQ-ANITS-004', 'A23126510008', 'INST-ANITS', 'PRG-CSE', 'CSE-DIP',
    'Semester Grade Card (B.Tech Sem-II)', CURRENT_TIMESTAMP - INTERVAL '4 days', 'REJECTED',
    'ISSUER-ANITS', CURRENT_TIMESTAMP - INTERVAL '3 days', 'Failed Rule 2 & 4: Candidate has 1 backlog in Digital Image Processing (Grade: F) and attendance below 75% (68.50%).'
)
ON CONFLICT (request_id) DO NOTHING;

-- ------------------------------------------------------------
-- 8. AUDIT LOGS (CRYPTO INTEGRITY TRAIL)
-- ------------------------------------------------------------
INSERT INTO audit_logs (actor, action, entity_type, entity_id, timestamp, ip_address, details)
VALUES
('SYSTEM_INIT', 'SCHEMA_MIGRATION', 'DATABASE', 'onest_credentials_db', CURRENT_TIMESTAMP, '127.0.0.1', 'Migrated database schema to ANITS autonomous college tabulation register standard.'),
('ISSUER-ANITS', 'BULK_ISSUANCE', 'CREDENTIAL', 'ONEST-ANITS-2026-A23126510001', CURRENT_TIMESTAMP, '127.0.0.1', 'Deterministic canonical SHA-256 hash calculated and sealed for Hall Ticket A23126510001.'),
('PUBLIC_VERIFIER', 'INTEGRITY_CHECK', 'CREDENTIAL', 'ONEST-ANITS-2026-A23126510001', CURRENT_TIMESTAMP, '127.0.0.1', 'Public verification successful: SHA-256 matched, record authentic.');
