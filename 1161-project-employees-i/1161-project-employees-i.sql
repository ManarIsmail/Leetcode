SELECT project_id , ROUND(SUM(experience_years)*1.0/COUNT(project_id) , 2 )average_years
FROM Project P
INNER JOIN Employee E ON E.employee_id = P.employee_id 
GROUP BY project_id;