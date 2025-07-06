
# Optimization Report

Performance Analysis
-- Analyze the performance of the original complex query
-- This query retrieves bookings along with user, property, and payment details.
sql
Copy
Edit
EXPLAIN ANALYZE
SELECT ...
Typical performance issues may include:

Full table scans if indexes aren’t present

Over-joining if all fields aren’t needed

Fetching unnecessary columns

Refactored Query for Better Performance
Improvements:
Only select required columns

Use indexed columns (user_id, property_id, booking_id)

Minimize data returned (avoid SELECT *)

sql
Copy
Edit
-- Refactored query with better performance

SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    p.title AS property_title,
    pay.amount AS payment_amount,
    pay.status

FROM
    Booking b
JOIN
    User u ON b.user_id = u.user_id
JOIN
    Property p ON b.property_id = p.property_id
JOIN
    Payment pay ON b.booking_id = pay.booking_id;
