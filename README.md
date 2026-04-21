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

## ▶️ How to Build

(Example using MASM)

```id="asmcmd1"
ml /c filename.asm
```

Link if needed:

```id="asmcmd2"
link filename.obj
```

---

## ⚠️ Notes

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
