--1.	Write a query to display the first name, last name, and hire date of all employees who were hired between January 1, 2000, and December 31, 2000, and whose last name begins with the letter 'S'.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '2000-01-01' AND '2000-12-31'
AND last_name LIKE 'S%';
--2.	Write a query to display the first name, last name, and job title of all employees who work in the Sales or Accounting departments.
SELECT first_name, last_name, job_title FROM employees
WHERE department IN ('Sales', 'Accounting');
--3.	Write a query to display the first name, last name, and salary of all employees who earn more than $10,000 and less than $20,000.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > 10000 AND salary < 20000;
--4.	Write a query to display the first name, last name, and hire date of all employees who do not have a manager.
SELECT first_name, last_name, hire_date
FROM employees
WHERE manager_id IS NULL;
--5.	Write a query to display the first name, last name, and job title of all employees who are either Sales Representatives or Sales Managers.
SELECT first_name, last_name, job_title
FROM employees
WHERE job_title IN ('Sales Representative', 'Sales Manager');
--6.	Write a query to display the first name, last name, and hire date of all employees who were not hired in the year 2000.
SELECT first_name, last_name, hire_date
FROM employees
WHERE YEAR(hire_date) <> 2000;
--7.	Write a query to display the first name and last name of all employees, concatenated as "First Last".
SELECT CONCAT(first_name,' ', last_name) AS full_name
FROM employees;
--8.	Write a query to display the first name, last name, and salary of all employees, sorted by salary in descending order.
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC;
--9.	Write a query to display the first name, last name, and job title of all employees whose job title contains the word "Manager".
SELECT first_name, last_name, job_title
FROM employees
WHERE job_title LIKE '%Manager%';
--10.	Write a query to display the first name, last name, and salary of all employees whose salary is not null.
SELECT first_name, last_name, salary
FROM employees
WHERE salary IS NOT NULL;
--11.	Write a query to display the first name, last name, and job title of all employees, with the first name and last name in uppercase letters and the job title in lowercase letters.
SELECT UPPER(first_name) AS first_name, UPPER(last_name) AS last_name, LOWER(job_title) AS job_title
FROM employees;
--12.	Write a query to display the first name, last name, and job title of all employees, with the first letter of each word in the job title capitalized.
SELECT first_name, last_name, INITCAP(job_title) AS job_title
FROM employees;
--13.	Write a query to display the first name, last name, and length of the job title of all employees.
SELECT first_name, last_name, LENGTH(job_title) AS job_title_length
FROM employees;
--14.	Write a query to display the first name, last name, and a concatenated string of the first name, last name, and job title of all employees.
SELECT first_name, last_name, CONCAT(first_name, ' ', last_name, ', ', job_title) AS details
FROM employees;
--15.	Write a query to display the first name, last name, and the first three characters of the job title of all employees.
SELECT first_name, last_name, LEFT(job_title, 3) AS job_title_prefix
FROM employees;
--16.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "a" in the job title of all employees.
SELECT first_name, last_name, INSTR(job_title, 'a') AS position_of_a
FROM employees;
--17.	Write a query to display the first name, last name, and salary of all employees, with the salary rounded to the nearest thousand dollars.
SELECT first_name, last_name, ROUND(salary, -3) AS rounded_salary
FROM employees;
--18.	Write a query to display the first name, last name, and salary of all employees, with the salary truncated to the nearest thousand dollars.
SELECT first_name, last_name, TRUNCATE(salary, -3) AS truncated_salary
FROM employees;
--19.	Write a query to display the first name, last name, and the length of the first name of all employees.
SELECT first_name, last_name, LENGTH(first_name) AS first_name_length
FROM employees;
--20.	Write a query to display the first name, last name, and a concatenated string of the first name, a comma, and the last name of all employees.
SELECT first_name, last_name, CONCAT(first_name, ', ' , last_name) AS full_name
FROM employees;
--21.	Write a query to display the first name, last name, and the first three characters of the first name of all employees.
SELECT first_name, last_name, LEFT(first_name, 3) AS first_name_prefix
FROM employees;
--22.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "e" in the first name of all employees.
SELECT first_name, last_name, INSTR(first_name, 'e') AS position_of_e
FROM employees;
--23.	Write a query to display the first name, last name, and the length of the last name of all employees.
SELECT first_name, last_name, LENGTH(last_name) AS last_name_length
FROM employees;
--24.	Write a query to display the first name, last name, and the first three characters of the last name of all employees.
SELECT first_name, last_name, LEFT(last_name, 3) AS last_name_prefix
FROM employees;
--25.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "a" in the last name of all employees.
SELECT first_name, last_name, INSTR(last_name, 'a') AS position_of_a
FROM employees;