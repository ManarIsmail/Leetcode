SELECT a1.machine_id, ROUND(AVG(ABS(a1.timestamp - a2.timestamp)),3) AS processing_time
FROM (SELECT * FROM Activity
WHERE activity_type = 'start') a1,
(SELECT * FROM Activity
WHERE activity_type = 'end') a2
WHERE a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id
GROUP BY a1.machine_id;