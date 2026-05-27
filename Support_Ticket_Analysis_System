CREATE DATABASE support_ticket_system;
USE support_ticket_system;

CREATE TABLE support_tickets (
    ticket_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    issue_type VARCHAR(100),
    priority_level VARCHAR(20),
    status VARCHAR(20),
    created_date DATE
);

INSERT INTO support_tickets VALUES
(1, 'Ravi', 'Login Issue', 'High', 'Open', '2025-01-10'),
(2, 'Priya', 'Payment Failure', 'Medium', 'Closed', '2025-01-12'),
(3, 'Ajay', 'Server Downtime', 'High', 'Open', '2025-01-13'),
(4, 'Keerthi', 'Password Reset', 'Low', 'Resolved', '2025-01-15'),
(5, 'Manoj', 'Application Crash', 'High', 'In Progress', '2025-01-18');

SELECT *
FROM support_tickets;

SELECT *
FROM support_tickets
WHERE priority_level = 'High'
AND status = 'Open';

SELECT status, COUNT(*) AS total_tickets
FROM support_tickets
GROUP BY status;

SELECT priority_level, COUNT(*) AS total
FROM support_tickets
GROUP BY priority_level;

SELECT *
FROM support_tickets
ORDER BY created_date DESC;

SELECT *
FROM support_tickets
WHERE status = 'Closed';
