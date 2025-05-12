SELECT booking_date, SUM(num_guests)  FROM bookings
GROUP BY booking_date; -- This query groups the results by booking_date and calculates the total number of guests for each date.
-- agar hame ye dono select statement ko sath me chaiye to group by use krna padega

