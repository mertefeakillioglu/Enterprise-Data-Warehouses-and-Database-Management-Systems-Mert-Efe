
-- Use the telecom_provider database
USE telecom_provider;

-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE,
    date_joined DATE
);

-- Create the ServicePlans table
CREATE TABLE ServicePlans (
    plan_id INT AUTO_INCREMENT PRIMARY KEY,
    plan_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    data_limit INT, -- In MB
    voice_minutes INT, -- In minutes
    sms_limit INT -- Number of SMS
);

-- Create the UsageDetails table
CREATE TABLE UsageDetails (
    usage_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    plan_id INT NOT NULL,
    usage_type ENUM('Call', 'SMS', 'Data') NOT NULL,
    usage_value INT NOT NULL, -- Minutes, SMS count, or MB
    usage_date DATETIME NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (plan_id) REFERENCES ServicePlans(plan_id)
);

-- Create the Bills table
CREATE TABLE Bills (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    bill_amount DECIMAL(10, 2) NOT NULL,
    bill_date DATE NOT NULL,
    due_date DATE NOT NULL,
    payment_status ENUM('Paid', 'Pending', 'Overdue') NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the SupportRequests table
CREATE TABLE SupportRequests (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    request_date DATETIME NOT NULL,
    request_type VARCHAR(255) NOT NULL,
    status ENUM('Open', 'Resolved', 'Closed') NOT NULL,
    resolution VARCHAR(1000),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
