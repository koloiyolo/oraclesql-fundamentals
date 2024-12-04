-- Lesson 4
-- Task 1
-- Write a query to display the system date. Label the column .
-- Note: If your database is remotely located in a different time zone, the output will be the
-- date for the operating system on which the database resides. 
SELECT SYSDATE "Date" FROM DUAL;

-- Task 2 & 3
-- The HR department needs a report to display the employee number, last name, salary, and
-- salary increased by 15.5% (expressed as a whole number) for each employee. Label the
-- column . Save your SQL statement in a file named 

SELECT
    EMPLOYEE_ID,
    LAST_NAME,
    SALARY,
    SALARY * 1.155 "New Salary"
FROM EMPLOYEES;

-- Task 4
-- Modify your query to add a column that subtracts the old salary from the
-- new salary. Label the column . Save the contents of the file as
-- . Run the revised query. 
SELECT
    EMPLOYEE_ID,
    LAST_NAME,
    SALARY,
    SALARY * 1.155 "New Salary",
    SALARY * 1.155 - SALARY "Increase"
FROM EMPLOYEES;

-- Task 5
-- Write a query that displays the last name (with the first letter in uppercase and all the other
-- letters in lowercase) and the length of the last name for all employees whose name starts
-- with the letters “J,” “A,” or “M.” Give each column an appropriate label. Sort the results by
-- the employees’ last names.

SELECT
    LAST_NAME,
    LENGTH(LAST_NAME)
FROM EMPLOYEES
WHERE
    LAST_NAME LIKE 'J%' OR 
    LAST_NAME LIKE 'A%' OR 
    LAST_NAME LIKE 'M%';

-- Rewrite the query so that the user is prompted to enter a letter that the last name starts
-- with. For example, if the user enters “H” (capitalized) when prompted for a letter, then the
-- output should show all employees whose last name starts with the letter “H.”

SELECT
    LAST_NAME,
    LENGTH(LAST_NAME)
FROM EMPLOYEES
WHERE
    LAST_NAME LIKE '&Character%';

-- Task 6
-- The HR department wants to find the duration of employment for each employee. For each
-- employee, display the last name and calculate the number of months between today and
-- the date on which the employee was hired. Label the column as . Order
-- your results by the number of months employed. The number of months must be rounded
-- to the closest whole number.
-- Note: Because this query depends on the date when it was executed, the values in the
--  column will differ for you. 

SELECT
    LAST_NAME,
    MONTHS_BETWEEN(SYSDATE, HIRE_DATE) "Months Workded"
FROM EMPLOYEES;

-- Task 7
-- Create a query to display the last name and salary for all employees. Format the salary to
-- be 15 characters long, left-padded with the $ symbol. Label the column . 

SELECT 
    LAST_NAME,
    LPAD(TO_CHAR(SALARY), 15, '$') AS SALARY
FROM 
    Employees;

-- Task 8
-- Create a query that displays the first eight characters of the employees’ last names and
-- indicates the amounts of their salaries with asterisks. Each asterisk signifies a thousand
-- dollars. Sort the data in descending order of salary. Label the column 

SELECT
    RPAD(LAST_NAME || '    ', SALARY/1000 + LENGTH(LAST_NAME), '$') "EMPLOYEES AND THEIR SALARIES"
FROM EMPLOYEES;

-- Task 9
-- Create a query to display the last name and the number of weeks employed for all
-- employees in department 90. Label the number of weeks column as . Truncate the
-- number of weeks value to 0 decimal places. Show the records in descending order of the
-- employee’s tenure. 
SELECT
    LAST_NAME,
    TRUNC(MONTHS_BETWEEN(SYSDATE, HIRE_DATE), 0)
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 90;