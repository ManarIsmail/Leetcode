SELECT activity_date day  , COUNT(DISTINCT user_id) active_users
FROM Activity
WHERE activity_date > '2019-06-27' AND activity_date <= '2019-07-27'
GROUP BY activity_date;