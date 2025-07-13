CREATE TABLE User (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100),
    email VARCHAR(255),
    created_at DATETIME
);

CREATE TABLE Property (
    id INT PRIMARY KEY AUTO_INCREMENT,
    owner_id INT,
    title VARCHAR(255),
    location VARCHAR(255),
    price_per_night DECIMAL(10,2),
    created_at DATETIME,
    FOREIGN KEY (owner_id) REFERENCES User(id)
);

CREATE TABLE Booking (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    property_id INT,
    check_in DATE,
    check_out DATE,
    status VARCHAR(50),
    created_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (property_id) REFERENCES Property(id)
);
-- 1. Get all bookings for a user
SELECT * FROM Booking WHERE user_id = 5;

-- 2. Search properties in a specific location ordered by price
SELECT * FROM Property WHERE location = 'Cape Town' ORDER BY price_per_night;

-- 3. Join user and bookings
SELECT u.username, b.status, b.check_in
FROM User u
JOIN Booking b ON u.id = b.user_id
WHERE b.status = 'confirmed';

-- 4. Find all properties owned by a user
SELECT * FROM Property WHERE owner_id = 5;
-- For Booking table
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_booking_created_at ON Booking(created_at);

-- For Property table
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(price_per_night);
CREATE INDEX idx_property_owner_id ON Property(owner_id);

-- For User table
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_created_at ON User(created_at);
EXPLAIN SELECT * FROM Booking WHERE user_id = 5;
EXPLAIN SELECT * FROM Property WHERE location = 'Cape Town' ORDER BY price_per_night;
EXPLAIN SELECT u.username, b.status FROM User u JOIN Booking b ON u.id = b.user_id WHERE b.status = 'confirmed';

