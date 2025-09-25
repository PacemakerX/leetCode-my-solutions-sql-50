SELECT Students.student_id,Students.student_name,Subjects.subject_name,COUNT(Examinations.subject_name) AS attended_exams
FROM Students
CROSS JOIN Subjects
LEFT JOIN Examinations
ON Students.student_id=Examinations.student_id AND Subjects.subject_name =Examinations.subject_name
GROUP BY Students.student_id, Students.student_name, Subjects.subject_name
ORDER BY Students.student_id ASC,Subjects.subject_name ASC;

-- We need to count only those values, in which the student has given the exam for, that's why we count Examinations.subject_name, it ignores the NULL value
-- we need to group by Students.student_id to avoid counting more in case two students have differnet student_id but same name
