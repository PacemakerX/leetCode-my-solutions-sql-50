SELECT Project.project_id,ROUND(AVG(Employee.experience_years),2) AS average_years
FROM Project
INNER JOIN Employee
ON Project.employee_id = Employee.employee_id
GROUP BY Project.project_id;
-- Without GROUP  BY , the sql dosne't know which type of data to accumulate , when we add GROUP BY project_id we tell sql
-- Partition the data by each project_id, and for each partition, calculate the average experience.
