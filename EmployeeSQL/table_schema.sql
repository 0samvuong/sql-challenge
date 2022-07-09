-- SAM VUONG week 9 homework
-- DROP TABLE STATEMENTS
-- drop table salaries;
-- drop table dept_manager;
-- drop table dept_emp;
-- drop table employees;
-- drop table departments;
-- drop table titles;

-- CREATE TABLES

CREATE TABLE titles (
	title_id VARCHAR(10),
	title VARCHAR(255) NOT NULL,
	PRIMARY KEY(title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(10),
	dept_name VARCHAR(255) NOT NULL,
	PRIMARY KEY(dept_no)
);

CREATE TABLE employees (
	emp_no INTEGER,
	emp_title_id VARCHAR(10) REFERENCES titles (title_id),
	birth_date VARCHAR(10),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex CHAR(1),
	hire_date VARCHAR(10),
	PRIMARY KEY(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INTEGER REFERENCES employees (emp_no),
	dept_no VARCHAR(10) REFERENCES departments (dept_no),
	PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) REFERENCES departments (dept_no),
	emp_no INTEGER REFERENCES employees (emp_no),
	PRIMARY KEY(dept_no,emp_no)
);

CREATE TABLE salaries (
	emp_no INTEGER REFERENCES employees (emp_no),
	salary INTEGER,
	PRIMARY KEY(emp_no)
);



