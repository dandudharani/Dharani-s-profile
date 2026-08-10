-- Student Info Database
-- Import this file into MySQL/phpMyAdmin

CREATE DATABASE IF NOT EXISTS student_info;
USE student_info;

CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    gender VARCHAR(10),
    date_of_birth DATE,
    course VARCHAR(100),
    branch VARCHAR(100),
    year INT,
    address VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample data
INSERT INTO students
(name, email, phone, gender, date_of_birth, course, branch, year, address)
VALUES
('Dharani', 'dharani@gmail.com', '9876543210', 'Female',
 '2005-06-15', 'B.Tech', 'CSE', 2, 'Kadapa');
