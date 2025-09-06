DROP TABLE IF EXISTS students;
CREATE TABLE students(
    student_id serial PRIMARY KEY,
    name varchar(100),
    age bigint
);

insert into students(name,age)
VALUES('akarsh',23),
('Ajali',22);
--Adding a column
ALTER TABLE students
ADD COLUMN email VARCHAR(100) DEFAULT 'Not provided';
--Deleting a column
ALTER TABLE students
drop COLUMN email;
--for renaming
ALTER TABLE students
RENAME name to full_name;
--Change data type
ALTER TABLE students
alter COLUMN age type SMALLINT;
--Setting a default value
ALTER TABLE students
ALTER COLUMN age SET DEFAULT 18;
--Dropping a default value
ALTER TABLE students
ALTER COLUMN age DROP DEFAULT ;
--Adding constraint
ALTER TABLE students
ADD constraint age_check CHECK (age>=0);
--Dropping a constraint
ALTER TABLE students
drop CONSTRAINT age_check;
--Renaming a table
alter TABLE students
RENAME to school_students;

SELECT * FROM school_students;