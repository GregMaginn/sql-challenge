-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar   NOT NULL,
    "birth_date" varchar   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" varchar   NOT NULL,
	CONSTRAINT "pk_employees" PRIMARY KEY (
		"emp_no"
	)
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" int   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar   NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
	CONSTRAINT "pk_departments" PRIMARY KEY (
    "dept_no"
	)
);

CREATE TABLE "salaries" (
    "salary" int   NOT NULL,
    "emp_no" int   NOT NULL

);

CREATE TABLE "titles" (
    "title" varchar   NOT NULL,
    "title_id" varchar   NOT NULL,
	CONSTRAINT "pk_titles" PRIMARY KEY (
		"title_id"
	)
);

--ok
ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_emp" ("dept_no");
--ok
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");
--ok
ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_emp" ("emp_no");
--ok
ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");




select * from departments
select * from dept_manager
select * from salaries
select * from employees