# SQLite Analytics Coding Challenge
Overview
This project demonstrates SQL-based data analysis using a relational database (bais_sqlite_lab.db). The goal is to answer key business questions by applying core SQL concepts such as SELECT, JOIN, GROUP BY, ORDER BY, and HAVING.
The analysis focuses on customer behavior, revenue generation, employee compensation, and loyalty distribution.

# Files Included
challenge.sql - Contains all SQL queries for the four required tasks. Each section is clearly labeled.
INSIGHTS.md - summarizes key findings and business insights derived from the query results.

# Database Schema
- departments(id, name)
- employees(id, first_name, last_name, email, department_id, salary, hire_date)
- customers(id, first_name, last_name, email, loyalty_level, city)
- products(id, name, category, price, active)
- orders(id, customer_id, order_date, status)
- order_items(id, order_id, product_id, quantity, unit_price)

# Key relationships:
- Employees → Departments (many-to-one)
- Orders → Customers (many-to-one)
- Order Items → Orders & Products (many-to-one to each)

# Tasks Completed
- Task 1 — Top 5 Customers by Total Spend
- Task 2 — Total Revenue by Product Category
- Task 3 — Employees Above Department Average Salary
- Task 4 — Cities with the Most Loyal Customers