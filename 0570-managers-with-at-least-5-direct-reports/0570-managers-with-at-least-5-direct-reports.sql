SELECT e.name FROM Employee e
WHERE (SELECT COUNT(managerId)
FROM Employee
WHERE managerId = e.id) >= 5;