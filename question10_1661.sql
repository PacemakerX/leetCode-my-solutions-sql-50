SELECT M1.machine_id , ROUND(AVG(M2.timestamp-M1.timestamp),3) as processing_time
FROM Activity AS M1
INNER JOIN Activity AS M2
ON M1.machine_id=M2.machine_id AND M1.process_id=M2.process_id
WHERE M1.activity_type='start' AND M2.activity_type='end'
GROUP BY M1.machine_id;
