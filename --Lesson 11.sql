--Lesson 11

-- Task 1
-- Create the table based on the following table instance chart. Save the statement in a
-- script called , and then execute the statement in the script to create the
-- table. Confirm that the table is created. 
CREATE TABLE
    DEPT(
        ID NUMBER(7) NOT NULL PRIMARY KEY, 
        NAME VARCHAR(25)
    );
    
-- Task 2
-- Populate the table with data from the table. Include only columns that
-- you need. 

--SQL
INSERT INTO DEPT (ID, NAME)
SELECT DEPARTMENT_ID, DEPARTMENT_NAME
FROM DEPARTMENTS;

-- PL/SQL
BEGIN
    FOR d IN (SELECT * FROM DEPARTMENTS) LOOP
        INSERT INTO
            DEPT
        VALUES(
            d.DEPARTMENT_ID,
            d.DEPARTMENT_NAME
        );

    END LOOP; 
    NULL;
END;
/

SELECT * FROM DEPT;

DROP TABLE DEPT;

-- Task 3
-- Create the table based on the following table instance chart. Save the statement in a
-- script called , and then execute the statement in the script to create the
-- table. Confirm that the table is created. 

CREATE TABLE
EMP(
    ID NUMBER(7),
    LAST_NAME VARCHAR2(25),
    FIRST_NAME VARCHAR2(25),
    DEPT_ID NUMBER(7),
    CONSTRAINT dept_fk FOREIGN KEY (DEPT_ID) REFERENCES DEPT (ID)
);

INSERT INTO EMP
SELECT EMPLOYEE_ID, LAST_NAME, FIRST_NAME, DEPARTMENT_ID FROM EMPLOYEES;

commit;

-- Task 4
-- Create the table based on the structure of the table. Include only
-- the _ID, , , , and columns.
-- Name the columns in your new table , , , , and, respectively
CREATE TABLE EMPLOYEES2 AS
SELECT * FROM EMPLOYEES;

SELECT * FROM EMPLOYEES2;

--Task 5
-- Alter the table status to read-only. Please note that this option is supported in
-- Oracle Database 11g. 
ALTER TABLE EMP READ ONLY;

--Task 7
-- Revert the table to the read/write status. Now, try to insert the same row
-- again. Please note that this option is supported in Oracle Database 11g.
-- You should get the following messages: 
ALTER TABLE EMP READ WRITE;

-- Task 8
-- Drop the table. 
DROP TABLE EMPLOYEES2;