1. Aggregation with COUNT & GROUP BY
Objective: Find the total number of bookings made by each user

sql
Copy
Edit
SELECT 
    u.user_id,
    u.name,
    COUNT(b.booking_id) AS total_bookings
FROM 
    User u
JOIN 
    Booking b ON u.user_id = b.user_id
GROUP BY 
    u.user_id, u.name;
Explanation:

Groups bookings by each user.

Uses COUNT() to calculate how many bookings each user made.

2. Window Function with RANK()
Objective: Rank properties based on the total number of bookings they received

sql
Copy
Edit
SELECT 
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT 
        p.property_id,
        COUNT(b.booking_id) AS total_bookings
    FROM 
        Property p
    LEFT JOIN 
        Booking b ON p.property_id = b.property_id
    GROUP BY 
        p.property_id
) AS property_booking_counts;
Explanation:

The inner query counts bookings for each property.

The outer query applies the RANK() window function to rank properties by total bookings in descending order.