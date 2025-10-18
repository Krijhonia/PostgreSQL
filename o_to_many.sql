SELECT * FROM studentz s JOIN marks m
ON s.student_id = m.student_id;

select s.name,m.subject,m.marks from studentz s join marks m on s.student_id = m.student_id