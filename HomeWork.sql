USE HackerUs
--EX 1
SELECT * FROM [HackerUs].[dbo].[Students]

--EX 2
SELECT A.FirstName, A.LastName FROM [HackerUs].[dbo].[Students] AS A

--EX 3
SELECT DISTINCT A.FirstName FROM [HackerUs].[dbo].[Students] AS A

--EX 4
SELECT A.FirstName FROM [HackerUs].[dbo].[Students] AS A
WHERE A.Age < 80

-- EX 5
SELECT * FROM [HackerUs].[dbo].[Students]
WHERE Id = 1

--EX 6
SELECT A.Id FROM [HackerUs].[dbo].[Students] AS A
WHERE A.FirstName = 'Ami' AND A.LastName = 'Sason' 

--EX 7
SELECT * FROM [HackerUs].[dbo].[Students] AS A
WHERE (A.FirstName = 'Ami' OR A.FirstName = 'Yael') AND A.Age > 20

--EX 8
SELECT * FROM [HackerUs].[dbo].[Students] AS A
WHERE A.Age IS NULL

--EX 9
SELECT * FROM [HackerUs].[dbo].[Students] AS A
WHERE NOT(A.Age IS NULL)

--EX 10
SELECT A.FirstName FROM [HackerUs].[dbo].[Students] AS A
ORDER BY A.FirstName ASC

--EX 11
SELECT * FROM [HackerUs].[dbo].[Students] AS A
ORDER BY A.Age DESC

--EX 12
SELECT TOP (2)* FROM [HackerUs].[dbo].[Students] AS A
ORDER BY A.Age DESC

--EX 13
SELECT * FROM [HackerUs].[dbo].[Students] AS A
WHERE FirstName LIKE 'A%' AND AGE > 20
ORDER BY FirstName ASC

--EX 14
INSERT INTO Courses
(CourseName)
VALUES
('Gaming')

-- EX 15
UPDATE Students
SET AGE = 70
WHERE AGE > 80

--EX 16
DELETE FROM Students 
WHERE Id = 4

--EX 17
SELECT c.Id, c.CourseName, st.Id, st.FirstName, cs.Grade
FROM dbo.CoursesStudents cs 
JOIN dbo.Students st ON st.Id = cs.StudentId
JOIN dbo.Courses c ON cs.CourseId = c.Id











