CREATE TABLE addresses(
-- id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
id SERIAL PRIMARY KEY, -- POSTGRESQL
street VARCHAR(300) NOT NULL,
house_number VARCHAR(50) NOT NULL, -- yaha ham INT bhi likh sakte the par lekin house number kabhi kabhi string bhi hota hai jaise 12A, 12B, 12/1, etc.
city_id INT NOT NULL
);


CREATE TABLE users(
-- id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
id SERIAL PRIMARY KEY, -- POSTGRESQL
first_name VARCHAR(300) NOT NULL,
last_name VARCHAR(300) NOT NULL,
email VARCHAR(300) NOT NULL,
address_id INT REFERENCES addresses(id) ON DELETE CASCADE

);


CREATE TABLE cities(
-- id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
id SERIAL PRIMARY KEY, -- POSTGRESQL/
name VARCHAR(300) NOT NULL
);

