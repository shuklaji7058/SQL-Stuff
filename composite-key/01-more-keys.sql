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

-- composite key
-- ye composite key ka example hai , hame isme specfic id ki zarurat nahi hai
CREATE TABLE projects_employees(
  project_id INT,
  employee_id INT REFERENCES employees ON DELETE CASCADE,
  PRIMARY KEY (project_id, employee_id), -- is tarike se hum composite key bana rahe hain, ye sirf project_id aur employee_id ka combination hoga, dono milke unique honge
  FOREIGN KEY (project_id) REFERENCES projects ON DELETE CASCADE
  -- FOREIGN KEY (employee_id, project_id) REFERENCES employees ON DELETE ...
); 