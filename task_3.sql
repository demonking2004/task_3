-- Task 3

-- 1. Select all columns from empmst
SELECT * FROM empmst;

-- 2. Select specific columns
SELECT empname, salary, city
FROM empmst;

-- 3. WHERE with AND
SELECT empname, salary
FROM empmst
WHERE deptno = 1 AND salary > 40000;

-- 4. WHERE with OR
SELECT empname, city
FROM empmst
WHERE city = 'Delhi' OR city = 'Bangalore';

-- 5. LIKE: names starting with 'S'
SELECT empname
FROM empmst
WHERE empname LIKE 'S%';

-- 6. BETWEEN: salary between 45000 and 70000
SELECT empname, salary
FROM empmst
WHERE salary BETWEEN 45000 AND 70000;

-- 7. ORDER BY salary ascending
SELECT empname, salary
FROM empmst
ORDER BY salary ASC;

-- 8. ORDER BY deptno then empname
SELECT empname, deptno
FROM empmst
ORDER BY deptno ASC, empname ASC;

-- 9. ORDER BY salary descending
SELECT empname, salary
FROM empmst
ORDER BY salary DESC;


-- 10. Select all employees in department 2
SELECT *
FROM empmst
WHERE deptno = 2;

-- 11. Name and DOB of employees born after 1990
SELECT empname, dob
FROM empmst
WHERE dob > '1990-01-01';

-- 12. Employees in HR and from Mumbai
SELECT empname, city
FROM empmst
WHERE deptno = 1 AND city = 'Mumbai';

-- 13. Employees from Delhi or with salary < 50000
SELECT empname, salary, city
FROM empmst
WHERE city = 'Delhi' OR salary < 50000;

-- 14. Employees whose name ends with 'a'
SELECT empname
FROM empmst
WHERE empname LIKE '%a';

-- 15. Employees whose name contains 'vi'
SELECT empname
FROM empmst
WHERE empname LIKE '%vi%';

-- 16. Employees born between 1985 and 1995
SELECT empname, dob
FROM empmst
WHERE dob BETWEEN '1985-01-01' AND '1995-12-31';

-- 17. Employees with salary between 30000 and 60000
SELECT empname, salary
FROM empmst
WHERE salary BETWEEN 30000 AND 60000;

-- 18. Employees ordered by city name ascending
SELECT empname, city
FROM empmst
ORDER BY city ASC;

-- 19. Employees ordered by DOB descending (youngest first)
SELECT empname, dob
FROM empmst
ORDER BY dob DESC;

-- == LIMIT QUERIES ==

-- 20. Get the first 5 employees
SELECT * FROM empmst
LIMIT 5;

-- 21. Get the top 3 highest paid employees
SELECT empname, salary
FROM empmst
ORDER BY salary DESC
LIMIT 3;

-- 22. Get the latest 2 employees by DOB
SELECT empname, dob
FROM empmst
ORDER BY dob DESC
LIMIT 2;

-- 23. Get 4 employees with salary < 60000
SELECT empname, salary
FROM empmst
WHERE salary < 60000
LIMIT 4;

-- 24. Get top 3 employees from department 1 by salary
SELECT empname, deptno, salary
FROM empmst
WHERE deptno = 1
ORDER BY salary DESC
LIMIT 3;

-- 25. Get 3 employees after skipping first 2 alphabetically
SELECT empname
FROM empmst
ORDER BY empname
LIMIT 3 OFFSET 2;