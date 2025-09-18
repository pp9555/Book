# Lox Interpreter (from Crafting Interpreters)

This project is a Java implementation of the **Lox programming language** from the book *[Crafting Interpreters by Robert Nystrom](https://craftinginterpreters.com/)*.

It allows you to run `.lox` programs such as Fibonacci sequence, arithmetic, conditionals, and loops.

---

## 📦 Requirements
- **Java JDK 11+** (tested with JDK 21)
- **Git** for cloning

---

## 🚀 Setup

### 1. Clone the Repository
```bash
git clone https://github.com/YOUR_USERNAME/lox-interpreter.git
cd lox-interpreter


2. Compile the Source

Use the provided run.bat (Windows) or run.sh (Linux/Mac) script to compile all Java sources into the out directory.

# Windows (PowerShell or CMD)
.\run.bat

# Linux / macOS
bash run.sh

▶️ Running Programs
Run the Lox REPL

You can start the interactive prompt:

# Windows
.\run.bat

# Linux / macOS
bash run.sh


Then type:

print 1 + 2 * 3;

Run a .lox file

Example with Fibonacci program:

# Windows
.\run.bat fib.lox

# Linux / macOS
bash run.sh fib.lox

📂 Project Structure
com/
 └── craftinginterpreters/
      ├── lox/        # Interpreter source files
      └── tool/       # AST generator tool
out/                  # Compiled .class files (created automatically)
fib.lox               # Example Lox program (Fibonacci)
run.bat               # Build & run script (Windows)
run.sh                # Build & run script (Linux/macOS)

📝 Example Program
fib.lox
var a = 0;
var temp;

for (var b = 1; a < 10000; b = temp + b) {
  print a;
  temp = a;
  a = b;
}


Run it:

.\run.bat fib.lox


Output:

0
1
1
2
3
5
8
...
987
1597
2584
4181
6765

🔧 Helper Scripts
1. run.bat (Windows)
@echo off
REM Build and run Lox interpreter

REM Compile all source files into 'out' directory
javac -d out com/craftinginterpreters/tool/*.java com/craftinginterpreters/lox/*.java

REM Run interpreter (REPL if no argument, file if provided)
if "%1"=="" (
  java -cp out com.craftinginterpreters.lox.Lox
) else (
  java -cp out com.craftinginterpreters.lox.Lox %1
)

2. run.sh (Linux/macOS)
#!/bin/bash
# Build and run Lox interpreter

# Compile all source files into 'out' directory
javac -d out com/craftinginterpreters/tool/*.java com/craftinginterpreters/lox/*.java

# Run interpreter (REPL if no argument, file if provided)
if [ $# -eq 0 ]; then
  java -cp out com.craftinginterpreters.lox.Lox
else
  java -cp out com.craftinginterpreters.lox.Lox "$1"
fi


Make it executable:

chmod +x run.sh