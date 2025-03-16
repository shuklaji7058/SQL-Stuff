INSERT INTO employers(company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Google', 'Mountain View, CA', 1000000000, TRUE),
       ('Facebook', 'Menlo Park, CA', 500000000, TRUE),
       ('Amazon', 'Seattle, WA', 2000000000, FALSE),
       ('Apple', 'Cupertino, CA', 800000000, TRUE),
       ('Microsoft', 'Redmond, WA', 700000000, FALSE);

INSERT INTO users(full_name, yearly_salary, current_status)
VALUES ('Alice', 100000, 'employed'),
       ('Bob', 80000, 'employed'),
       ('Charlie', 120000, 'unemployed'),
       ('David', 50000, 'self-employed'),
       ('Eve', 150000, 'unemployed');

INSERT INTO conversations(user_id, employer_id, message)  -- This is a many-to-many relationship
VALUES (1, 1, 'Hi Alice, we are interested in hiring you.'),
       (1, 2, 'Hi Alice, we are interested in hiring you.'),
       (2, 3, 'Hi Bob, we are not interested in hiring you.'),
       (3, 4, 'Hi Charlie, we are interested in hiring you.'),
       (4, 5, 'Hi David, we are not interested in hiring you.');