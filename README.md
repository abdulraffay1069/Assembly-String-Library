# ⚙️ x86 Assembly String Library

This project is a low-level implementation of common C string functions using x86 Assembly.
The goal was simple: stop relying on high-level abstractions and understand how strings actually behave in memory.

---

## 📌 What’s Implemented

The following string operations are written from scratch:

* `strlen` – calculates length of a string
* `strcpy` – copies one string into another
* `strcmp` – compares two strings
* `strcat` – concatenates strings
* `strchr` – searches for a character
* `strncmp` – compares first N characters
* `strncpy` – copies N characters
* `strncat` – appends N characters

No built-in string libraries are used.

---

## 🔬 How It Works

Each function operates directly on memory using registers and pointer movement.

* `ESI` → used as source pointer
* `EDI` → used as destination pointer
* `EAX`, `ECX` → used for operations and counters

Example logic:

* **strlen**

  * Traverse memory byte-by-byte
  * Stop when `null terminator (0)` is found

* **strcpy**

  * Copy each byte from source to destination
  * Continue until `0` is encountered

* **strcmp**

  * Compare characters one by one
  * Return difference based on ASCII values

This approach avoids any abstraction and works directly with raw memory.

---

## ⚙️ Low-Level Concepts Practiced

* Manual memory traversal
* Pointer-based string handling
* Register-level data movement
* Loop control using jumps
* Null-terminated string structure
* Function-like modular design in assembly

---

## 🛠️ Tools & Environment

* x86 Assembly (MASM syntax)
* Windows
* Irvine32 library (for I/O only)

---

## ⚠️ Requirements

To run this project:

* MASM assembler
* Irvine32 library

📌 Irvine32 setup:
https://asmirvine.com/gettingStartedVS2019/

---

## ▶️ How to Run

1. Place all `.asm` files in one directory
2. Assemble and link:

```
ml /c /coff main.asm
link /subsystem:console main.obj Irvine32.lib
```

---

## 📸 Example Output

```
Length: 5
Copied String: Hello
Comparison Result: -1
```

*(Irvine32 is used only to display output — all logic is implemented manually.)*

---

## 🎯 Why This Project

High-level languages hide a lot of details.
This project was built to understand:

* how strings are stored in memory
* how basic operations actually execute
* how low-level logic replaces standard libraries

---

## 👨‍💻 Author

Abdul Raffay Raja
Computer Science student exploring low-level systems and cybersecurity
