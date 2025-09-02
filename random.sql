--Constraints in SQL
DROP TABLE IF EXISTS random;
CREATE TABLE random(
    ID serial PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email text UNIQUE NOT NULL,
    created_at date DEFAULT NOW(),
    age INT CHECK (age>=18)

);

INSERT into random(name,email,age)
VALUES('Kunal','Kunalrijhonia@gmail.com',20);

SELECT * from random;
