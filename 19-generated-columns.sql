-- CREATE TYPE employment_status AS ENUM('self-employed', 'employed', 'unemployed'); -- Postgresql

DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;

CREATE TABLE users (
  -- id SERIAL PRIMARY KEY, -- Postgresql
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  full_name VARCHAR(300) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)),
  -- full_name VARCHAR(300) NOT NULL,
  yearly_salary INT CHECK (yearly_salary > 0),
  current_status ENUM('self-employed', 'employed', 'unemployed') -- MySQL
  -- current_status employment_status -- Postgresql
);

CREATE TABLE employers (
  -- id SERIAL PRIMARY KEY, -- Postgresql
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  company_name VARCHAR(300) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  yearly_revenue FLOAT CHECK (yearly_revenue > 0),
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
  -- id SERIAL PRIMARY KEY, -- Postgresql
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  user_id INT,
  employer_id INT,
  message TEXT NOT NULL
);

INSERT INTO users(first_name, last_name, yearly_salary, current_status)
VALUES ('Alice', 'Smith', 100000, 'employed'),
       ('Bob', 'Johnson', 80000, 'employed'),
       ('Charlie', 'Brown', 120000, 'unemployed'),
       ('David', 'White', 50000, 'self-employed'),
       ('Eve', 'Black', 150000, 'unemployed');