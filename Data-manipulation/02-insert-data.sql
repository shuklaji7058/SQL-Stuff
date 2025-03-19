INSERT INTO sales(
  date_fulfilled,
  customer_name,
  product_name,
  volume,
  is_recurring,
  is_disputed
) VALUES (
  '2023-01-02',
  'John Doe',
  'Product A',
  100.00,
  TRUE,
  FALSE
),
(
  NULL,
  'Jane Smith',
  'Product B',
  200.50,
  FALSE,
  TRUE
),
(
  '2023-01-05',
  'Alice Johnson',
  'Product C',
  50.00, -- This will cause an error due to the CHECK constraint
  TRUE,
  FALSE
)