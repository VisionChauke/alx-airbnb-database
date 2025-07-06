-- File: database-adv-script/perfomance.sql


    SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    
    u.user_id,
    u.name,
    u.email,
    
    p.property_id,
    p.title,
    p.city,
    p.price_per_night,
    
    pay.payment_id,
    pay.amount,
    pay.status,
    pay.payment_method

FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
JOIN 
    Payment pay ON b.booking_id = pay.booking_id;

-- Refactored Query for Performance

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