# Lox Interpreter (Java)  
A Java implementation of the [Lox programming language](https://craftinginterpreters.com/) from *Crafting Interpreters* by Robert Nystrom.

---

## 📦 Requirements

- **Java JDK 11+** (tested with JDK 21)
- **Git** (for cloning the repository)

---

## 🚀 Setup

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/lox-interpreter.git
cd lox-interpreter
```

### 2. Build & Run

Use the provided scripts to compile and run the interpreter.

#### Windows

```bash
.\run.bat
```

#### Linux / macOS

```bash
bash run.sh
```

---

## ▶️ Usage

### Start the REPL (Interactive Prompt)

- **Windows:**  
  `.\run.bat`
- **Linux/macOS:**  
  `bash run.sh`

Type Lox code directly, for example:

```lox
print 1 + 2 * 3;
```

### Run a `.lox` File

For example, to run the included Fibonacci program:

- **Windows:**  
  `.\run.bat fib.lox`
- **Linux/macOS:**  
  `bash run.sh fib.lox`

---

## 📂 Project Structure

```
com/
 └── craftinginterpreters/
      ├── lox/        # Interpreter source files
      └── tool/       # AST generator tool
out/                  # Compiled .class files (created automatically)
fib.lox               # Example Lox program (Fibonacci)
run.bat               # Build & run script (Windows)
run.sh                # Build & run script (Linux/macOS)
```

---

## 📝 Example Program

**fib.lox**
```lox
var a = 0;
var temp;

for (var b = 1; a < 10000; b = temp + b) {
  print a;
  temp = a;
  a = b;
}
```

**Run it:**
```bash
.\run.bat fib.lox
```

**Output:**
```
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
```

---

## 🔧 Helper Scripts

### run.bat (Windows)
```bat
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
```

### run.sh (Linux/macOS)
```bash
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
```

Make it executable:
```bash
chmod +x run.sh
```

---

## 📖 Reference

- [Crafting Interpreters Book](https://craftinginterpreters.com/)
- [Lox Language Specification](https://craftinginterpreters.com/the-lox-language.html)

---

## 📝 License

This project is for educational purposes, following the structure and code from *Crafting Interpreters* by Robert Nystrom.