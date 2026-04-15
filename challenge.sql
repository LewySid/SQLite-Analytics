-- Queries for the challenge

-- 1. Top 5 customers by total spend.

SELECT 
    customers.first_name || ' ' || customers.last_name AS customer_name,
    SUM(quantity * unit_price) AS total_spent
FROM 
    orders
JOIN 
    order_items ON orders.id = order_items.order_id
JOIN 
    customers ON orders.customer_id = customers.id
GROUP BY 
    customer_id
ORDER BY 
    total_spent DESC
LIMIT 5;

-- 2. Total revenue by product category.

SELECT 
    category, 
    SUM(quantity * unit_price) AS total_revenue
FROM 
    products
JOIN 
    order_items ON products.id = order_items.product_id
GROUP BY 
    category
ORDER BY 
    total_revenue DESC;

-- 3. Employees earning above department average.

SELECT 
    e.first_name, 
    e.last_name, 
    d.name AS department_name, 
    e.salary, 
    dept_avg.avg_salary AS department_average
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.id
JOIN 
    (SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id) dept_avg ON e.department_id = dept_avg.department_id
WHERE 
    e.salary > dept_avg.avg_salary
ORDER BY 
    d.name, 
    e.salary DESC;  

-- 4. Cities with the most loyal customers.

SELECT 
    city, 
    COUNT(*) AS gold_customer_count
FROM 
    customers
WHERE 
    loyalty_level = 'Gold'
GROUP BY 
    city
ORDER BY 
    gold_customer_count DESC,
    city ASC;
