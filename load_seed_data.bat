@echo off
chcp 65001 >nul
echo ======================================================================
echo    ONEST PLATFORM — POPULATING ANITS SEED DATA INTO anits_onest_db
echo ======================================================================
echo.

set PGPASSWORD=postgres
"C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -h 127.0.0.1 -d anits_onest_db -f "C:\Users\SAMEERA\OneDrive\Desktop\DE1\onest-platform\database\seed_anits_data.sql"

if %errorlevel% equ 0 (
    echo.
    echo ======================================================================
    echo  [SUCCESS] All ANITS College Data has been loaded successfully!
    echo ======================================================================
    echo.
    echo Next step: Start the backend with: mvn spring-boot:run
) else (
    echo.
    echo [ERROR] Could not load seed data. Error code: %errorlevel%
)

echo.
pause
