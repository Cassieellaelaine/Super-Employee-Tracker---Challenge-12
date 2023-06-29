DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db; 

CREATE TABLE department (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL, 
    salary DECIMAL NOT NULL,
    department_id INTEGER, 
    INDEX dep_ind (department_id),
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
);

CREATE TABLE employee (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    role_id INTEGER, 
    INDEX role_ind (Role_id),
    CONSTRAINT fk_role FOREIGN KEY (Role_id) REFERENCES role(id) ON DELETE SET NULL,
    Manager_id INTEGER,
    INDEX Manager_ind (Manager_id),
    CONSTRAINT fk_manager FOREIGN KEY (Manager_id) REFERENCES employee(id) ON DELETE SET NULL
);