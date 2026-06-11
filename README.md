# 🛒 E-Commerce Billing System

![MySQL](https://img.shields.io/badge/MySQL-Database-blue)
![SQL](https://img.shields.io/badge/SQL-Functions-orange)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen)

---

## 📖 Project Overview

The **E-Commerce Billing System** is a MySQL-based project that automates billing calculations for products.

The system calculates:

✅ Product Total Amount

✅ Discount Amount

✅ GST (18%)

✅ Final Bill Amount

using **User Defined Functions (UDFs)** in MySQL.

---

## 🚀 Features

* 🛍 Product Management
* 💰 Automatic Discount Calculation
* 📊 GST Calculation
* 🧾 Final Bill Generation
* ⚡ SQL Function Implementation
* 📂 Database Driven Billing System

---

## 🏗 Database Structure

### Product Table

| Field | Type          |
| ----- | ------------- |
| Pid   | INT           |
| Pname | VARCHAR(30)   |
| Price | DECIMAL(10,2) |
| Qty   | INT           |

---

## ⚙ Functions Implemented

### 🔹 CalculateDiscount()

* Provides **10% discount** for purchases above ₹5000.
* Returns 0 for smaller purchases.

### 🔹 CalculateGST()

* Calculates GST at **18%**.

### 🔹 FinalBill()

* Applies discount.
* Calculates GST.
* Returns the final payable amount.

---

## 📌 Technologies Used

* MySQL
* SQL Functions
* DBMS
* Query Processing

---

## 📈 Sample Workflow

Product ➜ Total Amount ➜ Discount ➜ GST ➜ Final Bill

---

## 🎯 Learning Outcomes

* User Defined Functions (UDF)
* Conditional Statements
* Billing Logic Implementation
* Database Design
* SQL Programming
* MySQL Development

---

## 👨‍💻 Author

**Berin**

🌐 GitHub: https://github.com/berin1400-code

---

⭐ If you found this project useful, don't forget to star the repository.
