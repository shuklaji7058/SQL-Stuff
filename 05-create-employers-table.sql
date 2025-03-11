CREATE TABLE employers(
  company_name VARCHAR(250),
  company_address VARCHAR(300),
/*yearly_revenue FLOAT(5,2) -- Approximation, Allowed: 123.22, 12.1 , not Allowed: 123.222 */
  yearly_revenue NUMERIC(5,2), /*Exact value, Allowed: 123.12 ,not Allowed:123123*/
  is_hiring BOOLEAN
);