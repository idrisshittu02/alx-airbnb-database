-- Index on Users.email for quick lookup
CREATE INDEX idx_users_email ON Users(email);

-- Index on Bookings.user_id for JOINs and filtering
CREATE INDEX idx_bookings_user_id ON Bookings(user_id);

-- Index on Bookings.property_id for JOINs and analytics
CREATE INDEX idx_bookings_property_id ON Bookings(property_id);

-- Index on Properties.location for filtering
CREATE INDEX idx_properties_location ON Properties(location);

-- Example query to test performance
EXPLAIN ANALYZE
SELECT u.name, b.booking_id, p.title
FROM Users u
JOIN Bookings b ON u.user_id = b.user_id
JOIN Properties p ON b.property_id = p.property_id
WHERE p.location = 'Lagos'
ORDER BY u.name;
