-- INNER JOIN: Bookings with the users who made them
SELECT 
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.name,
    u.email
FROM 
    Bookings b
INNER JOIN 
    Users u ON b.user_id = u.user_id;

-- LEFT JOIN: Properties with their reviews (including properties without reviews)
SELECT 
    p.property_id,
    p.title,
    p.location,
    r.review_id,
    r.rating,
    r.comment
FROM 
    Properties p
LEFT JOIN 
    Reviews r ON p.property_id = r.property_id;

-- FULL OUTER JOIN: All users and all bookings (even if unmatched)
SELECT 
    u.user_id,
    u.name,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM 
    Users u
FULL OUTER JOIN 
    Bookings b ON u.user_id = b.user_id;
