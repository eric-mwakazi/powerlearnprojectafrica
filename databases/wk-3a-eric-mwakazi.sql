-- Create a table named 'student' with the following columns:
-- id: an integer column, set as the primary key
-- fullName: a text column with a maximum of 100 characters
-- age: an integer column to store the student's age
CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName TEXT(100),
    age INT
);

-- Inserting 3 records into the 'student' table with ID, full name, and age
INSERT INTO student (id, fullName, age)
VALUES
    (1, 'John Doe', 22),
    (2, 'Jane Smith', 19),
    (3, 'Alice Brown', 21);

-- Updating the age of the student with ID 2 to 20
-- This will modify the record of the student with ID = 2
UPDATE student
SET age = 20
WHERE id = 2;
