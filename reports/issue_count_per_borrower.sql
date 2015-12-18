SELECT  p.surname, p.firstname, p.cardnumber, COUNT(p.cardnumber) AS Checkouts
FROM borrowers p 
LEFT JOIN issues c ON (p.borrowernumber=c.borrowernumber) 
WHERE c.branchcode = <<Pick your branch|branches>>
AND c.issuedate >= <<Pick date from|date>>
AND c.issuedate <=  IF('' = @id := <<Pick date to|date>>, DATE(NOW()), @id)
GROUP BY p.cardnumber
ORDER BY p.surname ASC
