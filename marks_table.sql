-- Drop tables in correct order (child table first)
DROP TABLE IF EXISTS marks;
DROP TABLE IF EXISTS studentz;

-- Create parent table first
CREATE TABLE studentz(
    student_id serial PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create child table with correct foreign key reference
CREATE TABLE marks(
    mark_id serial PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks int,
    FOREIGN KEY(student_id) REFERENCES studentz(student_id)  -- Fixed reference
);

-- Insert students first
INSERT INTO studentz(name)
VALUES 
    ('Akarsh vyas'),
    ('Simran Mehta'),
    ('Rohan Gupta');

-- Insert marks for existing students
INSERT INTO marks(student_id, subject, marks)
VALUES
    (1, 'English', 85),
    (1, 'Math', 89),
    (1, 'Science', 92),
    
    (2, 'English', 80),
    (2, 'Math', 75),
    (2, 'Science', 78),
    
    (3, 'English', 72),
    (3, 'Math', 70),
    (3, 'Science', 74);

-- To insert marks for a new student, first add the student
INSERT INTO studentz(name)
VALUES ('Harsh Patel');

-- Then insert their marks using the correct student_id
INSERT INTO marks(student_id, subject, marks)
VALUES 
    ((SELECT student_id FROM studentz WHERE name = 'Harsh Patel'), 'English', 34);

-- View results
SELECT * FROM studentz;
SELECT * FROM marks;