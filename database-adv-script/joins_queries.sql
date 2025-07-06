1. INNER JOIN – Get all bookings and the respective users who made them
sql
Copy
Edit
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.user_id,
    u.name,
    u.email
FROM 
    Booking b
INNER JOIN 
    User u ON b.user_id = u.user_id;
Explanation: This returns only the bookings where there’s a matching user. If a booking isn’t linked to a user, it won’t show up.

2. LEFT JOIN – Get all properties and their reviews, including properties that have no reviews
sql
Copy
Edit
SELECT 
    p.property_id,
    p.title,
    p.city,
    r.review_id,
    r.rating,
    r.comment
FROM 
    Property p
LEFT JOIN 
    Review r ON p.property_id = r.property_id;
Explanation: This returns all properties, even those without a review. If there is no review, the review fields will be NULL.

3. FULL OUTER JOIN – Get all users and all bookings, even if there's no match between them
⚠️ Not all RDBMS support FULL OUTER JOIN (e.g., MySQL doesn't). PostgreSQL, SQL Server, and Oracle do.

sql
Copy
Edit
SELECT 
    u.user_id,
    u.name,
    b.booking_id,
    b.start_date,
    b.end_date
FROM 
    User u
FULL OUTER JOIN 
    Booking b ON u.user_id = b.user_id;
Explanation: This will return:

Users with and without bookings

Bookings with and without linked users