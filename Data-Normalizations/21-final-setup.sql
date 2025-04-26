CREATE TABLE projects(
  id SERIAL PRIMARY KEY,-- postgresql
  title VARCHAR(300) NOT NULL,
  deadline DATE
);

CREATE TABLE company_buildings(
  id SERIAL PRIMARY KEY,
  name VARCHAR(300) NOT NULL
);

CREATE TABLE teams(
  id SERIAL PRIMARY KEY,
  name VARCHAR(300) NOT NULL,
  building_id INT REFERENCES company_buildings ON DELETE SET NULL
);

CREATE TABLE employees(
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  id SERIAL PRIMARY KEY, -- postgresql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  -- email VARCHAR(200) REFERENCES intranet_accounts ON DELETE,
  birthdate DATE NOT NULL,
  email VARCHAR(200) UNIQUE NOT NULL,
  team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts(
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  id SERIAL PRIMARY KEY, -- postgresql
  email VARCHAR(200) REFERENCES employees(email) ON DELETE CASCADE,
  password VARCHAR(200) NOT NULL
);


CREATE TABLE projects_employees(
  id SERIAL PRIMARY KEY, -- postgresql
  project_id INT REFERENCES projects ON DELETE CASCADE,
  employee_id INT REFERENCES employees ON DELETE CASCADE
); -- This table is a many-to-many relationship between projects and employees
-- The projects_employees table allows us to associate multiple employees with a project and vice versa.
-- The project_id column references the projects table, and the employee_id column references the employees table.
-- This way, we can track which employees are working on which projects.