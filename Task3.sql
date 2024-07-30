use sys;

CREATE TABLE employeess (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    salary DECIMAL(10, 2)
);


INSERT INTO employeess(first_name, last_name, email, salary) VALUES
('John', 'Doe', 'john.doe@example.com', 90000),
('Jane', 'Smith', 'jane.smith@example.com', 80000),
('Alice', 'Johnson', 'alice.johnson@example.com', 75000),
('Bob', 'Brown', 'bob.brown@example.com', 85000),
('Charlie', 'Davis', 'charlie.davis@example.com', 70000),
('Eve', 'Wilson', 'eve.wilson@example.com', 65000),
('Frank', 'Miller', 'frank.miller@example.com', 68000);


SELECT first_name, last_name, salary
FROM employeess
ORDER BY salary DESC
LIMIT 3;

SELECT first_name, last_name, salary
FROM employeess
ORDER BY salary ASC
LIMIT 3;

SELECT first_name, last_name, salary
FROM employeess
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

SELECT first_name, last_name, salary
FROM employeess
ORDER BY salary ASC
LIMIT 1 OFFSET 1;

SELECT first_name, last_name, salary
FROM employeess
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

SELECT first_name, last_name, salary
FROM employeess
ORDER BY salary ASC
LIMIT 1 OFFSET 2;

SELECT first_name, last_name, email, salary
FROM employeess
WHERE salary BETWEEN 65000 AND 80000
ORDER BY first_name DESC
LIMIT 3;
