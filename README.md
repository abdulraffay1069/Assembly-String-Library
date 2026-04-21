# ⚙️ x86 Assembly String Library

A small project where I reimplemented common C string functions using x86 Assembly to better understand how strings are handled at a low level.

---

## 📌 What this project includes

The following functions are implemented:

* `strlen` – calculate string length
* `strcpy` – copy one string into another
* `strcmp` – compare two strings
* `strcat` – append one string to another
* `strchr` – find a character in a string
* `strncmp` – compare first N characters
* `strncpy` – copy N characters
* `strncat` – append N characters

---

## 🧠 What I learned

* Working with registers like `ESI`, `EDI`, `EAX`, `ECX`
* Manual memory traversal using pointers
* Handling null-terminated strings
* Looping and branching using assembly instructions
* Understanding how high-level string functions actually work internally

---

## ⚙️ Tools Used

* x86 Assembly (MASM syntax)
* Windows environment

---

## ⚠️ Requirements

This project uses the **Irvine32 library** for input/output operations.

To run this project, you need:

* MASM assembler
* Irvine32 library installed

📌 Download Irvine32 from:
https://asmirvine.com/gettingStartedVS2019/

---

## ▶️ How to Run

1. Set up MASM + Irvine32
2. Place all `.asm` files in the same project directory
3. Assemble and link:

```bash
ml /c /coff main.asm
link /subsystem:console main.obj Irvine32.lib
```

---

## ℹ️ Note

* Irvine32 is used only for input/output
* All string operations are implemented manually in assembly
* These implementations are for learning purposes
* They mimic behavior of standard C string functions
* No built-in library functions are used

---

## 🎯 Purpose

This project was created to move beyond high-level programming and understand how basic operations like string handling work at the machine level.

---

## 👨‍💻 Author

Abdul Raffay Raja
Computer Science Student exploring systems and low-level programming

---
