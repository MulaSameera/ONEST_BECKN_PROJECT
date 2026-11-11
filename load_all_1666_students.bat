@echo off
chcp 65001 >nul
echo ======================================================================
echo    ONEST PLATFORM — IMPORT ALL 1,666 ANITS COLLEGE STUDENTS
echo ======================================================================
echo.

echo [Step 1/3] Copying anits_students.json into project database folder...
copy /Y "C:\Users\SAMEERA\.gemini\antigravity\scratch\anits_students.json" "%~dp0database\anits_students.json" >nul

echo [Step 2/3] Copying insert_all_anits_students.sql into database folder...
copy /Y "C:\Users\SAMEERA\.gemini\antigravity\scratch\insert_all_anits_students.sql" "%~dp0database\insert_all_anits_students.sql" >nul

echo [Step 3/3] Importing all 1,666 students into anits_onest_db...
set PGPASSWORD=postgres
"C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -h 127.0.0.1 -d anits_onest_db -f "%~dp0database\insert_all_anits_students.sql"

if %errorlevel% equ 0 (
    echo.
    echo ======================================================================
    echo  [SUCCESS] All 1,666 ANITS students and examination records imported!
    echo  [SUCCESS] anits_students.json is saved in your database folder!
    echo ======================================================================
    echo.
    echo You can now check pgAdmin:
    echo   SELECT COUNT(*) FROM students;              -- Returns 1666
    echo   SELECT COUNT(*) FROM student_semester_records; -- Returns 1666
) else (
    echo.
    echo [ERROR] Import failed. Error code: %errorlevel%
)

echo.
pause
