SELECT uniemp.unique_id , emp.name 
FROM Employees emp LEFT JOIN EmployeeUNI uniemp ON emp.id = uniemp.id;