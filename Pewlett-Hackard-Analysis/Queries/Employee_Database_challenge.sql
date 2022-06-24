--Deliverable 1
--The Number of Retiring Employees by Title.
--Create retirement_titles table,to retrieve the employees who were born between 1952 and 1955.
--Then, order by the employee number.
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT * FROM retirement_titles;

-- To remove duplicates entries for employees, unique_titles table is created.
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles;

--Retrieve the number of employees by their most recent job title who are about to retire.
--Create Retiring Titles table 
SELECT count(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count(title) DESC;

SELECT * FROM retiring_titles;

------------------------------------------------------------------------------------------------
--Deliverable 2
--The Employees Eligible for the Mentorship Program.

SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

SELECT * FROM mentorship_eligibility;

--------------------------------------------------------------------------
SELECT count(emp_no),title
INTO mentorship_emp
FROM mentorship_eligibility
GROUP BY title
ORDER BY count(title) DESC;

SELECT * FROM mentorship_emp;
--------------------------------------------------------------------------

DROP TABLE table1;
DROP TABLE table2;

-- Create Table with Birth Date, Employee Details
SELECT e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
t.dept_no,
t.from_date,
t.to_date
INTO TEMPORARY table1
FROM employees as e
INNER JOIN dept_emp AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

select * from table1;

select table1.emp_no,
table1.first_name,
table1.last_name,
table1.birth_date,
table1.dept_no,
departments.dept_name,
table1.from_date,
table1.to_date
INTO TEMPORARY table2
FROM table1
INNER JOIN departments
ON (table1.dept_no = departments.dept_no)
WHERE (table1.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;
select * from table2;

SELECT count(emp_no),dept_name
INTO TEMPORARY TABLE table3
FROM table2
GROUP BY dept_name
ORDER BY count(dept_name) DESC;

SELECT * FROM table3;