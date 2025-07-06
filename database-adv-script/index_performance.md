# Index Performance Optimization

Action 1: Identify High-Usage Columns
Based on earlier queries, these columns are frequently used in WHERE, JOIN, and ORDER BY clauses:

Table    Column    Usage Context
User    user_id    JOINs, filters
Booking    user_id    JOINs, WHERE, GROUP BY
Booking    property_id    JOINs, filters
Property    property_id    JOINs, filters, ORDER BY

Action 2: SQL CREATE INDEX Commands
Save the following code into a file named: database_index.sql

sql
Copy
Edit
-- Index on user_id in User table
CREATE INDEX idx_user_user_id ON User(user_id);

-- Index on user_id in Booking table
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on property_id in Booking table
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on property_id in Property table
CREATE INDEX idx_property_property_id ON Property(property_id);

Action 3: Measure Query Performance with EXPLAIN
how to measure performance before and after using EXPLAIN or EXPLAIN ANALYZE:

Example: Analyze performance of total bookings per user query
sql
Copy
Edit
EXPLAIN ANALYZE
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
