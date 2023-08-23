SELECT r.contest_id, ROUND((100.00*COUNT(DISTINCT(r.user_id))/(SELECT COUNT(user_id) FROM Users)), 2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC