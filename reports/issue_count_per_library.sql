SELECT COUNT(*) AS Checkouts   
FROM issues c
WHERE c.branchcode = <<Pick your branch|branches>>
AND c.issuedate >= <<Pick date from|date>>
AND c.issuedate <=  IF('' = @id := <<Pick date to|date>>, DATE(NOW()), @id)
