-- LESSON 12


-- TASK 1
CREATE OR REPLACE VIEW EMPLOYEES_VU
AS
SELECT 
    EMPLOYEE_ID,
    LAST_NAME AS EMPLOYEE,
    DEPARTMENT_ID
FROM EMPLOYEES;


-- TASK 2
SELECT * FROM EMPLOYEES_VU;


--TASK 3
SELECT
    EMPLOYEE,
    DEPARTMENT_ID
FROM EMPLOYEES_VU;


--TASK 4
CREATE OR REPLACE VIEW DEPT50 AS
SELECT 
    EMPLOYEE_ID AS EMPNO,
    LAST_NAME AS EMPLOYEE,
    DEPARTMENT_ID AS DEPTNO
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 50;


-- TASK 5
DESCRIBE DEPT50;

SELECT * FROM DEPT50;


--TASK 6
UPDATE EMPLOYEES
SET DEPARTMENT_ID = 80 
WHERE LAST_NAME = 'Matos';

SELECT * FROM DEPT50;


--PART 2
--TASK 7

--TASK 10
CREATE SYNONYM EMP FOR EMPLOYEES;

SELECT * FROM EMP;