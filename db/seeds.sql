INSERT INTO department (name)
VALUES 
('IT'),
('Finance and Payroll'),
('Marketing'),
('Business Operations');

INSERT INTO role (title, salary, department_id)
VALUES
('Front-end Developer', 90000, 1),
('Software Cloud Engineer', 160000, 1),
('Payroll Analyst', 70000, 2), 
('Payroll Manager', 130000, 2),
('Marketing Director', 170000, 3), 
('Salesperson', 190000, 3),
('Security Lead', 120000, 4),
('Security Director', 200000, 4);


INSERT INTO employee (FirstName, LastName, role_id, Manager_id)
VALUES 
('Melvin', 'Johnson', 2, null),
('Dearra', 'Gray', 1, 1),
('Andy', 'Bishop', 4, null),
('Mary', 'smith', 3, 3),
('Clayton', 'Manning', 6, null),
('Wilson', 'Rodriguez', 5, 5),
('Danielle', 'Pedro', 7, null),
('Mindy', 'Nelson', 8, 7);
