SELECT u.id, u.first_name, u.last_name, u.email, a.street, a.house_number, city_id 
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id;