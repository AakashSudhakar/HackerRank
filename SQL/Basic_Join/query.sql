/* ================================================================================================= */
/* ============================= HackerRank SQL Challenges: Basic Join ============================= */
/* ================================================================================================= */
   -- AUTHOR: Aakash Sudhakar
   -- DATABASE: Oracle


------------------------------------ Problem #1: Asian Population -------------------------------------

SELECT SUM(City.Population) FROM City
INNER JOIN Country ON City.CountryCode = Country.Code
WHERE Country.Continent = 'Asia';

-------------------------------------- Problem #2: African Cities -------------------------------------

SELECT City.Name FROM City
INNER JOIN Country ON City.CountryCode = Country.Code
WHERE Country.Continent = 'Africa';

-------------------------- Problem #3: Average Population of Each Continent ---------------------------

SELECT Country.Continent, FLOOR(AVG(City.Population)) FROM City 
INNER JOIN Country ON City.CountryCode = Country.Code
GROUP BY Country.Continent;

---------------------------------------- Problem #4: The Report ---------------------------------------

SELECT
    CASE WHEN Grades.Grade < 8
        THEN 'NULL'
    ELSE
        Students.Name
    END, Grades.Grade, Students.Marks
FROM Students JOIN Grades
ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
ORDER BY Grade DESC, Name, Marks;

------------------------------------- Problem #5: Top Competitors -------------------------------------


-- CURRENTLY NOT WORKING, THEREFORE DISABLED.

/*
SELECT Hackers.hacker_id, Hackers.name FROM Submissions
JOIN Challenges ON (Challenges.hacker_id = Submissions.hacker_id)
JOIN Hackers ON (Hackers.hacker_id = Submissions.hacker_id)
JOIN Difficulty ON (Challenges.difficulty_level = Difficulty.difficulty_level) AND (Difficulty.score = Submissions.score)
GROUP BY Hackers.hacker_id, Hackers.name HAVING COUNT(Submissions.challenge_id) > 1
ORDER BY COUNT(Submissions.challenge_id) DESC, hacker_id ASC;
*/
---------------------------------- Problem #6: Ollivander's Inventory ---------------------------------

--------------------------------------- Problem #6: Challenges ----------------------------------------

----------------------------------- Problem #7: Contest Leaderboards ----------------------------------
