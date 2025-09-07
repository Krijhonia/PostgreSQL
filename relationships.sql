CREATE TABLE students(
    student_id serial PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
INSERT INTO students(name)
VALUES('Kunal Rijhonia'),
('Akarsh vyas'),
('Simran mehta');

CREATE TABLE student_profiles(
    student_id INT PRIMARY KEY,
    address text,
    age INT,
    phone VARCHAR(15)
);

INSERT INTO student_profiles(student_id,address,age,phone)
values('1','Delhi,India',22,9999999999),
(2,'Mumbai,India',21,8888888888),
(3,'Bangalore,India',20,7777777777);

ALTER TABLE student_profiles
ADD CONSTRAINT fk_student_id
FOREIGN KEY(student_id)
REFERENCES students(student_id);

SELECT * FROM students;
SELECT * FROM student_profiles;

SELECT
    s.student_id,
    s.name,
    sp.address,
    sp.age,
    sp.phone
FROM students s 
JOIN student_profiles sp 
ON s.student_id = sp.student_id    