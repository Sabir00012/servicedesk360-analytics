-- ServiceDesk360 — IT Support SLA Analysis
SELECT category, COUNT(*) AS tickets, ROUND(AVG(resolution_hours),1) AS avg_hours, ROUND(AVG(satisfaction_1to5),2) AS avg_sat
FROM tickets WHERE status='Resolved' GROUP BY 1 ORDER BY avg_hours DESC;
SELECT priority, COUNT(*), ROUND(AVG(resolution_hours),1) AS avg_hours FROM tickets GROUP BY 1 ORDER BY avg_hours;
SELECT agent, COUNT(*) AS tickets, ROUND(AVG(resolution_hours),1) AS avg_hours, ROUND(AVG(satisfaction_1to5),2) AS csat FROM tickets WHERE status='Resolved' GROUP BY 1 ORDER BY csat DESC;
