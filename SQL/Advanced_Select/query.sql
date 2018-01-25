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

-------------------------------------- Problem #5: New Companies --------------------------------------
