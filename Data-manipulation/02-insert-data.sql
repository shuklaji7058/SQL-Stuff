INSERT INTO sales(
  date_fulfilled,
  customer_name,
  product_name,
  volume,
  is_recurring,
  is_disputed
) VALUES -- (
-- --   '2023-01-02',
-- --   'John Doe',
-- --   'Product A',
-- --   100.00,
--   TRUE,
--   FALSE
-- ),
-- (
--   NULL,
--   'Jane Smith',
--   'Product B',
--   200.50,
--   FALSE,
--   TRUE
-- ),
-- (
--   '2023-01-05',
--   'Alice Johnson',
--   'Product C',
--   50.00, 
--   TRUE,
--   FALSE
-- ),
(
  '2023-01-10',
  'Bob Brown',
  'Product D',
  150.75,
  FALSE,
  TRUE
),
(
  NULL,
  'Charlie Green',
  'Product E',
  10.00, 
  TRUE,
  FALSE
),
(
  '2023-01-15',
  'Diana Prince',
  'Product F',
  300.00,
  FALSE,
  TRUE
),
(
  NULL,
  'Ethan Hunt',
  'Product G',
  0.00, -- This will not cause an error
  TRUE,
  FALSE
),
(
  '2023-01-20',
  'Felicity Smoak',
  'Product H',
  520.00, 
  FALSE,
  TRUE
);