SELECT Employee.name, Bonus.bonus
FROM Employee
LEFT JOIN Bonus
on Employee.empId = Bonus.empId
WHERE Bonus.bonus<1000 OR Bonus.bonus IS NULL;

-- We don't need ORDER BY here
