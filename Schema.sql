#USE DATABASE
USE RentalDB;

#LOCATIONS
INSERT INTO Locations (City, State, ZipCode) VALUES
('Bengaluru', 'Karnataka', '560001'),
('Hyderabad', 'Telangana', '500001'),
('Chennai', 'Tamil Nadu', NULL),
('Mumbai', 'Maharashtra', '400001'),
('Delhi', 'Delhi', '110001'),
('Pune', 'Maharashtra', NULL),
('Ahmedabad', 'Gujarat', '380001'),
('Kolkata', 'West Bengal', '700001'),
('Jaipur', 'Rajasthan', '302001'),
('Lucknow', 'Uttar Pradesh', '226001');

#OWNERS
INSERT INTO Owners (Name, Email, Phone) VALUES
('Ravi Kumar', 'ravi@example.com', '9876543210'),
('Anita Sharma', 'anita@example.com', NULL),
('Sunil Mehta', 'sunil@example.com', '9012345678'),
('Geeta Nair', 'geeta@example.com', '9823456789'),
('Manoj Singh', 'manoj@example.com', '9888777666'),
('Neha Patel', 'neha@example.com', '9123456789'),
('Ramesh Iyer', 'ramesh@example.com', '9988776655'),
('Alok Yadav', 'alok@example.com', NULL),
('Sneha Rao', 'sneha@example.com', '9876543201'),
('Rajiv Kapoor', 'rajiv@example.com', '9090909090');

#PROPERTIES
INSERT INTO Properties (OwnerID, LocationID, Title, Description, RentAmount, AvailableFrom) VALUES
(1, 1, '2BHK MG Road', 'Nice view.', 15000.00, '2025-07-01'),
(2, 2, '1BHK HiTech City', 'Professional setup.', NULL, '2025-07-10'),
(3, 3, 'Studio Apartment', NULL, 8000.00, NULL),
(4, 4, '3BHK Marine Drive', 'Sea-facing flat.', 30000.00, '2025-08-01'),
(5, 5, '1RK Delhi', 'Affordable unit.', 9000.00, '2025-07-20'),
(6, 6, 'Flat in Pune', NULL, 12000.00, '2025-07-15'),
(7, 7, 'Penthouse Ahmedabad', 'Luxury living.', 45000.00, '2025-09-01'),
(8, 8, '2BHK Kolkata', NULL, NULL, NULL),
(9, 9, '1BHK Jaipur', 'Near metro.', 8500.00, '2025-07-12'),
(10, 10, 'Flat Lucknow', NULL, 10000.00, '2025-07-22');

#RENTERS
INSERT INTO Renters (Name, Email, Phone) VALUES
('John Doe', 'john@example.com', '9999988888'),
('Priya Mehta', 'priya@example.com', NULL),
('Karan Gill', 'karan@example.com', '9888811111'),
('Sita Devi', 'sita@example.com', '9777711111'),
('Aditya Joshi', 'aditya@example.com', NULL),
('Snehal Wagh', 'snehal@example.com', '9000001111'),
('Varun Gupta', 'varun@example.com', '9555566666'),
('Ankita Rao', 'ankita@example.com', '9666677777'),
('Rohan Shah', 'rohan@example.com', NULL),
('Divya Nair', 'divya@example.com', '9111122222');

#BOOKINGS
INSERT INTO Bookings (PropertyID, RenterID, BookingDate, StartDate, EndDate) VALUES
(1, 1, '2025-06-20', '2025-07-01', '2025-12-31'),
(2, 2, '2025-06-21', '2025-07-10', NULL),
(3, 3, '2025-06-22', '2025-08-01', '2026-01-31'),
(4, 4, '2025-06-23', '2025-08-05', '2026-02-28'),
(5, 5, '2025-06-24', '2025-07-20', NULL),
(6, 6, '2025-06-25', '2025-07-15', '2025-10-15'),
(7, 7, '2025-06-26', '2025-09-01', NULL),
(8, 8, '2025-06-27', '2025-07-18', '2025-11-30'),
(9, 9, '2025-06-28', '2025-07-12', NULL),
(10, 10, '2025-06-29', '2025-07-22', '2025-09-30');

#PAYMENTS
INSERT INTO Payments (BookingID, PaymentDate, AmountPaid, PaymentMethod) VALUES
(1, '2025-06-22', 15000.00, 'UPI'),
(2, '2025-06-23', NULL, 'Cash'),
(3, '2025-06-24', 8000.00, 'Card'),
(4, '2025-06-25', 30000.00, 'NEFT'),
(5, '2025-06-26', 9000.00, NULL),
(6, '2025-06-27', NULL, 'UPI'),
(7, '2025-06-28', 45000.00, 'Cheque'),
(8, '2025-06-29', 10000.00, 'UPI'),
(9, '2025-06-30', NULL, NULL),
(10, '2025-07-01', 10000.00, 'Cash');

#UPDATE STATEMENTS

#Fill NULL rent for property
UPDATE Properties
SET RentAmount = 13000.00
WHERE PropertyID = 2;

#Update renter's phone number
UPDATE Renters
SET Phone = '9888877777'
WHERE RenterID = 2;

#Fill missing end date in booking
UPDATE Bookings
SET EndDate = '2026-03-31'
WHERE BookingID = 5;

#Update NULL payment amounts
UPDATE Payments
SET AmountPaid = 12000.00
WHERE AmountPaid IS NULL;

#DELETE STATEMENTS

#Delete properties with NULL AvailableFrom
DELETE FROM Properties
WHERE AvailableFrom IS NULL;

#Delete bookings where EndDate is still NULL
DELETE FROM Bookings
WHERE EndDate IS NULL;
