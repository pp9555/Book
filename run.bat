@echo off
cd /d "C:\Users\ppt63\Desktop\Interpreter"
javac com\craftinginterpreters\lox\*.java
if %errorlevel% neq 0 exit /b %errorlevel%
if "%~1"=="" (
    java com.craftinginterpreters.lox.Lox
) else (
    java com.craftinginterpreters.lox.Lox "%~1"
)
