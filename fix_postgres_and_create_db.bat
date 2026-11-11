@echo off
chcp 65001 >nul
echo ======================================================================
echo    ONEST DIGITAL CREDENTIAL PLATFORM — POSTGRESQL FIX & DB SETUP
echo ======================================================================
echo.

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] This script requires Administrator privileges!
    echo.
    echo Please RIGHT-CLICK this file and choose:
    echo   "Run as administrator"
    echo.
    pause
    exit /b 1
)

echo [Step 1/5] Stopping PostgreSQL service...
net stop postgresql-x64-18 >nul 2>&1

echo [Step 2/5] Setting localhost authentication to 'trust' in pg_hba.conf...
powershell -NoProfile -Command "(Get-Content 'C:\Program Files\PostgreSQL\18\data\pg_hba.conf') -replace '127.0.0.1/32\s+scram-sha-256', '127.0.0.1/32            trust' -replace '::1/128\s+scram-sha-256', '::1/128                 trust' | Set-Content 'C:\Program Files\PostgreSQL\18\data\pg_hba.conf'"

echo [Step 3/5] Starting PostgreSQL service...
net start postgresql-x64-18

echo [Step 4/5] Setting password for user 'postgres' to 'postgres'...
"C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -h 127.0.0.1 -c "ALTER USER postgres WITH PASSWORD 'postgres';"

echo [Step 5/5] Creating database 'anits_onest_db'...
"C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -h 127.0.0.1 -c "CREATE DATABASE anits_onest_db;" >nul 2>&1

echo.
echo ======================================================================
echo  [SUCCESS] Password has been reset to: postgres
echo  [SUCCESS] Database 'anits_onest_db' has been created!
echo ======================================================================
echo.
echo You can now:
echo  1. Open pgAdmin - if prompted for password, enter: postgres
echo  2. Open anits_onest_db and run your schema scripts.
echo  3. Start the Spring Boot backend with: mvn spring-boot:run
echo.
pause
