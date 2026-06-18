CREATE DATABASE my_database;
CREATE TABLE employees (
    emp_id INT GENERATED ALWAYS AS IDENTITY (START WITH 101 INCREMENT BY 1) PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    age INT NOT NULL,
    dept_id INT NOT NULL,
    designation VARCHAR(100) NOT NULL,
    manager_id INT,
    salary DECIMAL(10, 2) NOT NULL,
    bonus DECIMAL(10, 2) NOT NULL,
    experience INT NOT NULL,
    city VARCHAR(60) NOT NULL,
    joining_date DATE NOT NULL,
    rating DECIMAL(3, 1) NOT NULL,
    status VARCHAR(20) NOT NULL
);
CREATE TABLE departments (
    dept_id INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    budget DECIMAL(15, 2) NOT NULL,
    head_emp_id INT NOT NULL
);
CREATE TABLE projects (
    project_id INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    dept_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    budget DECIMAL(15, 2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    client_name VARCHAR(100) NOT NULL
);
INSERT INTO employees (
        employee_name,
        gender,
        age,
        dept_id,
        designation,
        manager_id,
        salary,
        bonus,
        experience,
        city,
        joining_date,
        rating,
        status
    )
VALUES (
        'Rahul Sharma',
        'Male',
        32,
        1,
        'Software Engineer',
        NULL,
        85000.00,
        10000.00,
        8,
        'Bangalore',
        '2018-06-15',
        4.5,
        'Active'
    ),
    (
        'Priya Reddy',
        'Female',
        28,
        2,
        'Data Analyst',
        101,
        65000.00,
        7000.00,
        5,
        'Hyderabad',
        '2021-01-10',
        4.2,
        'Active'
    ),
    (
        'Amit Kumar',
        'Male',
        35,
        3,
        'Project Manager',
        NULL,
        120000.00,
        15000.00,
        12,
        'Pune',
        '2015-09-20',
        4.8,
        'Active'
    ),
    (
        'Sneha Patil',
        'Female',
        26,
        1,
        'Frontend Developer',
        101,
        60000.00,
        5000.00,
        3,
        'Mumbai',
        '2022-07-05',
        4.1,
        'Active'
    ),
    (
        'Vikram Singh',
        'Male',
        40,
        4,
        'HR Manager',
        NULL,
        95000.00,
        12000.00,
        15,
        'Delhi',
        '2012-03-18',
        4.7,
        'Active'
    ),
    (
        'Neha Gupta',
        'Female',
        30,
        2,
        'Business Analyst',
        103,
        75000.00,
        8000.00,
        7,
        'Chennai',
        '2019-11-25',
        4.3,
        'Active'
    ),
    (
        'Rohan Verma',
        'Male',
        24,
        1,
        'Backend Developer',
        101,
        55000.00,
        4000.00,
        2,
        'Bangalore',
        '2023-02-14',
        3.9,
        'Active'
    ),
    (
        'Anjali Mehta',
        'Female',
        38,
        5,
        'Finance Manager',
        NULL,
        110000.00,
        14000.00,
        14,
        'Ahmedabad',
        '2011-08-12',
        4.6,
        'Active'
    ),
    (
        'Karan Malhotra',
        'Male',
        29,
        3,
        'QA Engineer',
        103,
        62000.00,
        6000.00,
        6,
        'Pune',
        '2020-05-30',
        4.0,
        'On Leave'
    ),
    (
        'Pooja Nair',
        'Female',
        33,
        1,
        'Team Lead',
        NULL,
        100000.00,
        13000.00,
        10,
        'Kochi',
        '2016-04-22',
        4.9,
        'Active'
    );
INSERT INTO departments (
        dept_name,
        location,
        budget,
        head_emp_id
    )
VALUES ('Engineering', 'Bangalore', 5000000.00, 110),
    ('Data Analytics', 'Hyderabad', 3000000.00, 106),
    ('Project Management', 'Pune', 4000000.00, 103),
    ('Human Resources', 'Delhi', 2000000.00, 105),
    ('Finance', 'Ahmedabad', 3500000.00, 108);
INSERT INTO projects (
        project_name,
        dept_id,
        start_date,
        end_date,
        budget,
        status,
        client_name
    )
VALUES (
        'E-Commerce Platform',
        1,
        '2025-01-15',
        '2025-12-31',
        1200000.00,
        'In Progress',
        'Amazon'
    ),
    (
        'Customer Analytics Dashboard',
        2,
        '2025-02-01',
        '2025-09-30',
        800000.00,
        'In Progress',
        'Flipkart'
    ),
    (
        'ERP Migration',
        3,
        '2024-08-01',
        '2025-06-30',
        1500000.00,
        'Completed',
        'Infosys'
    ),
    (
        'HR Management System',
        4,
        '2025-03-10',
        '2025-11-15',
        600000.00,
        'Planning',
        'TCS'
    ),
    (
        'Financial Reporting Portal',
        5,
        '2025-01-20',
        '2025-10-31',
        950000.00,
        'In Progress',
        'HDFC Bank'
    ),
    (
        'Mobile Banking App',
        1,
        '2025-04-01',
        '2026-03-31',
        2000000.00,
        'In Progress',
        'ICICI Bank'
    ),
    (
        'Data Warehouse Modernization',
        2,
        '2024-11-01',
        '2025-08-31',
        1800000.00,
        'In Progress',
        'Wipro'
    ),
    (
        'Employee Self-Service Portal',
        4,
        '2025-05-15',
        '2025-12-15',
        500000.00,
        'Planning',
        'Accenture'
    ),
    (
        'Budget Forecasting System',
        5,
        '2025-02-15',
        '2025-09-15',
        700000.00,
        'In Progress',
        'Deloitte'
    ),
    (
        'Project Tracking Tool',
        3,
        '2025-01-01',
        '2025-07-31',
        650000.00,
        'Completed',
        'Capgemini'
    );
-- 1. Display all employees.
SELECT *
FROM employees;
-- 2. Display only employee names and salaries.
SELECT employee_name,
    salary
FROM employees;
-- 3. Display employee names, designations, and cities.
SELECT employee_name,
    designation,
    city
FROM employees
 -- 4. Display all departments.
SELECT *
FROM departments 
-- 5. Display all projects.
SELECT *
FROM projects --    
 Display distinct cities where employees work.
SELECT DISTINCT designation
FROM employees 
-- 7. Display distinct designations.
SELECT DISTINCT designation
FROM employees;
-- 8. Display distinct project statuses.    
SELECT DISTINCT status
FROM projects 
-- 9. Display employee names along with annual salary (salary * 12).
SELECT employee_name,
    salary * 12
FROM employees;
-- 10. Display employee names and total compensation (salary + bonus).
SELECT employee_name,
    salary + bonus AS total_compensation
FROM employees;

-- Single Conditions

-- 1. Find all employees from Bangalore.
SELECT *  FROM employees WHERE city = 'Bangalore'
-- 2. Find employees whose salary is greater than 80,000.
 SELECT * FROM employees WHERE salary >= 80000
-- 3. Find employees older than 30.
  SELECT * FROM employees WHERE age >=30
-- 4. Find active employees.
      SELECT * FROM employees WHERE status = 'Active'
-- 5. Find projects that are completed.
    SELECT * FROM projects WHERE status = 'Completed'
-- Multiple Conditions

-- 6. Find active employees in Bangalore.
     SELECT * FROM employees WHERE city = 'Bangalore' AND status = 'Active'
-- 7. Find employees whose salary is greater than 60,000 and rating is above 4.
 SELECT * FROM employees WHERE salary >= 60000 AND rating >= 4
-- 8. Find employees in Bangalore or Pune.
       SELECT * FROM employees WHERE city = 'Bangalore' OR city = 'Pune';
-- 9. Find employees whose experience is at least 5 years.
          SELECT * FROM employees WHERE experience >= 5;
-- 10. Find employees whose bonus is between 5,000 and 10,000.
     SELECT * FROM employees WHERE bonus BETWEEN 5000   AND 10000
-- Practice IN, BETWEEN, LIKE

-- 11. Find employees working in Bangalore, Pune, and Delhi.
     SELECT * FROM employees WHERE city  IN ('Bangalore', 'Pune', 'Delhi');
-- 12. Find employees aged between 25 and 35.
  SELECT * FROM employees WHERE age  BETWEEN 25 AND 35;
-- 13. Find employees whose names start with ‘R’.
  SELECT * FROM employees WHERE employee_name LIKE 'R%';
-- 14. Find employees whose names end with ‘a’.
  SELECT * FROM employees WHERE employee_name LIKE '%a';
-- 15. Find employees whose designation contains ‘Manager’. 
  SELECT * FROM employees WHERE designation LIKE '%Manager%';


--   Single Column Sorting

-- 1. Sort employees by salary ascending.
SELECT * FROM employees ORDER BY salary ASC;
-- 2. Sort employees by salary descending.
SELECT * FROM employees ORDER BY salary DESC;
-- 3. Sort employees by age.
SELECT * FROM employees ORDER BY age;
-- 4. Sort employees by joining date.
SELECT * FROM employees ORDER BY joining_date;
-- 5. Sort projects by budget descending.
SELECT * FROM projects ORDER BY budget DESC;

-- Multiple Column Sorting

-- 6. Sort employees by rating descending and salary descending.
SELECT * FROM employees ORDER BY rating DESC, salary DESC;
-- 7. Sort employees by city and then salary.
SELECT * FROM employees ORDER BY city, salary;      
-- 8. Sort employees by department and experience.
SELECT * FROM employees ORDER BY dept_id, experience;
-- 9. Sort projects by status and budget.
SELECT * FROM projects ORDER BY status, budget;
-- 10. Sort employees by designation and employee name.
SELECT * FROM employees ORDER BY designation, employee_name;

-- Top N Questions

-- 11. Get the top 3 highest-paid employees.
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;
-- 12. Get the top 5 most experienced employees.
SELECT * FROM employees ORDER BY experience DESC LIMIT 5;
-- 13. Get the newest 3 employees.
SELECT * FROM employees ORDER BY joining_date DESC LIMIT 3;
-- 14. Get the lowest 2 salaries.
SELECT * FROM employees ORDER BY salary ASC LIMIT 2;    
-- 15. Get the top 3 highest-rated employees.
SELECT * FROM employees ORDER BY rating DESC LIMIT 3


-- Grouping Data (GROUP BY)

-- Basic Aggregations

-- 1. Count total employees.
 SELECT COUNT(*) AS total_employees FROM employees;
-- 2. Find average salary.
SELECT AVG(salary) AS average_salary FROM employees;
-- 3. Find highest salary.
SELECT MAX(salary) AS highest_salary FROM employees;
-- 4. Find lowest salary.
SELECT MIN(salary) AS lowest_salary FROM employees
-- 5. Find total bonus paid.
SELECT SUM(bonus) AS bonus_paid FROM employees

-- Department-Wise

-- 6. Number of employees in each department.
 SELECT dept_id, COUNT(*) AS  employee_count FROM employees GROUP BY dept_id;
-- 7. Average salary in each department.
SELECT dept_id, AVG(salary) AS average_salary FROM employees GROUP BY dept_id;
-- 8. Maximum salary in each department.
 SELECT dept_id ,MAX(salary) AS maximum_salary FROM employees GROUP BY dept_id;
-- 9. Total salary paid in each department.
SELECT dept_id, SUM(salary) as total_salary FROM employees GROUP BY dept_id;
-- 10. Total bonus paid in each department.

SELECT dept_id, SUM(bonus) as total_bonus FROM employees GROUP BY dept_id;
-- City-Wise

-- 11. Number of employees in each city.
 SELECT city, COUNT(*) AS employee_count FROM employees GROUP BY city;
-- 12. Average salary by city.
SELECT city, AVG(salary) AS average_salary FROM employees GROUP BY city;
-- 13. Highest rating in each city.
SELECT city, MAX(rating) AS highest_rating FROM employees GROUP BY city;
-- 14. Total experience in each city.
SELECT city, SUM(experience) AS total_experience FROM employees GROUP BY city;
-- 15. Number of active employees in each city.
SELECT city, COUNT(*) AS active_employees FROM employees WHERE status = 'Active' GROUP BY city;

-- HAVING

-- 16. Departments having more than 2 employees.
SELECT dept_id, COUNT(*) AS employee_count FROM employees GROUP BY dept_id HAVING COUNT(*) > 2;
-- 17. Cities having more than 1 employee.
  SELECT city , COUNT(*) FROM employees GROUP BY city HAVING COUNT(*) > 1;

-- 18. Departments with average salary greater than 70,000.
 SELECT dept_id ,AVG(salary) FROM employees GROUP BY dept_id HAVING AVG(salary) > 70000;
-- 19. Cities where average rating is above 4.
 SELECT city, AVG(rating) AS average_rating FROM employees GROUP BY city HAVING AVG(rating) > 4;
-- 20. Departments whose total salary exceeds 2,00,000.

SELECT dept_id , SUM(salary) as total_salary FROM employees GROUP BY dept_id HAVING SUM(salary) > 200000
    


    -- Find the average salary and employee count department-wise.
 SELECT dept_id , AVG(salary) AS average_salary , COUNT (*) AS employee_count FROM employees GROUP BY dept_id;    