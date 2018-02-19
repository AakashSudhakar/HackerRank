/* ================================================================================================= */
/* ============================ HackerRank SQL Challenges: Aggregation ============================= */
/* ================================================================================================= */
   -- AUTHOR: Aakash Sudhakar
   -- DATABASE: Oracle


------------------------ Problem #1: Revising Aggregations – The Count Function -----------------------

SELECT COUNT(*) FROM CITY
WHERE POPULATION > 100000;

------------------------- Problem #2: Revising Aggregations – The Sum Function ------------------------

SELECT SUM(POPULATION) FROM CITY
WHERE DISTRICT = 'California';

----------------------------- Problem #3: Revising Aggregations – Averages ----------------------------

SELECT AVG(POPULATION) FROM CITY
WHERE DISTRICT = 'California';

------------------------------------ Problem #4: Average Population -----------------------------------

SELECT FLOOR(AVG(POPULATION)) FROM CITY;

------------------------------------- Problem #5: Japan Population ------------------------------------

SELECT SUM(POPULATION) FROM CITY
WHERE COUNTRYCODE = 'JPN';

------------------------------ Problem #6: Population Density Difference ------------------------------

SELECT MAX(POPULATION) - MIN(POPULATION) FROM CITY;

--------------------------------------- Problem #7: The Blunder ---------------------------------------

SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) FROM EMPLOYEES;

--------------------------------------- Problem #8: Top Earners ---------------------------------------

SELECT * FROM (
    SELECT (months * salary), COUNT(*) FROM Employee
    GROUP BY (months * salary)
    ORDER BY 1 DESC
)
WHERE ROWNUM = 1;

------------------------------ Problem #9: Weather Observation Station II -----------------------------

SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;

---------------------------- Problem #10: Weather Observation Station XIII ----------------------------

SELECT ROUND(SUM(LAT_N), 4) FROM STATION
WHERE (LAT_N > 38.7880) AND (LAT_N < 137.2345);

---------------------------- Problem #11: Weather Observation Station XIV -----------------------------

SELECT ROUND(MAX(LAT_N), 4) FROM STATION
WHERE (LAT_N < 137.2345);

----------------------------- Problem #12: Weather Observation Station XV -----------------------------

SELECT ROUND(LONG_W, 4) FROM STATION
WHERE LAT_N = (
    SELECT MAX(LAT_N) FROM STATION
    WHERE (LAT_N < 137.2345)
);

---------------------------- Problem #13: Weather Observation Station XVI -----------------------------

SELECT ROUND(MIN(LAT_N), 4) FROM STATION
WHERE (LAT_N > 38.7780);

---------------------------- Problem #14: Weather Observation Station XVII ----------------------------

SELECT ROUND(LONG_W, 4) FROM STATION
WHERE LAT_N = (
    SELECT MIN(LAT_N) FROM STATION
    WHERE (LAT_N > 38.7780)
);

--------------------------- Problem #15: Weather Observation Station XVIII ----------------------------

SELECT ROUND(ABS(A - C) + ABS(B - D), 4) FROM (
    SELECT MIN(LAT_N) AS A, MIN(LONG_W) AS B, MAX(LAT_N) AS C, MAX(LONG_W) AS D FROM STATION
);

---------------------------- Problem #16: Weather Observation Station XIX -----------------------------

SELECT ROUND(SQRT(POWER((B - A), 2) + POWER((D - C), 2)), 4) FROM (
    SELECT MIN(LAT_N) AS A, MAX(LAT_N) AS B, MIN(LONG_W) AS C, MAX(LONG_W) AS D FROM STATION
);

----------------------------- Problem #17: Weather Observation Station XX -----------------------------

SELECT ROUND(LAT_N, 4) FROM (
    SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS RN FROM STATION
)
WHERE RN = (
    SELECT ROUND((COUNT(LAT_N) + 1) / 2, 0) FROM STATION
);