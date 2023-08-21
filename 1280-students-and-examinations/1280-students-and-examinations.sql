SELECT s.student_id, s.student_name, s.subject_name ,
COUNT(e.subject_name) AS attended_exams
FROM Examinations e RIGHT JOIN (SELECT * FROM Students CROSS JOIN Subjects) s 
ON s.student_id=e.student_id 
AND e.subject_name=s.subject_name 
GROUP BY s.student_id, s.student_name,s.subject_name 
ORDER BY s.student_id, s.subject_name;