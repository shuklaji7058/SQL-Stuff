-- SELECT booking_date, SUM(num_guests)  FROM bookings
-- GROUP BY booking_date; -- This query groups the results by booking_date and calculates the total number of guests for each date.
-- agar hame ye dono select statement ko sath me chaiye to group by use krna padega

SELECT p.name,b.booking_date, SUM(num_guests),ROUND(AVG(amount_tipped),2) FROM payment_methods AS p
INNER JOIN bookings AS b ON p.id=b.payment_id
GROUP BY p.name, b.booking_date;