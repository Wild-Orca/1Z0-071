/*In SQL, column aliases provide a way to rename columns or expressions in the result set of a query. 
This is particularly useful for making the output more readable or when dealing with complex expressions. 
Here's how you can use column aliases in a SELECT statement:*/

--1. Basic Usage:
    SELECT column_name AS alias_name
      FROM table_name;

--2 Aliases for Tables (Table Aliases):
    SELECT t.column_name AS alias_name
      FROM table_name AS t;

--3 Using Aliases in WHERE Clause:
    SELECT column_name AS alias_name
      FROM table_name
     WHERE alias_name = 'some_value';

--4 Aliases in ORDER BY Clause:
    SELECT product_name, unit_price * 0.9 AS discounted_price
      FROM products
    ORDER BY discounted_price DESC;

--5 Aliases for Subqueries:
    SELECT employee_id
         , first_name
         , last_name
         , (SELECT MAX(salary) 
              FROM salaries 
             WHERE employee_id = e.employee_id) AS max_salary
      FROM employees e;

/*Column aliases make the result set more readable
, especially when dealing with complex queries or when presenting data to end-users. 
They can be used in SELECT lists, WHERE clauses, ORDER BY clauses, and other parts of the SQL query.*/