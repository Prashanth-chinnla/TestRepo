@echo off

echo Running Checkstyle...

mvn checkstyle:check -DskipTests

if %ERRORLEVEL% neq 0 (
  echo Checkstyle found errors. Aborting commit.
  exit /b 1
)

echo Checkstyle passed.
exit /b 0
