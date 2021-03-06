-- This is how you write single line comment
/*
 This is how you write multi line comment
 */
-- each query you write known as sql statement
-- * means all, here it means all columns
-- from some table that exist in the database
-- Just like JAVA
--SQL Statements end in semi colon ; and its mandatory
SELECT * FROM REGIONS ;

SELECT *FROM COUNTRIES ;

SELECT * FROM LOCATIONS ;

SELECT * FROM DEPARTMENTS ;

SELECT * FROM JOBS ;

SELECT * FROM JOB_HISTORY ;

SELECT * FROM EMPLOYEES ;

--Restricting column in the result
SELECT FIRST_NAME FROM EMPLOYEES ;

--More than one column can be specified separated by comma
SELECT FIRST_NAME, LAST_NAME, EMAIL
FROM EMPLOYEES ;

--- TASK 1 :  DISPLAY ALL DATA FROM DEPARTMENTS , JOBS , COUNTRIES , LOCATIONS
SELECT * FROM DEPARTMENTS ;
SELECT * FROM JOBS ;
SELECT * FROM COUNTRIES ;
SELECT * FROM LOCATIONS ;

--- TASKS 2 : DISPLAY ONLY COUNTRY NAME AND REGION_ID FROM COUNTRY TABLE
SELECT COUNTRY_NAME , REGION_ID
FROM COUNTRIES ;

--  TASK 3 :  DISPLAY JOB_TITLE AND MIN_SALARY FROM JOBS TABLE
SELECT JOB_TITLE , MIN_SALARY
FROM JOBS ;

-- RESTRICTING ROWS USING WHERE CLAUSE
-- we can use where to restrict the rows according to certain criteria
-- syntax is WHERE SOMECOLUMN = SOME VALUE
-- FOR STRING INS SQL WE USE single quote , AND CONTENT IS CASE SENSTIVE
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'Steven' ;

-- get all employees info if the salary 11000
SELECT *
FROM EMPLOYEES
WHERE SALARY = 11000 ;
-- EMPLOYEES TABLE
--  TASK 4 : GET FIRST_NAME , LAST NAME , SALARY  AND DEPARTMENT_ID

--- IF THE DEPARTMENT ID IS 90
SELECT FIRST_NAME , LAST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 90 ;
--  TASK 5 : GET FIRST_NAME , LAST NAME , JOB_ID  AND PHONE_NUMBER
--- IF THE JOB_ID IS IT_PROG
SELECT FIRST_NAME, LAST_NAME , JOB_ID , PHONE_NUMBER
FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG'  ;
-- COMPARISON OPERATORS :  = > >= < <=  != <>
-- FIND OUT ALL EMPLOYEES FIRST_NAME , SALARY IF THE SALARY IS MORE THAN OR
--EQUAL TO 20000
SELECT FIRST_NAME , SALARY
FROM EMPLOYEES
WHERE SALARY >= 20000 ;
-- FIND OUT ALL EMPLOYEES FIRST_NAME , SALARY IF THE SALARY IS LESS THAN OR
--EQUAL TO 8000
SELECT FIRST_NAME , SALARY
FROM EMPLOYEES
WHERE SALARY <= 8000 ;
--- FIND OUT ALL EMPLOYEES IF THE SALARY IS NOT 10000
---
SELECT * FROM EMPLOYEES
              --WHERE SALARY != 10000 ;
WHERE SALARY <> 10000 ;
-- WORKING WITH NULL IN SQL
-- NULL IN THE CELL MEANS IT HAS NO VALUE ENTERED
-- GET ALL THE EMPLOYEES INFO IF COMMISSION_PCT COLUMN VALUE IS NULL
SELECT *
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NULL ;
-- GET ALL THE EMPLOYEES INFO IF COMMISSION_PCT COLUMN HAS VALUE
SELECT *
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL ;
-- LOGICAL OPERATORS   AND  OR
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'Steven' AND DEPARTMENT_ID = 90 ;
-- GET ALL EMPLOYEES IF THEIR EMPLOYEE IDS IS 100 OR 200
SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID = 100 OR EMPLOYEE_ID = 200 ;

-- GET ALL THE EMPLOYEES IF JOB_ID IS  ST_MAN AND DEPARTMENT ID IS 50
SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'ST_MAN' AND DEPARTMENT_ID = 50  ;
-- FIND OUT ALL THE EMPLOYEES SALARY BETWEEN 10000 - 16000
SELECT *
FROM EMPLOYEES
WHERE SALARY >= 10000 AND SALARY<= 16000 ;
-- FIND OUT ALL EMPLOYEES WITH SALARY MORE THAN 15000 AND MANAGER ID HAS NO
--VALUE
SELECT *
FROM EMPLOYEES
WHERE SALARY > 15000 AND MANAGER_ID IS NULL ;
-- FIND OUT ALL EMPLOYEES SALARY MORE THAN 10000 , DEPARTMENT IS MORE THAN 100
--AND COMMISSION_PCT has no value
SELECT *
FROM EMPLOYEES
WHERE SALARY > 10000
  AND DEPARTMENT_ID > 100
  AND COMMISSION_PCT IS NULL ;
