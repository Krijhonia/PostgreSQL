DROP TABLE IF EXISTS strings;
CREATE TABLE strings(
    code CHAR(5),
    email VARCHAR(100),
    bio text
);
INSERT into strings
VALUES('23fhf','kunalrijhonia@gmail.com','Hi my name is kunal rijhonia and i am interested in ML');

SELECT * FROM strings;