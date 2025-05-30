-- 1)
-- SELECT booking_date, amount_tipped, SUM(amount_tipped) OVER (PARTITION BY booking_date) FROM bookings;

-- 2)
-- SELECT booking_date, amount_tipped, SUM(amount_tipped) OVER (PARTITION BY booking_date) FROM bookings;
-- This query calculates the total amount tipped for each booking date using a window function. The SUM() function is used as a window function with the OVER() clause, which allows us to perform calculations across a set of rows related to the current row without collapsing the result set into a single row per group. The PARTITION BY clause specifies that the calculation should be done for each unique booking_date.

-- 3)
SELECT booking_date, amount_tipped, RANK() 
OVER (PARTITION BY booking_date ORDER BY amount_tipped DESC)
FROM bookings;