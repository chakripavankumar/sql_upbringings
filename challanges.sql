-- Find the average salary and employee count department-wise.
SELECT dept_id,
    AVG(salary) AS average_salary,
    COUNT (*) AS employee_count
FROM employees
GROUP BY dept_id;
-- Find departments having: more than 1 employee ,
SELECT dept_id,
    COUNT(*) AS employee_count
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 1 -- average rating greater than 4
select DEPT_ID,
    AVG(rating) AS average_rating
FROM employees
GROUP BY dept_id
HAVING AVG(rating) > 4 -- Find cities where: total salary exceeds 1,50,000
SELECT city,
    SUM(salary) AS total_salary
FROM employees
GROUP BY city
HAVING SUM(salary) > 150000 --- Find cities where employee count is at least 2
SELECT city,
    COUNT(*) AS employee_count
FROM employees
GROUP BY city
HAVING COUNT(*) >= 2 -- Find the department with the highest total bonus
SELECT dept_id,
    SUM(bonus) AS total_bonus
FROM employees
GROUP BY dept_id
ORDER BY total_bonus DESC
LIMIT 1;
-- Find the city having the highest average salary.
SELECT city,
    AVG(salary) AS highest_average_salary
FROM employees
GROUP BY city
ORDER BY highest_average_salary DESC
LIMIT 1;