-- Lesson 5
-- Task 1
-- Create a report that produces the following for each employee:
-- earns monthly but wants
-- Label the column . 

SELECT
    LAST_NAME || ' earns $' || TO_CHAR(SALARY)||' monthly but wants $'|| TO_CHAR(3*SALARY)|| '.' AS "Dream Salaries"
FROM EMPLOYEES;