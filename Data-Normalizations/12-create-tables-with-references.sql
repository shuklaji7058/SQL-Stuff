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

-- for mysql foreign key constraints
CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
-- id SERIAL PRIMARY KEY, -- POSTGRESQL
first_name VARCHAR(300) NOT NULL,
last_name VARCHAR(300) NOT NULL,
email VARCHAR(300) NOT NULL,
address_id INT NOT NULL,
FOREIGN KEY (address_id) REFERENCES addresses(id) ON DELETE CASCADE -- ye syntax mysql ke liye hai agar aisa nahi kiya toh foreign key constraint nahi lagega aur hame koi error nahi milega (mysql me foreign key constraint lagane ke liye hame pehle table create karna padega jisme foreign key hai aur phir us table me foreign key ka reference dena padega jo ki pehle se exist karta ho, agar nahi kiya toh foreign key constraint nahi lagega aur hame koi error nahi milega)
);


CREATE TABLE cities(
-- id INT PRIMARY KEY AUTO_INCREMENT, -- MYSQL
id SERIAL PRIMARY KEY, -- POSTGRESQL/
name VARCHAR(300) NOT NULL
);

