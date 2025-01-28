CREATE TABLE courses (
         course_id INT PRIMARY KEY, 
         course_name VARCHAR(100)
     );
     INSERT INTO courses VALUES 
         (1, 'Data Science Basics'), 
         (2, 'Machine Learning'), 
         (3, 'Data Analysis Techniques');

SELECT * FROM COURSES

/*
List all courses that start with "Data" using regex.
*/

SELECT COURSE_NAME
FROM COURSES
WHERE COURSE_NAME ILIKE '%Data%'