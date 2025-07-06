-- Initial complex query to retrieve all booking info
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.name AS user_name,
    u.email,
    p.property_id,
    p.title AS property_title,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.status
FROM 
    Bookings b
JOIN 
    Users u ON b.user_id = u.user_id
JOIN 
    Properties p ON b.property_id = p.property_id
JOIN 
    Payments pay ON b.booking_id = pay.booking_id;
EXPLAIN ANALYZE
-- (Paste the query here)
-- Optimized query using only needed fields and assuming indexes exist
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    p.title AS property_title,
    pay.amount
FROM 
    Bookings b
JOIN 
    Users u ON b.user_id = u.user_id
JOIN 
    Properties p ON b.property_id = p.property_id
LEFT JOIN 
    Payments pay ON b.booking_id = pay.booking_id
ORDER BY 
    b.booking_id;
