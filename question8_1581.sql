SELECT Visits.customer_id , COUNT(*) AS count_no_trans
FROM Visits
LEft JOIN Transactions
ON Visits.visit_id = Transactions.visit_id
WHERE Transactions.visit_id IS NULL
GROUP BY Visits.customer_id

-- We have to group by Visits.customer_id to have the count for each customer_id
