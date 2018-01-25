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

SELECT FLOOR(AVG(POPULATION)) FROM CITY

------------------------------------- Problem #5: Japan Population ------------------------------------

SELECT SUM(POPULATION) FROM CITY
WHERE COUNTRYCODE = 'JPN';

------------------------------ Problem #6: Population Density Difference ------------------------------

SELECT MAX(POPULATION) - MIN(POPULATION) FROM CITY

--------------------------------------- Problem #7: The Blunder ---------------------------------------

SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) FROM EMPLOYEES

--------------------------------------- Problem #8: Top Earners ---------------------------------------

------------------------------ Problem #9: Weather Observation Station II -----------------------------

---------------------------- Problem #10: Weather Observation Station XIII ----------------------------

---------------------------- Problem #11: Weather Observation Station XIV -----------------------------

----------------------------- Problem #12: Weather Observation Station XV -----------------------------

---------------------------- Problem #13: Weather Observation Station XVI -----------------------------

---------------------------- Problem #14: Weather Observation Station XVII ----------------------------

--------------------------- Problem #15: Weather Observation Station XVIII ----------------------------

---------------------------- Problem #16: Weather Observation Station XIX -----------------------------

----------------------------- Problem #17: Weather Observation Station XX -----------------------------