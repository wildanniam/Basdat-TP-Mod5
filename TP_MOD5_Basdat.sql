CREATE TABLE JOB_HISTORY( 
    employee_id INT, 
    start_date DATE, 
    end_date DATE, 
    job_id VARCHAR(10), 
    department_id INT 
);

CREATE TABLE JOBS ( 
    job_id VARCHAR(10), 
    job_title VARCHAR(50), 
    min_salary INT, 
    max_salary INT 
); 

CREATE TABLE EMPLOYEES (
    employee_id INT, 
    first_name VARCHAR(50), 
    last_name VARCHAR(50), 
    email VARCHAR(100), 
    phone_INT VARCHAR(20), 
    hire_date DATE, 
    job_id VARCHAR(10), 
    salary INT, 
    commission_pct INT, 
    manager_id INT, 
    department_id INT 
); 

CREATE TABLE DEPARTMENTS ( 
    department_id INT, 
    department_name VARCHAR(50), 
    manager_id INT, 
    location_id INT 
);

CREATE TABLE LOCATIONS ( 
    location_id INT, 
    street_address VARCHAR(100), 
    postal_code VARCHAR(20), 
    city VARCHAR(50), 
    state_province VARCHAR(50), 
    country_id VARCHAR(2) 
);

CREATE TABLE COUNTRIES ( 
    country_id VARCHAR(2), 
    country_name VARCHAR(50), 
    region_id INT 
);

CREATE TABLE REGIONS ( 
    region_id INT, 
    region_name VARCHAR(50) 
); 

INSERT INTO job_history_1302220093 VALUES (101, STR_TO_DATE('01-JAN-2020', 
'%d-%b-%Y'), STR_TO_DATE('31-DEC-2021', '%d-%b-%Y'), 'JOB1', 10); 

INSERT INTO job_history_1302220093 VALUES (102, STR_TO_DATE('01-JAN-2019', 
'%d-%b-%Y'), STR_TO_DATE('31-DEC-2020', '%d-%b-%Y'), 'JOB2', 20); 

INSERT INTO job_history_1302220093 VALUES (103, STR_TO_DATE('01-JAN-2020', 
'%d-%b-%Y'), STR_TO_DATE('31-DEC-2021', '%d-%b-%Y'), 'JOB3', 30); 

INSERT INTO JOBS VALUES ('JOB1', 'Job Title 1', 1000, 2000);

INSERT INTO JOBS VALUES ('JOB2', 'Job Title 2', 1500, 2500); 

INSERT INTO JOBS VALUES ('JOB3', 'Job Title 3', 2000, 3000); 

INSERT INTO EMPLOYEES VALUES (101, 'Michael', 'Jordan', 
'michael.jordan@example.com', '123123123', STR_TO_DATE('21-APR-2008', 
'%d-%b-%Y'), 'JOB1', 3000, 0.2, 201, 30); 

INSERT INTO EMPLOYEES VALUES (102, 'Babu', 'Justin', 'bieber.babu@oracle.com', 
'22222', STR_TO_DATE('21-APR-2005', '%d-%b-%Y'), 'JOB1', 1000, 0.1, 101, 50); 

INSERT INTO EMPLOYEES VALUES (103, 'Sembilan', 'Naga', 
'naga.duabelas@yahoo.com', '99999', STR_TO_DATE('21-APR-2001', '%d-%b-%Y'), 
'JOB1', 500, 0.3, 51, 10); 

INSERT INTO DEPARTMENTS VALUES (10, 'Department 1', 201, 1); 

INSERT INTO DEPARTMENTS VALUES (20, 'Department 2', 202, 2); 

INSERT INTO DEPARTMENTS VALUES (30, 'Department 3', 203, 3); 

INSERT INTO LOCATIONS VALUES (1, 'Street 1', '12345', 'City 1', 'State 1', 'CO'); 

INSERT INTO LOCATIONS VALUES (2, 'Street 2', '23456', 'City 2', 'State 2', 'US'); 

INSERT INTO COUNTRIES VALUES ('CO', 'Country 1', 1); 

INSERT INTO COUNTRIES VALUES ('US', 'Country 2', 2); 

INSERT INTO REGIONS VALUES (1, 'Region 1'); 

INSERT INTO REGIONS VALUES (2, 'Region 2'); 

SELECT MAX(hire_date) 
from EMPLOYEES;

SELECT CURDATE() - MIN(hire_date), CURDATE() - MAX(hire_date) 
FROM employees; 


SELECT department_id 
    FROM employees 
    GROUP BY department_id 
HAVING AVG(salary) < 5000; 


SELECT first_name, UPPER(first_name) AS NAMA_CAPSLOCK FROM employees;

SELECT COUNT(*) AS JUMLAH_JOB, AVG(SALARY) AS RATA_RATA_GAJI 
FROM employees;

show tables;

select * from COUNTRIES;
select * from DEPARTMENTS;
select * from employees;
select * from JOB_HISTORY;
select * from JOBS;
select * from LOCATIONS;
select * from REGIONS;

