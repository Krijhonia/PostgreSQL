DROP TABLE IF EXISTS numbers;
CREATE TABLE numbers(
    Id serial,
    age SMALLINT,
    price numeric(4,2),
    rating REAL

);

INSERT into numbers(age,price,rating)
VALUES(23,24.68,12.453);

SELECT * FROM numbers;

INSERT INTO numbers(age,price,rating)
VALUES(12,65.858337,12.567);

SELECT * from numbers;