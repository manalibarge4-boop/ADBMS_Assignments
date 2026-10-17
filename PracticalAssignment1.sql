Create database Practical1;
use Practical1;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    City VARCHAR(50),
    bdate DATE
);
desc Employee;

CREATE TABLE Investor (
    inv_no INT PRIMARY KEY,
    inv_name VARCHAR(50),
    inv_date DATE,
    inv_amt DECIMAL(10,2),
    emp_id INT
);
desc Investor; 

INSERT INTO Employee (emp_id, emp_name, City, bdate) 
VALUES(1, 'Amit', 'Pune', '2002-05-12'),
	  (2, 'Sneha', 'Mumbai', '2001-08-20'),
      (3, 'Rahul', 'Satara', '2000-03-15'),
      (4, 'Priya', 'Nashik', '2002-11-25'),
      (5, 'Neha', 'Kolhapur', '2001-01-10');
Select * from Employee;

INSERT INTO Investor (inv_no, inv_name, inv_date, inv_amt, emp_id)
VALUES (101, 'ABC Ltd', '2026-01-10', 25000.00, 1),
       (102, 'XYZ Ltd', '2026-02-15', 30000.00, 2),
       (103, 'PQR Ltd', '2026-03-20', 15000.00, 3),
       (104, 'LMN Ltd', '2026-04-05', 40000.00, 4),
       (105, 'DEF Ltd', '2026-05-12', 20000.00, 5);
Select * from Investor;

ALTER TABLE Employee
ADD Age INT,
ADD Salary DECIMAL(10,2),
ADD CONSTRAINT chk_emp_age CHECK (Age <= 50),
ADD CONSTRAINT chk_emp_salary CHECK (Salary >= 10000);
Select * from Employee;

ALTER TABLE Investor
ADD Age INT;
desc Investor;

ALTER TABLE Investor
MODIFY COLUMN inv_name TEXT;
desc Investor;

ALTER TABLE Employee
RENAME COLUMN emp_id TO E_id;
desc Employee;

UPDATE Employee
SET City = 'Nagpur'
WHERE E_id = 4;
Select * from Employee;

DELETE FROM Investor
WHERE inv_no = 105;
Select * from Investor;

ALTER TABLE Investor
DROP COLUMN Age;
Desc Investor;

ALTER TABLE Employee
DROP CHECK chk_emp_age;
SHOW CREATE TABLE Employee;

ALTER TABLE Investor
ADD CONSTRAINT fk_investor_employee
FOREIGN KEY (emp_id)
REFERENCES Employee(E_id);
Desc Investor;

SELECT inv_no, inv_name, inv_date, inv_amt
FROM Investor;

RENAME TABLE Investor 
TO Investor_info;
Show Tables;

ALTER TABLE Investor_info
DROP FOREIGN KEY fk_investor_employee;
TRUNCATE TABLE Investor_info;
TRUNCATE TABLE Employee;
SELECT * FROM Investor_info;
SELECT * FROM Employee;

DROP TABLE Investor_info;
DROP TABLE Employee;
Show TABLES;
