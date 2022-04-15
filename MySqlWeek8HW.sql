{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\froman\fcharset0 TimesNewRomanPSMT;\f2\froman\fcharset0 Times-Roman;
\f3\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\csgray\c0;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 //1\
\pard\pardeftab720\partightenfactor0

\f1\fs33\fsmilli16667 \cf0 \expnd0\expndtw0\kerning0
SELECT count(*) AS number_hired, t.title FROM employees e JOIN titles t USING (emp_no) WHERE e.hire_date > 1965-01-01 GROUP BY t.title;
\f2\fs24 \
//2\

\f1\fs33\fsmilli16667 SELECT avg(salary) AS "Average Salary", title FROM salaries JOIN titles USING (emp_no) GROUP BY title LIMIT 20;\
//3\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f3\fs22 \cf3 \kerning1\expnd0\expndtw0 \CocoaLigature0 SELECT d.dept_name AS "Department", SUM(s.salary) AS "Sum Salary" FROM departments d INNER JOIN dept_emp de ON de.dept_no = d.dept_no AND d.dept_name = 'Marketing' AND de.from_date < '1993-01-01' INNER JOIN salaries s ON de.emp_no = s.emp_no AND (s.from_date BETWEEN '1990-01-01' AND '1992-12-31') AND (s.from_date BETWEEN de.from_date AND de.to_date);\
+------------+------------+\
}