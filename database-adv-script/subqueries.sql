1. Non-Correlated Subquery
Objective: Find all properties where the average rating is greater than 4.0

sql
Copy
Edit
SELECT 
    p.property_id,
    p.title,
    p.city
FROM 
    Property p
WHERE 
    p.property_id IN (
        SELECT 
            r.property_id
        FROM 
            Review r
        GROUP BY 
            r.property_id
        HAVING 
            AVG(r.rating) > 4.0
    );
Explanation:

The inner query calculates the average rating per property.

Only properties with an average rating greater than 4.0 are returned by the outer query.

2. Correlated Subquery
Objective: Find users who have made more than 3 bookings

sql
Copy
Edit
SELECT 
    u.user_id,
    u.name,
    u.email
FROM 
    User u
WHERE 
    (
        SELECT COUNT(*) 
        FROM Booking b 
        WHERE b.user_id = u.user_id
    ) > 3;
Explanation:

The subquery is correlated because it refers to the outer query (u.user_id).

It counts how many bookings each user has made.

Only users with more than 3 bookings are returned.

