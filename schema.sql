DROP DATABASE IF EXISTS employee_db;

/* Create database */
CREATE DATABASE employee_db;
USE employee_db;

/* Create new table with a primary key that auto-increments, and a text field */
CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (id)
  CONSTRAINT FK_departmentId FOREIGN KEY(department_id) REFERENCES department(id)
);