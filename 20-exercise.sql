CREATE DATABASE online_shop;

CREATE TABLE products(
  product_name VARCHAR(300) NOT NULL,
  price NUMERIC(10,2) NOT NULL CHECK (price > 0),
  description TEXT NOT NULL,
  amount_in_stock SMALLINT,
  image_url VARCHAR(300)
);
INSERT INTO products(product_name, price, description, amount_in_stock,image_url)
VALUES ('Laptop', 1000, 'A laptop for all your needs', 10, 'https://example.com laptop.jpg');

INSERT INTO products(product_name, price, description, amount_in_stock,image_url)
VALUES('Mouse', 20, 'A mouse for all your needs', 100, 'https://example.com/mouse.jpg');

ALTER TABLE products
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;
