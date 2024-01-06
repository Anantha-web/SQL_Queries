SELECT st.student_id, student_name, su.subject_name, COALESCE(attended_exams, 0) as attended_exams
FROM Students st CROSS JOIN Subjects su
LEFT JOIN (SELECT student_id, subject_name, COUNT(subject_name) as attended_exams
FROM Examinations GROUP BY student_id, subject_name) p
ON st.student_id=p.student_id AND su.subject_name=p.subject_name
ORDER BY st.student_id, su.subject_name
