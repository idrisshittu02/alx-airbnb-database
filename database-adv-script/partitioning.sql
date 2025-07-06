-- Drop original table if needed (for testing only)
DROP TABLE IF EXISTS Bookings CASCADE;

-- Create partitioned Bookings table
CREATE TABLE Bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
    created_at TIMESTAMP DEFAULT NOW()
) PARTITION BY RANGE (start_date);

-- Create partitions by year
CREATE TABLE bookings_2023 PARTITION OF Bookings
FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF Bookings
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF Bookings
FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Optional: Add indexes to partitions
CREATE INDEX idx_booking_2023_start ON bookings_2023(start_date);
CREATE INDEX idx_booking_2024_start ON bookings_2024(start_date);
CREATE INDEX idx_booking_2025_start ON bookings_2025(start_date);

-- Analyze partition performance
EXPLAIN ANALYZE
SELECT * FROM Bookings
WHERE start_date BETWEEN '2024-03-01' AND '2024-04-01';
