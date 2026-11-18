@echo off
if not exist bin mkdir bin
javac -d bin src\com\auca\interfaces\*.java src\com\auca\exceptions\*.java src\com\auca\abstracts\*.java src\com\auca\department\*.java src\com\auca\course\*.java src\com\auca\classroom\*.java src\com\auca\student\*.java src\com\auca\teacher\*.java src\com\auca\administrator\*.java src\com\auca\enrollment\*.java src\com\auca\assessment\*.java src\com\auca\feepayment\*.java src\com\auca\librarybook\*.java src\com\auca\bookloan\*.java src\com\auca\main\*.java
if errorlevel 1 (
  echo Compilation failed.
  pause
  exit /b 1
)
java -cp bin com.auca.main.Main