--- RANGE CHECKING USING     BETWEEN .. AND ..
-- FIND OUT ALL THE EMPLOYEES SALARY BETWEEN 10000 AND 16000
SELECT * FROM EMPLOYEES
WHERE SALARY BETWEEN 10000 AND 16000 ;
-- FIND OUT ALL THE EMPLOYEES SALARY NOT BETWEEN 10000 AND 16000
SELECT * FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 10000 AND 16000 ;
--- FIND OUT ALL ALL EMPLOYEES WITH EMPLOYEE ID BETWEEN 120 - 135
SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID BETWEEN 120 AND 135 ;
-- FIND OUT ALL ALL EMPLOYEES WITH MANAGER ID BETWEEN 100 - 110
SELECT * FROM EMPLOYEES
WHERE MANAGER_ID BETWEEN 100 AND 110 ;
-- FIND OUT ALL EMPLOYEES WITH EMPLOYEE ID OF 100 , 110 , 120 , 130 , 140
SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID = 100
   OR EMPLOYEE_ID = 110
   OR EMPLOYEE_ID = 120
   OR EMPLOYEE_ID = 130
   OR EMPLOYEE_ID = 140 ;
-- USING     IN   FOR MULTIPLE POSSIBLE VALUES OF SAME COLUMNS IN CONDITION
SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID IN(100 , 110 , 120 , 130 , 140) ;
--
-- FIND OUT ALL THE EMPLOYEES SALARY BETWEEN 10000 AND 16000

--  AND  SALARY BETWEEN 5000 AND 8000
SELECT * FROM EMPLOYEES
WHERE SALARY BETWEEN 10000 AND 16000
   OR  SALARY BETWEEN 5000 AND 8000
;
---
-- FIND OUT ALL EMPLOYEES WITH EMPLOYEE ID OF 100 , 110 , 120 , 130 , 140
--  PLUS ANY EMPLOYEES WITH HAS COMMISSION_PCT
SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID IN(100 , 110 , 120 , 130 , 140)
   OR COMMISSION_PCT IS NOT NULL ;
-- LIKE  WITH %  WILDCARD
-- DISPLAY ALL THE FIRST_NAME THAT STARTED WITH UPPERCASE A
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A%' ;
-- DISPLAY ALL THE FIRST_NAME THAT STARTED WITH Al
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'Al%' ;
-- DISPLAY ALL THE FIRST_NAME THAT ended WITH en
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%en' ;
-- DISPLAY ALL THE FIRST_NAME THAT contains letter o in the middle (it's OK if
--it shows up at the end in this case)
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%o%' ;
-- WE CAN NEGATE THE RESULT OF LIKE USING   -->   NOT LIKE
-- DISPLAY ALL THE FIRST_NAME THAT contains letter o in the middle (it's NOT if
--it shows up at the end in this case)
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%o%' AND FIRST_NAME NOT LIKE '%o' ;
-- FIND OUT ALL THE FIRST NAME START WITH A end with r
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A%r' ;
-- FIND OUT ALL THE FIRST NAME , PHONE NUMBER
-- IF THE AREA CODE IS 515
SELECT FIRST_NAME , PHONE_NUMBER
FROM EMPLOYEES
WHERE PHONE_NUMBER LIKE '515%' ;

--- SINGLE ROW FUNCTIONS --
--- IT WILL AFFECT EACH AND EVERY ROW AND RETURN THE RESULT
-- LOWER , UPPER , LENGTH  , SUBSTR
SELECT LOWER(FIRST_NAME) ,
       UPPER(FIRST_NAME),
       FIRST_NAME ,
       LENGTH(FIRST_NAME)
FROM EMPLOYEES ;
--- DISPLAY YOUR RESULT OF FIRST_NAME AND CHARACTER COUNT OF FIRST_NAME AS
--BELOW
    ---   GIVEN_NAME  , CHARACTER_COUNT
SELECT FIRST_NAME AS GIVEN_NAME,  LENGTH(FIRST_NAME) AS CHARACTER_COUNT
FROM EMPLOYEES ;
-- DISPLAY ALL THE FIRST NAME WITH EXACT 4 CHARS
SELECT FIRST_NAME,  LENGTH(FIRST_NAME)
FROM EMPLOYEES
WHERE  LENGTH(FIRST_NAME)  = 4
;
-- --- FIND OUT ALL THE FIRST_NAME HAS letter a anywhere in the name
-- when search in case insensitive manner , we can what we are searching all
--uppercase
    --or all lower case and then put it the condition accordingly
SELECT FIRST_NAME , UPPER(FIRST_NAME)
FROM EMPLOYEES
WHERE UPPER(FIRST_NAME) LIKE '%A%' ;
SELECT FIRST_NAME , LOWER(FIRST_NAME)
FROM EMPLOYEES
WHERE LOWER(FIRST_NAME) LIKE '%a%' ;
--- SUBSTR (YOUR COLUMN , BEGINNING INDEX , CHARACTER COUNT YOU WANT TO GET )
-- tHIS WILL GIVE US 3RD AND 4TH CHARACTER ,
SELECT FIRST_NAME , SUBSTR(FIRST_NAME, 3, 2 )
FROM EMPLOYEES ;
SELECT FIRST_NAME , SUBSTR(FIRST_NAME, 3, 100 )
FROM EMPLOYEES ;
-- -- CONCATENATION USING ||      in java //firstname + " " +  lastName
SELECT FIRST_NAME , LAST_NAME ,  FIRST_NAME || ' ' ||  LAST_NAME AS FULL_NAME
FROM EMPLOYEES  ;
