select e.emp_no, 
e.first_name,
e.last_name,
ts.title,
ts.from_date,
ts.to_date
INTO retire_emps
from employees as e
LEFT JOIN titles as ts
on (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no
;

SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO emp_list
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;