CREATE DATABASE colg;

CREATE TABLE st2(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(10),
city VARCHAR(20)
);

INSERT INTO st2 (rollno, name, marks, grade, city) 
VALUES
(101, 'ANIL', 78, 'C', 'PUNE'),
(102, 'BHUMIKA', 93, 'A', 'MUMBAI'),
(103, 'CHETAN', 85, 'B', 'MUMBAI'),
(104, 'DHRUN', 93, 'A', 'DELHI'),
(105, 'EMANUAL', 12, 'F', 'DELHI'),
(106, 'FARAH', 82, 'B', 'DELHI');


SELECT name, rollno 
FROM st2 
WHERE rollno IN(SELECT rollno FROM st2 
WHERE rollno % 2 = 0);

SELECT AVG(marks)
FROM st2;

SELECT name, marks
FROM st2
WHERE marks > (SELECT AVG(marks)
FROM st2);

SELECT MAX(marks)
FROM (SELECT * FROM st2 WHERE city = 'MUMBAI') AS yo;

