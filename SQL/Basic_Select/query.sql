/* ====================================================================================================
=============================== HackerRank SQL Challenges: Basic Select ===============================
==================================================================================================== */
-- Author: Aakash Sudhakar


-- Problem #1: Revising the Select Query I

SELECT * FROM CITY 
WHERE COUNTRYCODE = 'USA' 
AND POPULATION >= 100000;

-- Problem #2: Revising the Select Query II

SELECT NAME FROM CITY 
WHERE POPULATION > 120000 
AND COUNTRYCODE = 'USA';

-- Problem #3: Select All

SELECT * FROM CITY

-- Problem #4: Select By ID

SELECT * FROM CITY 
WHERE ID = 1661;

-- Problem #5: Japanese Cities' Attributes

SELECT * FROM CITY 
WHERE COUNTRYCODE = 'JPN';

-- Problem #6: Japanese Cities' Names

SELECT NAME FROM CITY 
WHERE COUNTRYCODE = 'JPN';

-- Problem #7: Weather Observation Station I

SELECT CITY, STATE FROM STATION

-- Problem #8: Weather Observation Station 3

SELECT DISTINCT CITY FROM STATION 
WHERE MOD(ID, 2) = 0;

-- Problem #9: Weather Observation Station 4

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION

-- Problem #10: Weather Observation Station 5

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

-- Problem #11: Weather Observation Station 6

SELECT DISTINCT CITY FROM STATION 
WHERE LOWER(SUBSTR(CITY, 1, 1)) IN ('a', 'e', 'i', 'o', 'u') 
ORDER BY CITY ASC;