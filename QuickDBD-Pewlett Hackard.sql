CREATE TABLE titles(
    title_id VARCHAR  NOT NULL PRIMARY KEY,
    title VARCHAR  NOT NULL  
);

SELECT * FROM titles;

CREATE TABLE employees(
    emp_no INT  NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR  NOT NULL ,
    birth_date VARCHAR  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex VARCHAR  NOT NULL ,
    hire_date VARCHAR  NOT NULL ,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

CREATE TABLE departments (
    dept_no VARCHAR  NOT NULL PRIMARY KEY,
    dept_name VARCHAR  NOT NULL 
);

SELECT * FROM departments;

CREATE TABLE dept_emp(
    emp_no INT  NOT NULL ,
    dept_no VARCHAR  NOT NULL ,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
 
);

SELECT * from dept_emp;

CREATE TABLE dept_manager(
    dept_no VARCHAR  NOT NULL ,
    emp_no INT  NOT NULL ,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * from dept_manager;


CREATE TABLE salaries(
    emp_no INT  NOT NULL ,
    salary INT  NOT NULL ,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from salaries;



