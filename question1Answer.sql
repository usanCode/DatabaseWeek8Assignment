
-- QUESTION 1: Create a database named "PLP Scholarship Academy Database"
CREATE DATABASE `PLP_Scholarship_Academy_Database`;
USE `PLP_Scholarship_Academy_Database`;


-- Create the 'Students' table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Country VARCHAR(100) NOT NULL,
    Town VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15)
   
);

-- Create the 'Modules' table
CREATE TABLE Modules (
    ModuleID INT AUTO_INCREMENT PRIMARY KEY,
    ModuleName VARCHAR(255) NOT NULL,
    InstructorName VARCHAR(255) UNIQUE NOT NULL
    
);

-- Create a table that stores the relationship between students and modules
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    ModuleID INT NOT NULL,
    Grade CHAR(100),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ModuleID) REFERENCES Modules(ModuleID)
);


-- Insert sample data into 'Students'
INSERT INTO Students (StudentID,FirstName, LastName, Age,Country,Town, Email, PhoneNumber)
VALUES
    
    (1, 'John', 'Doe', 20, 'SouthAfrica', 'Durban', ' 123@gmail.com', '1234567890'),
    (2, 'Jane', 'Smith', 22, 'Kenya', 'Nairobi', 'jane@gmail.com', '0987654321'),
    (3, 'Alice', 'Johnson', 19, 'Nigeria', 'Lagos', 'alice@gmail.com', '1122334455'),
    (4, 'Bob', 'Brown', 21, 'Ghana', 'Accra', 'Bob@gmail.com', '2233445566'),
    (5, 'Charlie', 'Davis', 23, 'Uganda', 'Kampala', 'Charlie@gmail.com','1234567890');
   
    
    
    
-- Insert sample data into 'Courses'
INSERT INTO Modules (ModuleID,ModuleName,InstructorName)
VALUES
(1,'Software Engineering', 'Chakin'),
(2,'Python', 'Evans Mutuku'),
(3,'Databases', 'gerald macherechedze'),
(4,'Web Development', 'Eddie Lugali'),
(5,'Startup', 'nelly alili');

-- Insert sample data into 'Enrollments'
INSERT INTO Enrollments (EnrollmentID, StudentID , ModuleID, Grade)
VALUES
    
    (1, 1, 1, '100%'),
    (2, 2, 2, '75%'),
    (3, 3, 3, '50%'),
    (4, 4, 4, '100%'),
    (5, 5, 5, '88%');