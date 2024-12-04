-- Lesson 3

-- Task 1
-- Because of budget issues, the HR department needs a report that displays the last name
-- and salary of employees who earn more than $12,000. Save your SQL statement as a file
-- named . Run your query. 
SELECT
    LAST_NAME,
    SALARY
FROM
    EMPLOYEES
WHERE
    SALARY > 12000;

-- Task 2
-- Open a new SQL Worksheet. Create a report that displays the last name and department
-- number for employee number 176. Run the query. 
SELECT
    LAST_NAME,
    DEPARTMENT_ID
FROM
    EMPLOYEES
WHERE
    EMPLOYEE_ID = 176;

-- Task 3
-- The HR department needs to find high-salary and low-salary employees. Modify
--  to display the last name and salary for any employee whose salary is not
-- in the range of $5,000 to $12,000. Save your SQL statement
SELECT
    LAST_NAME,
    SALARY
FROM
    EMPLOYEES
WHERE
    SALARY > 12000
OR
    SALARY < 5000;

--TASK 4
-- Create a report to display the last name, job ID, and hire date for employees with the last
-- names of Matos and Taylor. Order the query in ascending order by the hire date. 
SELECT
    LAST_NAME,
    JOB_ID,
    HIRE_DATE
FROM
    EMPLOYEES
WHERE
    LAST_NAME LIKE 'Matos' OR
    LAST_NAME LIKE 'Taylor'
ORDER BY
    HIRE_DATE ASC;

-- Task 5
-- Display the last name and department ID of all employees in departments 20 or 50 in
-- ascending alphabetical order by name. 
SELECT 
    LAST_NAME,
    DEPARTMENT_ID
FROM
    EMPLOYEES
WHERE
    DEPARTMENT_ID = 20 OR
    DEPARTMENT_ID = 50
ORDER BY
    LAST_NAME ASC;

-- Task 6
-- Modify to display the last name and salary of employees who earn
-- between $5,000 and $12,000, and are in department 20 or 50. Label the columns
--  and , respectively. Save
--  again. Run the statement in . 
SELECT
    LAST_NAME "Employee",
    SALARY "Monthly_Salary"
FROM
    EMPLOYEES
WHERE
    (SALARY > 12000 OR
    SALARY < 5000)
AND
    (DEPARTMENT_ID = 20 OR
    DEPARTMENT_ID = 50);

-- Task 7
-- The HR department needs a report that displays the last name and hire date of all
-- employees who were hired in 1994. 
SELECT * FROM EMPLOYEES;

SELECT
    LAST_NAME,
    HIRE_DATE
FROM 
    EMPLOYEES
WHERE
    HIRE_DATE BETWEEN TO_DATE('1994-01-01', 'YYYY-MM-DD') 
    AND TO_DATE('1994-12-31', 'YYYY-MM-DD');


-- TASK 8 
-- Create a report to display the last name and job title of all employees who do not have a
-- manager. 
SELECT 
    LAST_NAME,
    JOBS.JOB_TITLE
FROM 
    EMPLOYEES JOIN
    JOBS ON
    EMPLOYEES.JOB_ID = JOBS.JOB_ID 
WHERE
    MANAGER_ID IS NULL;

-- TASK 9
-- Create a report to display the last name, salary, and commission of all employees who earn
-- commissions. Sort the data in descending order of salary and commissions.
-- Use the column’s numeric position in the clause. 
SELECT
    LAST_NAME,
    SALARY,
    COMMISSION_PCT
FROM 
    EMPLOYEES
WHERE
    COMMISSION_PCT IS NOT NULL;

-- Task 10
-- Members of the HR department want to have more flexibility with the queries that you are
-- writing. They would like a report that displays the last name and salary of employees who
-- earn more than an amount that the user specifies after a prompt. Save this query to a file
-- named . If you enter 12000 when prompted, the report displays the
-- following results: 
SELECT
    LAST_NAME,
    SALARY
FROM
    EMPLOYEES
WHERE
    SALARY > &SALARY;

-- Task 11
-- The HR department wants to run reports based on a manager. Create a query that prompts
-- the user for a manager ID and generates the employee ID, last name, salary, and
-- department for that manager’s employees. The HR department wants the ability to sort the
-- report on a selected column. You can test the data with the following values:
-- manager_id = 103, sorted by last_name: 
SELECT
    EMPLOYEE_ID,
    LAST_NAME,
    SALARY
FROM 
    EMPLOYEES
WHERE
    MANAGER_ID = &MANAGE_ID
ORDER BY &ORDERBY;

-- Task 12
-- Display all employee last names in which the third letter of the name is “a.” 
SELECT LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME LIKE '__a%';

-- Task 13
-- Display the last names of all employees who have both an “a” and an “e” in their last name. 
SELECT LAST_NAME
FROM EMPLOYEES
WHERE 
    LAST_NAME LIKE '%a%' AND
    LAST_NAME LIKE '%e%' ;

-- Task 14
-- Display the last name, job, and salary for all employees whose jobs are either those of a
-- sales representative or of a stock clerk, and whose salaries are not equal to $2,500,
-- $3,500, or $7,000. 
SELECT 
    LAST_NAME,
    JOB_ID,
    SALARY
FROM EMPLOYEES
WHERE
    (JOB_ID LIKE 'SA_REP' OR JOB_ID LIKE 'ST_CLERK')
    AND
    (SALARY <> 2500 AND SALARY <> 3500 AND SALARY <> 7000);

-- Task 15
-- Modify to display the last name, salary, and commission for all
-- employees whose commission is 20%. Save as again.
-- Rerun the statement in . 
SELECT
    LAST_NAME "Employee",
    SALARY "Monthly_Salary",
    COMMISSION_PCT
FROM
    EMPLOYEES
WHERE
    COMMISSION_PCT = 0.2;