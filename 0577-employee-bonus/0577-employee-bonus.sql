SELECT name, bonus 
FROM Employee e LEFT JOIN Bonus b ON  b.empId = e.empId
WHERE bonus < 1000 OR bonus IS NULL;