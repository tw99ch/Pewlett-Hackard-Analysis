SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
--INTO retirement_titles
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
--INTO retiring_titles
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
--INTO mentorship_eligibilty
From employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (ti.to_date = '9999-01-01')
And (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

SELECT DISTINCT ON (ut.emp_no) ut.emp_no,
ut.first_name,
ut.last_name,
ut.title,
de.dept_no
INTO retiring_dept_no
FROM unique_titles as ut
INNER JOIN dept_emp as de
ON (ut.emp_no = de.emp_no)
ORDER BY ut.emp_no ASC;


SELECT COUNT (d.dept_name), d.dept_name
--INTO retiring_dept
From retiring_dept_no as rd
INNER JOIN departments as d
ON (rd.dept_no = d.dept_no)
GROUP BY d.dept_name
ORDER BY d.dept_name ASC;

SELECT COUNT(de.dept_no), de.dept_no
--INTO mentorship_department
From mentorship_eligibilty as me
INNER JOIN dept_emp as de
ON (me.emp_no = de.emp_no)
GROUP BY de.dept_no;

SELECT md.count, d.dept_name
--INTO mentorship_department2
From mentorship_department as md
INNER JOIN departments as d
ON (md.dept_no = d.dept_no)
ORDER BY d.dept_name ASC;

SELECT md.dept_name,
(rd.count/md.count)mentor_to_new_hire
--INTO memtor_no
From retiring_dept as rd
INNER JOIN mentorship_department2 as md
ON (rd.dept_name = md.dept_name);

