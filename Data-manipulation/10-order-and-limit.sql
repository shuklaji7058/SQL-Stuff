-- SELECT * FROM sales
-- ORDER BY volume DESC
-- LIMIT 4;

-- SELECT * FROM sales
-- ORDER BY volume 
-- LIMIT 4;

-- SELECT * FROM sales
-- WHERE is_disputed IS TRUE
-- ORDER BY volume DESC
-- LIMIT 4;

-- SELECT * FROM sales
-- WHERE is_disputed IS TRUE
-- AND date_fulfilled IS NOT NULL
-- ORDER BY volume DESC
-- LIMIT 4;

SELECT * FROM sales
ORDER BY volume DESC
LIMIT 4
OFFSET 4;