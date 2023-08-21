SELECT W2.id
FROM Weather W2
INNER JOIN Weather W1 ON W2.recordDate = DATEADD(DAY, 1, W1.recordDate)
WHERE W2.temperature > W1.temperature;