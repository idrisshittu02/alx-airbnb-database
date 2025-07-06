-- Properties with an average rating greater than 4.0
SELECT 
    p.property_id,
    p.title,
    p.location
FROM 
    Properties p
WHERE 
    p.property_id IN (
        SELECT 
            r.property_id
        FROM 
            Reviews r
        GROUP BY 
            r.property_id
        HAVING 
            AVG(r.rating) > 4.0
    )
ORDER BY 
    p.property_id;

-- Users who have made more than 3 bookings
SELECT 
    u.user_id,
    u.name,
    u.email
FROM 
    Users u
WHERE 
    (
        SELECT 
            COUNT(*) 
        FROM 
            Bookings b 
        WHERE 
            b.user_id = u.user_id
    ) > 3
ORDER BY 
    u.user_id;
