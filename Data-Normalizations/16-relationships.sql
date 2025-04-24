CREATE TABLE employees(
  id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  -- id SERIAL PRIMARY KEY, -- postgresql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  -- email VARCHAR(200) REFERENCES intranet_accounts ON DELETE,
  birthdate DATE NOT NULL,
  email VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE intranet_accounts(
  id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  -- id SERIAL PRIMARY KEY, -- postgresql
  email VARCHAR(200) REFERENCES employees(email) ON DELETE CASCADE,
  password VARCHAR(200) NOT NULL
);