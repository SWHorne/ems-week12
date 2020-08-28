DROP DATABASE IF EXISTS ems_db;

CREATE database ems_db;

USE ems_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  department VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NULL,
  PRIMARY KEY (id)
);


INSERT INTO department(department)
VALUES
('Engineering'),
('Finance'),
('Legal'),
('Sales');

INSERT INTO role(title, salary, department_id)
VALUES
('Sales Lead', 100000, 4),
('Salesperson', 80000, 4),
('Lead Engineer', 150000, 1),
('Software Engineer', 120000, 1),
('Accountant', 125000, 2),
('Controller', 175000, 2),
('Lawyer', 190000, 3),
('Legal Team Lead', 250000, 3);

INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES
('John', 'Doe', 1, 3),
('Mike', 'Chan', 2, 1),
('Ashley', 'Rodriguez', 3, NULL),
('Kevin', 'Tupik', 4, 3),
('Dave', 'Grohl', 3, NULL),
('Malia', 'Brown', 5, 10),
('Sarah', 'Lourd', 6, NULL),
('Tom', 'Allen', 7, 7),
('Christian', 'Eckenrode', 4, 3),
('Taylor', 'Hawkins', 6, NULL);