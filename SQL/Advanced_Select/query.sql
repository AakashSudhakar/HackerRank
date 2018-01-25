/* ================================================================================================= */
/* ========================== HackerRank SQL Challenges: Advanced Select =========================== */
/* ================================================================================================= */
   -- AUTHOR: Aakash Sudhakar


------------------------------------- Problem #1: Type of Triangle ------------------------------------

SELECT 
    CASE
        WHEN (A = B AND B = C) THEN 'Equilateral'
        WHEN (A + B <= C) OR (A + C <= B) OR (B + C <= A) THEN 'Not A Triangle'
        WHEN (A = B AND A != C) OR (A = C AND A != B) OR (B = C AND B != A) THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES

---------------------------------------- Problem #2: The PADS -----------------------------------------

SELECT (NAME || '(' || SUBSTR(OCCUPATION, 1, 1) || ')') FROM OCCUPATIONS
ORDER BY NAME;

SELECT ('There are a total of ' || COUNT(OCCUPATION) || ' ' || LOWER(OCCUPATION) || 's.') FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;


--------------------------------------- Problem #3: Occupations ---------------------------------------

SELECT Doctor, Professor, Singer, Actor FROM
(
    SELECT ROW_NUMBER() OVER 
    (
        PARTITION BY Occupation 
        ORDER BY Name
    ) AS row_number, 
    Name, Occupation FROM OCCUPATIONS
)
PIVOT
(
    MAX(Name)
    FOR Occupation IN 
    (
        'Doctor' AS Doctor, 
        'Professor' AS Professor, 
        'Singer' AS Singer, 
        'Actor' AS Actor
    )
)
ORDER BY row_number;

------------------------------------ Problem #4: Binary Tree Nodes ------------------------------------

SELECT N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST
ORDER BY N;

-------------------------------------- Problem #5: New Companies --------------------------------------

SELECT
    company_code, 
    founder,
    (
        SELECT COUNT(DISTINCT lead_manager_code) FROM Lead_Manager 
        WHERE company_code = co.company_code
    ),
    (
        SELECT COUNT(DISTINCT senior_manager_code) FROM Senior_Manager 
        WHERE company_code = co.company_code
    ),
    (
        SELECT COUNT(DISTINCT manager_code) FROM Manager 
        WHERE company_code = co.company_code
    ),
    (
        SELECT COUNT(DISTINCT employee_code) FROM Employee 
        WHERE company_code = co.company_code
    )
FROM Company co
GROUP BY company_code, founder
ORDER BY company_code;