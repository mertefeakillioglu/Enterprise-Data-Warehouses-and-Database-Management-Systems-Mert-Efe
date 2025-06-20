
-- 1. List all customers with their active service plan and total usage (calls, SMS, data)
SELECT 
    c.first_name, 
    c.last_name, 
    sp.plan_name, 
    SUM(CASE WHEN u.usage_type = 'Call' THEN u.usage_value ELSE 0 END) AS total_minutes,
    SUM(CASE WHEN u.usage_type = 'SMS' THEN u.usage_value ELSE 0 END) AS total_sms,
    SUM(CASE WHEN u.usage_type = 'Data' THEN u.usage_value ELSE 0 END) AS total_data_mb
FROM Customers c
JOIN UsageDetails u ON c.customer_id = u.customer_id
JOIN ServicePlans sp ON u.plan_id = sp.plan_id
GROUP BY c.customer_id, sp.plan_name;

-- 2. Find top 5 customers by total bill amount
SELECT 
    c.first_name, 
    c.last_name, 
    SUM(b.bill_amount) AS total_spent
FROM Customers c
JOIN Bills b ON c.customer_id = b.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- 3. Show customers who have overdue bills
SELECT 
    c.first_name, 
    c.last_name, 
    b.bill_amount, 
    b.bill_date, 
    b.due_date
FROM Customers c
JOIN Bills b ON c.customer_id = b.customer_id
WHERE b.payment_status = 'Overdue';

-- 4. Find customers who opened a support request but it is still unresolved
SELECT 
    c.first_name, 
    c.last_name, 
    r.request_type, 
    r.status
FROM Customers c
JOIN SupportRequests r ON c.customer_id = r.customer_id
WHERE r.status = 'Open';

-- 5. Get average usage per customer per usage type
SELECT 
    usage_type, 
    AVG(usage_value) AS avg_usage
FROM UsageDetails
GROUP BY usage_type;

-- 6. Find which service plan is most used by customers (based on usage records)
SELECT 
    sp.plan_name, 
    COUNT(u.usage_id) AS usage_count
FROM ServicePlans sp
JOIN UsageDetails u ON sp.plan_id = u.plan_id
GROUP BY sp.plan_id
ORDER BY usage_count DESC;

-- 7. Total revenue from paid bills
SELECT 
    SUM(bill_amount) AS total_revenue
FROM Bills
WHERE payment_status = 'Paid';

-- 8. Get customer usage details for a specific month (e.g. June 2024)
SELECT 
    c.first_name,
    c.last_name,
    u.usage_type,
    SUM(u.usage_value) AS total_usage
FROM Customers c
JOIN UsageDetails u ON c.customer_id = u.customer_id
WHERE u.usage_date BETWEEN '2024-06-01' AND '2024-06-30'
GROUP BY c.customer_id, u.usage_type
ORDER BY c.last_name;
