--Basic Join
SELECT * from studentz s join marks m
ON s.student_id = m.student_id;
--Another variety if join
SELECT s.name,m.subject,m.marks from studentz s join marks m on s.student_id = m.student_id;
--Show marks of only simran mehta in all subjects
SELECT s.name,m.subject,m.marks from studentz s join marks m on s.student_id = m.student_id WHERE name = 'Simran Mehta';
--Adding a new student name
INSERT into studentz(name)
VALUES('Harsh patel');

--Left join
SELECT s.name,m.subject,m.marks from studentz s LEFT JOIN marks m on s.student_id = m.student_id;
--Right Join
SELECT s.name,m.subject,m.marks from studentz s RIGHT JOIN marks m on s.student_id = m.student_id;
--Full Join
SELECT s.name, m.subject, m.marks
FROM studentz s
FULL JOIN marks m
ON s.student_id = m.student_id;
--Cross join
SELECT s.name,m.subject,m.marks from studentz s CROSS JOIN marks m;