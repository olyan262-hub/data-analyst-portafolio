-- Total tickets
SELECT COUNT(*) AS total_tickets
FROM tickets;

-- Average response time
SELECT AVG(response_time_hours) AS avg_response_time
FROM tickets;

-- Tickets by category
SELECT category, COUNT(*) AS total_tickets
FROM tickets
GROUP BY category;

-- Average response time by priority
SELECT priority, AVG(response_time_hours) AS avg_response_time
FROM tickets
GROUP BY priority;

-- Tickets by agent
SELECT agent, COUNT(*) AS total_tickets
FROM tickets
GROUP BY agent
ORDER BY total_tickets DESC;

-- Tickets with high delay
SELECT *
FROM tickets
WHERE response_time_hours > 8;
