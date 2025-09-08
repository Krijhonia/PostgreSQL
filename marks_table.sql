DROP TABLE IF EXISTS studentz;
CREATE TABLE studentz(
    student_id serial PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);


DROP TABLE IF EXISTS marks;
CREATE TABLE marks(
    mark_id serial PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks int,
    FOREIGN KEY(student_id) REFERENCES students(student_id)
);

insert into studentz(name)
VALUES('Akarsh vyas'),('Simran Mehta'),('Rohan Gupta');

INSERT INTO marks(student_id,subject,marks)
VALUES
(1,'English',85),
(1,'Math',89),
(1,'Science',92),

(2,'English',80),
(2,'Math',75),
(2,'Science',78),

(3,'English',72),
(3,'Math',70),
(3,'Science',74);
SELECT * FROM studentz;
SELECT * FROM marks;