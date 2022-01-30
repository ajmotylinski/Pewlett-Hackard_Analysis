--Deliverable 1

select e.emp_no, 
e.first_name,
e.last_name,
ts.title,
ts.from_date,
ts.to_date
INTO retirement_titles
from employees as e
LEFT JOIN titles as ts
on (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no
;


SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO emp_list
FROM unique_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;

select count(emp_no), 
title 
INTO retiring_titles
from emp_list 
group by  title 
order by count(emp_no) DESC;

--Deliverable 2
SELECT distinct on (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ts.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ts
ON (e.emp_no = ts.emp_no)
where (de.to_date = '9999-01-01') and
(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by e.emp_no, ts.to_date DESC;