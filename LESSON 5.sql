-- Lesson 5
-- Task 1
-- Create a report that produces the following for each employee:
-- earns monthly but wants
-- Label the column . 

SELECT
    LAST_NAME || ' earns $' || TO_CHAR(SALARY)||' monthly but wants $'|| TO_CHAR(3*SALARY)|| '.' AS "Dream Salaries"
FROM EMPLOYEES;


-- TASK 2
SELECT
    LAST_NAME,
    HIRE_DATE,
    HIRE_DATE + 60 "REVIEW"
FROM EMPLOYEES JOIN;


--TASK 3
SELECT
    LAST_NAME,
    HIRE_DATE,
    TO_CHAR(HIRE_DATE, 'DAY', 'NLS_DATE_LANGUAGE=ENGLISH') "DAY"
FROM EMPLOYEES;

--TASK 4
SELECT 
    LAST_NAME,
    NVL2(COMMISSION_PCT, TO_CHAR(COMMISSION_PCT), 'NO COMMISSION')
FROM EMPLOYEES

