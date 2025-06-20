
-- Use the telecom_provider database
USE telecom_provider;

-- Insert data into Customers
INSERT INTO Customers (first_name, last_name, address, phone_number, email, date_joined)
VALUES 
('John', 'Doe', '123 Main St, City', '555-0100', 'john.doe@example.com', '2024-01-01'),
('Jane', 'Smith', '456 Oak St, City', '555-0101', 'jane.smith@example.com', '2024-02-15'),
('Michael', 'Johnson', '789 Pine St, City', '555-0102', 'michael.johnson@example.com', '2024-03-20'),
('Emily', 'Davis', '101 Maple St, City', '555-0103', 'emily.davis@example.com', '2024-04-10'),
('Daniel', 'Miller', '102 Birch St, City', '555-0104', 'daniel.miller@example.com', '2024-05-05'),
('Sarah', 'Wilson', '103 Cedar St, City', '555-0105', 'sarah.wilson@example.com', '2024-06-12'),
('James', 'Moore', '104 Elm St, City', '555-0106', 'james.moore@example.com', '2024-07-01'),
('Anna', 'Taylor', '105 Willow St, City', '555-0107', 'anna.taylor@example.com', '2024-08-15'),
('David', 'Anderson', '106 Pine St, City', '555-0108', 'david.anderson@example.com', '2024-09-25'),
('Sophia', 'Thomas', '107 Birch St, City', '555-0109', 'sophia.thomas@example.com', '2024-10-05'),
('Matthew', 'Jackson', '108 Maple St, City', '555-0110', 'matthew.jackson@example.com', '2024-11-10'),
('Olivia', 'White', '109 Cedar St, City', '555-0111', 'olivia.white@example.com', '2024-12-01'),
('Lucas', 'Harris', '110 Elm St, City', '555-0112', 'lucas.harris@example.com', '2025-01-20'),
('Charlotte', 'Martin', '111 Willow St, City', '555-0113', 'charlotte.martin@example.com', '2025-02-10');

-- Insert data into ServicePlans
INSERT INTO ServicePlans (plan_name, description, price, data_limit, voice_minutes, sms_limit) 
VALUES 
    ('Starter Plan', '500MB, 100 mins, 50 SMS', 9.99, 500, 100, 50),
    ('Standard Plan', '2GB, 300 mins, 200 SMS', 19.99, 2000, 300, 200),
    ('Unlimited Plan', 'Unlimited everything', 39.99, NULL, NULL, NULL),
    ('Family Plan', '5GB shared, 500 mins, 400 SMS', 49.99, 5000, 500, 400);

-- Insert data into UsageDetails
INSERT INTO UsageDetails (customer_id, plan_id, usage_type, usage_value, usage_date)
VALUES 
    (1, 1, 'Call', 45, '2024-06-01 10:00:00'),
    (1, 1, 'Data', 300, '2024-06-01 11:00:00'),
    (2, 2, 'Call', 120, '2024-06-02 12:30:00'),
    (3, 3, 'SMS', 150, '2024-06-03 13:00:00'),
    (4, 1, 'Data', 200, '2024-06-04 14:45:00'),
    (5, 2, 'Call', 60, '2024-06-05 09:00:00'),
    (6, 2, 'Data', 1000, '2024-06-06 16:20:00'),
    (7, 4, 'SMS', 250, '2024-06-07 18:00:00'),
    (8, 3, 'Call', 200, '2024-06-08 19:15:00'),
    (9, 4, 'Data', 4000, '2024-06-09 20:00:00'),
    (10, 1, 'SMS', 40, '2024-06-10 21:00:00'),
    (11, 2, 'Call', 180, '2024-06-11 22:00:00'),
    (12, 2, 'Data', 1500, '2024-06-12 23:30:00'),
    (13, 3, 'SMS', 100, '2024-06-13 08:00:00'),
    (14, 3, 'Call', 220, '2024-06-14 09:00:00');

-- Insert data into Bills
INSERT INTO Bills (customer_id, bill_amount, bill_date, due_date, payment_status)
VALUES 
    (1, 9.99, '2024-06-01', '2024-06-10', 'Paid'),
    (2, 19.99, '2024-06-02', '2024-06-11', 'Pending'),
    (3, 39.99, '2024-06-03', '2024-06-12', 'Paid'),
    (4, 9.99, '2024-06-04', '2024-06-13', 'Paid'),
    (5, 19.99, '2024-06-05', '2024-06-14', 'Overdue'),
    (6, 19.99, '2024-06-06', '2024-06-15', 'Paid'),
    (7, 49.99, '2024-06-07', '2024-06-16', 'Pending'),
    (8, 39.99, '2024-06-08', '2024-06-17', 'Paid'),
    (9, 49.99, '2024-06-09', '2024-06-18', 'Paid'),
    (10, 9.99, '2024-06-10', '2024-06-19', 'Pending'),
    (11, 19.99, '2024-06-11', '2024-06-20', 'Paid'),
    (12, 19.99, '2024-06-12', '2024-06-21', 'Overdue'),
    (13, 39.99, '2024-06-13', '2024-06-22', 'Paid'),
    (14, 39.99, '2024-06-14', '2024-06-23', 'Pending');

-- Insert data into SupportRequests
INSERT INTO SupportRequests (customer_id, request_date, request_type, status, resolution)
VALUES 
    (1, '2024-06-05 10:00:00', 'Slow internet', 'Resolved', 'Upgraded router firmware'),
    (5, '2024-06-06 12:00:00', 'Billing dispute', 'Open', NULL),
    (7, '2024-06-07 15:30:00', 'Dropped calls', 'Closed', 'Adjusted signal parameters'),
    (10, '2024-06-10 09:45:00', 'Can’t send SMS', 'Resolved', 'SIM replaced'),
    (13, '2024-06-13 14:00:00', 'Account locked', 'Resolved', 'Password reset');
