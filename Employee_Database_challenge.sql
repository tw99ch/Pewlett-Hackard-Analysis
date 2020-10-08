SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
From employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
--INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;


SELECT COUNT (title), title
INTO retiring_titles
From unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
ti.to_date,
ti.title
INTO mentorship_eligibilty
From employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (ti.to_date = '9999-01-01')
And (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

SELECT COUNT (de.dept_no), de.dept_no
--INTO retiring_dept
From unique_titles as ut
LEFT JOIN dept_emp as de
ON (ut.emp_no = de.emp_no)
GROUP BY de.dept_no
ORDER BY count DESC;


SELECT rd.count,
d.dept_name
INTO retiring_dept2
From retiring_dept as rd
INNER JOIN departments as d
ON (rd.dept_no = d.dept_no);