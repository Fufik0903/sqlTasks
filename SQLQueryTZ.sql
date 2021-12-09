SELECT COUNT( Students.StudentsId) as count, FirstName, LastName, Groups
FROM Students INNER JOIN Exams 
ON Students.StudentsId = Exams.StudentsId
WHERE Exams.Result < 3 
GROUP BY Students.StudentsId, FirstName, LastName, Groups HAVING count(Students.StudentsId) > 2;

SELECT Groups FROM (SELECT COUNT( Students.StudentsId) as count, FirstName, LastName, Groups
FROM Students INNER JOIN Exams 
ON Students.StudentsId = Exams.StudentsId
WHERE Exams.Result < 3 
GROUP BY Students.StudentsId, FirstName, LastName, Groups HAVING count(Students.StudentsId) > 2) Groups
GROUP BY Groups HAVING COUNT(Groups)> 10

