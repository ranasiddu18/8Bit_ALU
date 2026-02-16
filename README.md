##                                      8-Bit Signed ALU (Arithmetic Logic Unit)                             
____________________________________________________________________________________________________________________________

📌  **Project Overview**

 This project is a fully synthesizable **8-bit Signed ALU designed** in Verilog HDL. It is engineered to handle 2's complement arithmetic and logic operations for an 8-bit processor architecture. The design supports **26 distinct operations**, ranging from basic arithmetic and bitwise logic to complex shifting and comparison functions.



 ## ⚙️ Architecture & Features
Adder Topology: The arithmetic core utilizes a Ripple Carry Adder structure for addition and subtraction operations.

## Data Width:

**Inputs**: 8-bit signed (signed [7:0])

**Output**: 16-bit signed (signed [15:0]) to preserve precision during multiplication and prevent overflow data loss.



## Status Flags: Real-time generation of:

CF (Carry Flag)

ZF (Zero Flag)

OF (Overflow Flag - Signed)

NF (Negative Flag)



## 🔢 Operations Table

The ALU operation is controlled by the 5-bit select line input s[4:0].


 | Select (`s`) | Operation Name | Description / Logic |
| :--- | :--- | :--- |
| **Arithmetic** | | |
| `00000` | **Addition** | `Result = A + B` (Ripple Carry) |
| `00001` | **Subtraction** | `Result = A - B` |
| `00010` | **Multiplication** | `Result = A * B` |
| `00011` | **Division** | `Result = A / B` |
| `00100` | **Modulo** | `Result = A % B` |
| **Bitwise Logic** | | |
| `00101` | **Bitwise AND** | `A & B` |
| `00110` | **Bitwise OR** | `A \| B` |
| `00111` | **Bitwise XOR** | `A ^ B` |
| `01000` | **Bitwise XNOR** | `~(A ^ B)` |
| `01001` | **Bitwise NOT (A)** | `~A` |
| `01010` | **Bitwise NAND** | `~(A & B)` |
| `01011` | **Bitwise NOR** | `~(A \| B)` |
| **Logical Operations** | | |
| `01100` | **Logical AND** | `A && B` (Boolean) |
| `01101` | **Logical OR** | `A \|\| B` (Boolean) |
| `01110` | **Logical NOT (A)** | `!A` (Boolean) |
| **Shift & Rotate** | | |
| `01111` | **Logical Right Shift** | `A >> B` |
| `10000` | **Logical Left Shift** | `A << B` |
| `10001` | **Arithmetic Right Shift**| `A >>> B` (Sign preserv.) |
| `10010` | **Arithmetic Left Shift** | `A <<< B` |
| `10011` | **Rotate Right** | 1-bit Rotate (`{A[0], A[7:1]}`) |
| `10100` | **Rotate Left** | 1-bit Rotate (`{A[6:0], A[7]}`) |
| **Comparison** | | |
| `10101` | **Equal** | `A == B` |
| `10110` | **Not Equal** | `A != B` |
| `10111` | **Greater Than** | `A > B` |
| `11000` | **Less Than** | `A < B` |
| `11001` | **Greater or Equal** | `A >= B` |
| `11010` | **Less or Equal** | `A <= B` |


_________________________________________________________________



## Elaborated design


 <img width="1915" height="1107" alt="Screenshot 2026-02-09 034034" src="https://github.com/user-attachments/assets/f7a8e387-877e-489c-a4a9-2330228ce16e" />




## Simulation 


 <img width="1914" height="1132" alt="Screenshot 2026-02-09 033134" src="https://github.com/user-attachments/assets/95b7d840-1aff-40f3-967b-df90cceac0d9" />




## Tcl Console


<img width="1574" height="976" alt="image" src="https://github.com/user-attachments/assets/716853a8-ab7b-406b-bc90-a9bd50c3b57c" />
