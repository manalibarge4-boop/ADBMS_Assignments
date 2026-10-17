Create database CompanyDBM;
show databases;

USE CompanyDBM;

Create table Employees (
EmpID int Primary key,
EmpName varchar(100),
Salary Decimal(10, 2),
JoinDate Date
);

desc Employees;

Create table Departments (
DeptID int Primary key,
DeptName varchar(30)
);

desc Departments;

ALTER TABLE Employees
ADD Email VARCHAR(100);
desc Employees;

ALTER TABLE Departments
ADD dept_location VARCHAR(100);
desc Departments;

ALTER TABLE Employees
ADD Phone VARCHAR(15) NOT NULL;
desc Employees;

ALTER TABLE Employees
MODIFY EmpName VARCHAR(100);
desc Employees;

ALTER TABLE Departments
DROP PRIMARY KEY;
desc Departments;

Alter table Departments
add primary key(DeptID);

ALTER TABLE Employees
ADD DeptID INT;
ALTER TABLE Employees
ADD CONSTRAINT fk_employees_departments
FOREIGN KEY (DeptID)
REFERENCES Departments(DeptID);
desc Employees;

ALTER TABLE Employees
RENAME COLUMN EmpName To EmployeeName;
desc Employees;

ALTER TABLE Employees
ADD Age INT;

ALTER TABLE Employees
ADD CONSTRAINT chk_EmpAge
CHECK (Age >= 18);

ALTER TABLE Employees
ADD CONSTRAINT chk_EmpSalary
CHECK (Salary > 0);
desc Employees;
SHOW CREATE TABLE Employees;

ALTER TABLE Employees
DROP COLUMN Phone;
desc Employees;

RENAME TABLE Employees TO EmployeeDetails;
SHOW TABLES;

SHOW CREATE TABLE EmployeeDetails;
ALTER TABLE EmployeeDetails drop check chk_EmpAge;
ALTER TABLE EmployeeDetails drop check chk_EmpSalary;

ALTER TABLE EmployeeDetails
DROP FOREIGN KEY fk_employees_departments;
DROP TABLE Departments;
SHOW tables;

DROP DATABASE CompanyDBM;
SHOW Databases;








