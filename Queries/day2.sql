-- What about the partial search
-- We use like and % (wild card)
-- % can represent 0 or more character of any kind
-- _ can represent exactly one character of any kind

/*
        'D%' -- anything that starts with D

        '%d' -- anything that end with D

        '%d%' -- anything that contains D

                Aladdin, Cassandra, Adam, Brandon,
                Sid, Bid, Kid, Dad
                David, danny, dog

        'D%a' -- anything that starts with D and end with a
                    Dianna, Donna, Damla, Darla

        'S%e%n' -- anything that starts with S has E in it and ends with N
                    Steven, Stephen, Selen, Serkan, Sebastian

        'T_' -- starts with T and is followed by exactly 1 character of any kind
                    Tj, TD, Ta, T , T!, TV, T2

        '_a_' -- Starts with any character, has in the middle and ends with any character
                    dan, can, man, dad, bad, sad, fat, hat,
 */

SELECT FIRST_NAME FROM EMPLOYEES
--WHERE FIRST_NAME LIKE 'D%'  -- 9
--WHERE FIRST_NAME LIKE '%d' -- 6
--WHERE FIRST_NAME LIKE '%d%' -- 15
--WHERE FIRST_NAME LIKE 'D%a' -- 1
--WHERE FIRST_NAME LIKE 'S%e%n' -- 3
--WHERE FIRST_NAME LIKE 'T_' -- 1
WHERE FIRST_NAME LIKE '_a_'; -- 1

SELECT PHONE_NUMBER FROM EMPLOYEES
--WHERE PHONE_NUMBER LIKE '515%';
WHERE PHONE_NUMBER LIKE '%.121.%';  -- 8

-- Display all first name , salary in employee table
-- modify the column name for salary in result to money

SELECT FIRST_NAME, SALARY AS MONEY
FROM EMPLOYEES;

-- Display all first name last name in employees
-- modify column as below
-- first name == given name and last name == family name

SELECT FIRST_NAME AS "GIVEN NAME", LAST_NAME AS "FAMILY NAME"
FROM EMPLOYEES;

--CONCATENATION IN SQL USE DOUBLE PIPE
-- Display full name of employee

select FIRST_NAME, LAST_NAME, FIRST_NAME || ' ' || LAST_NAME
from EMPLOYEES;




