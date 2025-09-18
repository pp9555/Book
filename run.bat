@echo off
if "%~1"=="" (
    echo Usage: lox.bat filename.lox
    exit /b 1
)

echo Compiling project...
javac -d out com/craftinginterpreters/tool/*.java com/craftinginterpreters/lox/*.java
if %ERRORLEVEL% neq 0 (
    echo Compilation failed!
    exit /b %ERRORLEVEL%
)

echo Running %~1 ...
java -cp out com.craftinginterpreters.lox.Lox %~1