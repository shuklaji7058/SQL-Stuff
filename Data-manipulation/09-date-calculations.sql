-- SELECT * FROM sales
-- WHERE date_fulfilled IS NULL;
-- WHERE date_fulfilled IS NOT NULL;

SELECT * FROM sales
WHERE date_fulfilled - date_created <=2;

-- SELECT * FROM sales
-- WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 1;