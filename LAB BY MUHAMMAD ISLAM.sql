CREATE DATABASE COMPUTER;
USE COMPUTER;


CREATE TABLE studentS (
    studentS_id INT PRIMARY KEY,              
    studentS_name VARCHAR(50) NOT NULL,       
    degree_program VARCHAR(50),              
    semester INT                             
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,               
    course_title VARCHAR(100) NOT NULL,      
    credit_hours INT                         
);

CREATE TABLE registrations (
    student_id INT,                          
    course_id INT,                           
    grade VARCHAR(5),                        
    FOREIGN KEY (student_id) REFERENCES students(studentS_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students (studentS_id, studentS_name, degree_program, semester) VALUES
(10, 'Ahmad', 'BSCS', 3),
(11, 'Sara', 'BSSE', 2),
(12, 'Bilal', 'BSIT', 4),
(13, 'Fatima', 'BSCS', 1);

INSERT INTO courses (course_id, course_title, credit_hours) VALUES
(201, 'Data Structures', 3),
(202, 'Software Engineering', 4),
(203, 'Computer Graphics', 3),
(204, 'Artificial Intelligence', 4);


INSERT INTO registrations (student_id, course_id, grade) VALUES
(10, 201, 'A'),
(10, 202, 'B'),
(11, 201, 'A'),
(12, 203, 'C'),
(13, 204, 'B'),
(11, 204, 'A');


SELECT students.studentS_id, students.studentS_name, courses.course_title, courses.credit_hours
FROM students
INNER JOIN registrations ON students.studentS_id = registrations.student_id
INNER JOIN courses ON registrations.course_id = courses.course_id;


INSERT INTO students (studentS_id, studentS_name, degree_program, semester) VALUES
(14, 'Hassan', 'BSIT', 2);


SELECT studentS_id, studentS_name, degree_program
FROM students;

SELECT * FROM StudentS;