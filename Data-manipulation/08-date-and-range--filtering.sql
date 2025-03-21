-- SELECT * FROM sales
-- WHERE product_name BETWEEN 'Product B' AND  'Product G';

-- SELECT * FROM sales
-- WHERE volume BETWEEN 100 AND 300;

SELECT * FROM sales
WHERE is_disputed <> TRUE;