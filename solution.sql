use CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT
);

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Student VALUES
(1001, 'Karthik', 101),
(1002, 'Nisha', 102);

INSERT INTO Course VALUES
(201, 'Database Systems'),
(202, 'Data Structures');

INSERT INTO Enrollment VALUES
(1, 1001, 201),
(2, 1002, 202);

INSERT INTO Department VALUES
(101, 'Computer Science'),
(102, 'Information Technology');

CREATE VIEW studentDetails AS
SELECT s.StudentName,
       c.CourseName,
       d.DepartmentName
FROM Student s
JOIN Enrollment e
ON s.StudentID = e.StudentID
JOIN Course c
ON e.CourseID = c.CourseID
JOIN Department d
ON s.DepartmentID = d.DepartmentID;

SELECT * FROM studentDetails;
