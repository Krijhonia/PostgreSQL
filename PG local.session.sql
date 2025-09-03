DROP TABLE IF EXISTS students2;
CREATE TABLE students2(
    student_id SERIAL PRIMARY KEY,
    name CHAR (50),
    age INT,
    grade CHAR(1)
);

INSERT INTO students2(name,age,grade)
VALUES
    ('Akarsh',21,'A'),
    ('Anjali',22,'B');

SELECT * FROM students2;

INSERT INTO students2(student_id, name, age, grade)
VALUES
    (3,'Raj',20,'C');
SELECT * FROM students2;
SELECT name FROM students2 WHERE age <= 23;


UPDATE students2
SET age = 24
WHERE name = 'Anjali';

SELECT * FROM students2;

UPDATE students2
SET student_id = 1
WHERE name = 'Akarsh';

UPDATE students2
SET student_id = 2
WHERE name = 'Anjali';

SELECT student_id FROM students2;
SELECT * FROM students2;

DELETE from students2
WHERE name = 'Raj';

SELECT * FROM students2;

INSERT INTO students2
VALUES(4,'Suar',22,'C');

SELECT * FROM students2;