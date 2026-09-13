CREATE DATABASE smart_attendance;
USE smart_attendance;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    roll_number VARCHAR(50) NOT NULL UNIQUE,
    department VARCHAR(100),
    semester INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    attendance_time TIME NOT NULL,
    status VARCHAR(20) DEFAULT 'Present',

    FOREIGN KEY (student_id)
    REFERENCES students(student_id)
);
SHOW TABLES;
DESCRIBE students;
DESCRIBE attendance;

USE smart_attendance;

SELECT * FROM students;
DESCRIBE attendance;

SELECT * FROM students;
SELECT * FROM attendance;