/* Seeds for SQL table. We haven't discussed this type of file yet */
USE employee_db;

/* Insert 3 Rows into your new table */
INSERT INTO department (name)
VALUES ("Engineer");

INSERT INTO department (name)
VALUES ("Sales");

INSERT INTO department (name)
VALUES ("Legal");

INSERT INTO department (name)
VALUES ("Finance");


INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 120000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 100000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Sales person", 80000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Legal Team Lead", 250000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Lawyer", 190000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 125000, 4);


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Doe", 1, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mike", "Chan", 2, 1)

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Ashley", "Rodriguez", 3, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kevin", "Tupik", 4, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Malia", "Brown", 5, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Sarah", "Lourd", 6, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Tom", "Allen", 7, 6);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Christian", "Eckenrode", 8, 2);