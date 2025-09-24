SELECT W1.id 
FROM Weather AS W1
INNER JOIN Weather AS W2 
WHERE DATEDIFF(W1.recordDate,W2.recordDate)=1 AND W1.temperature > W2.temperature;
--Date diff function is used to find the difference between two dates.
