INSERT INTO company_buildings (name)
VALUES 
  ('Main Building'), 
  ('Research Lab'), 
  ('Darkroom');

INSERT INTO teams (name, building_id)
VALUES 
  ('Admin', 1), 
  ('Data Analysts', 3),
  ('R&D', 2);

INSERT INTO employees 
  (first_name, last_name, birthdate, email, team_id)
VALUES 
  ('Ravi', 'Shukla', '1988-10-01', 'ravi@test.com', 3),
  ('Rinku', 'Dubey', '1989-06-10', 'rinku@test.com', 1),
  ('Ritu', 'Shukla', '1987-01-29', 'ritu@test.com', 2);

INSERT INTO intranet_accounts (email, password)
VALUES 
  ('ravi@test.com', 'abcae1'),
  ('rinku@test.com', 'fdasfdas1'),
  ('ritu@test.com', 'adsfsaf3');