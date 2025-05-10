-- SELECT ROUND(SUM(amount_billed),2) FROM bookings
-- WHERE amount_billed > 20;

SELECT MAX(b.num_guests), MIN(booking_date) FROM bookings AS b
INNER JOIN tables AS t ON b.table_id = t.id
WHERE t.num_seats > 3 AND amount_billed > 20
ORDER BY booking_date DESC;