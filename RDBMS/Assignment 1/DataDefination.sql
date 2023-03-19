-- Create table Jobs
-- postgres
CREATE TABLE Jobs (
  job_id SERIAL PRIMARY KEY NOT NULL,
  job_title VARCHAR(255),
  min_salary REAL NOT NULL,
  max_salary REAL NOT NULL
);

CREATE TABLE Regions (
  region_id VARCHAR(255) PRIMARY KEY NOT NULL,
  region_name VARCHAR(255) NOT NULL
);

CREATE TABLE Countries (
  country_id VARCHAR(255) PRIMARY KEY NOT NULL,
  country_name VARCHAR(255) NOT NULL,
  region_id VARCHAR(255) NOT NULL REFERENCES Regions(region_id)
);

CREATE TABLE Locations (
  location_id VARCHAR(255) PRIMARY KEY NOT NULL,
  street_address VARCHAR(255) NOT NULL,
  postal_code VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  state_province VARCHAR(255) NOT NULL,
  country_id VARCHAR(255) NOT NULL REFERENCES Countries(country_id)
);

CREATE TABLE Departments (
  department_id VARCHAR(255) PRIMARY KEY NOT NULL,
  department_name VARCHAR(255) NOT NULL,
  location_id VARCHAR(255) NOT NULL REFERENCES Locations(location_id)
);

CREATE TABLE Employees (
  employee_id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255),
  phone_number VARCHAR(255),
  hire_date DATE NOT NULL,
  job_id INT NOT NULL REFERENCES Jobs(job_id),
  salary REAL NOT NULL,
  manager_id INT,
  department_id VARCHAR(255) NOT NULL REFERENCES Departments(department_id)
);

CREATE TABLE Dependents (
  dependent_id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  relationship VARCHAR(255),
  employee_id INT NOT NULL REFERENCES employees(employee_id)
);

-- constraints
ALTER TABLE Employees
ALTER COLUMN first_name SET NOT NULL,
ALTER COLUMN last_name SET NOT NULL;


ALTER TABLE Dependents
ALTER COLUMN first_name SET NOT NULL,
ALTER COLUMN last_name SET NOT NULL;

ALTER TABLE Jobs
ADD
CHECK(min_salary > 1000);

ALTER TABLE Locations
ADD
CHECK(LENGTH(postal_code)<=10);

-- In departments table, add a new field ‘manager_name’ of type VARCHAR
ALTER TABLE Departments
ADD manager_name VARCHAR(255) NOT NULL;

-- REMOVE field max_salary from jobs
ALTER TABLE Jobs DROP COLUMN max_salary;

-- In the locations table, rename postal_code column to pincode.
ALTER TABLE Locations RENAME COLUMN postal_code TO pincode;