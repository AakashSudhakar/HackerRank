/* ================================================================================================= */
/* ============================ HackerRank SQL Challenges: Basic Select ============================ */
/* ================================================================================================= */
   -- Author: Aakash Sudhakar

------------------------------- Problem #1: Revising the Select Query I -------------------------------

SELECT * FROM CITY 
WHERE COUNTRYCODE = 'USA' 
AND POPULATION >= 100000;

------------------------------ Problem #2: Revising the Select Query II -------------------------------

SELECT NAME FROM CITY 
WHERE POPULATION > 120000 
AND COUNTRYCODE = 'USA';

---------------------------------------- Problem #3: Select All ---------------------------------------

SELECT * FROM CITY

--------------------------------------- Problem #4: Select By ID --------------------------------------

SELECT * FROM CITY 
WHERE ID = 1661;

------------------------------- Problem #5: Japanese Cities' Attributes -------------------------------

SELECT * FROM CITY 
WHERE COUNTRYCODE = 'JPN';

---------------------------------- Problem #6: Japanese Cities' Names ---------------------------------

SELECT NAME FROM CITY 
WHERE COUNTRYCODE = 'JPN';

------------------------------ Problem #7: Weather Observation Station I ------------------------------

SELECT CITY, STATE FROM STATION

----------------------------- Problem #8: Weather Observation Station III -----------------------------

SELECT DISTINCT CITY FROM STATION 
WHERE MOD(ID, 2) = 0;

----------------------------- Problem #9: Weather Observation Station IV ------------------------------

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION

----------------------------- Problem #10: Weather Observation Station V ------------------------------

SELECT * FROM 
(
    SELECT CITY, LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY) ASC, CITY ASC
)
WHERE ROWNUM = 1
UNION
SELECT * FROM
(
    SELECT CITY, LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY) DESC, CITY ASC
)
WHERE ROWNUM = 1;

----------------------------- Problem #11: Weather Observation Station VI -----------------------------

SELECT DISTINCT CITY FROM STATION 
WHERE LOWER(SUBSTR(CITY, 1, 1)) IN ('a', 'e', 'i', 'o', 'u') 
ORDER BY CITY ASC;

---------------------------- Problem #12: Weather Observation Station VII -----------------------------

SELECT DISTINCT CITY FROM STATION
WHERE LOWER(SUBSTR(CITY, LENGTH(CITY), 1)) IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY ASC;

---------------------------- Problem #13: Weather Observation Station VIII ----------------------------

SELECT DISTINCT CITY FROM STATION
WHERE LOWER(SUBSTR(CITY, 1, 1)) IN ('a', 'e', 'i', 'o', 'u') 
AND LOWER(SUBSTR(CITY, LENGTH(CITY), 1)) IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY ASC;

----------------------------- Problem #14: Weather Observation Station IX -----------------------------

SELECT DISTINCT CITY FROM STATION
WHERE LOWER(SUBSTR(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY ASC;

----------------------------- Problem #15: Weather Observation Station X ------------------------------

SELECT DISTINCT CITY FROM STATION
WHERE LOWER(SUBSTR(CITY, LENGTH(CITY), 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY ASC;

----------------------------- Problem #16: Weather Observation Station XI -----------------------------

SELECT DISTINCT CITY FROM STATION
WHERE LOWER(SUBSTR(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
OR LOWER(SUBSTR(CITY, LENGTH(CITY), 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY ASC;

---------------------------- Problem #17: Weather Observation Station XII -----------------------------

SELECT DISTINCT CITY FROM STATION
WHERE LOWER(SUBSTR(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
AND LOWER(SUBSTR(CITY, LENGTH(CITY), 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY ASC;

---------------------------------- Problem #18: Higher Than 75 Marks ----------------------------------

SELECT NAME FROM 
(
    SELECT NAME, SUBSTR(NAME, LENGTH(NAME) - 2) FROM STUDENTS
    WHERE MARKS > 75
    ORDER BY SUBSTR(NAME, LENGTH(NAME) - 2), ID ASC
);

------------------------------------- Problem #19: Employee Names -------------------------------------

SELECT NAME FROM EMPLOYEE
ORDER BY NAME;

----------------------------------- Problem #20: Employee Salaries ------------------------------------

SELECT NAME FROM EMPLOYEE
WHERE SALARY > 2000
AND MONTHS < 10
ORDER BY EMPLOYEE_ID;