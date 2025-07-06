-- seed.sql: Populate the Airbnb Clone Database with Sample Data

-- Insert Users
INSERT INTO Users (name, email, password_hash, role) VALUES
('Alice Johnson', 'alice@example.com', 'hashed_pwd1', 'host'),
('Bob Smith', 'bob@example.com', 'hashed_pwd2', 'guest'),
('Charlie Lee', 'charlie@example.com', 'hashed_pwd3', 'host');

-- Insert Properties
INSERT INTO Properties (user_id, title, description, location, price_per_night) VALUES
(1, 'Seaside Villa', 'A beautiful villa by the sea', 'Lagos, Nigeria', 300.00),
(3, 'Mountain Cabin', 'Cozy cabin in the hills', 'Jos, Nigeria', 150.00);

-- Insert Bookings
INSERT INTO Bookings (user_id, property_id, start_date, end_date, total_price) VALUES
(2, 1, '2025-07-10', '2025-07-15', 1500.00),
(2, 2, '2025-08-01', '2025-08-05', 600.00);

-- Insert Payments
INSERT INTO Payments (booking_id, user_id, amount, status) VALUES
(1, 2, 1500.00, 'completed'),
(2, 2, 600.00, 'pending');

-- Insert Reviews
INSERT INTO Reviews (user_id, property_id, rating, comment) VALUES
(2, 1, 5, 'Amazing stay! Would book again.'),
(2, 2, 4, 'Nice cabin, but had some power issues.');
