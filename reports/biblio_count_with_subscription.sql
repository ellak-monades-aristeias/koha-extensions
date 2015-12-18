SELECT COUNT(DISTINCT biblio.biblionumber) AS TOTAL
FROM biblio
JOIN subscription USING(biblionumber)
JOIN items USING(biblionumber)
WHERE items.homebranch = <<Pick your branch|branches>> 
AND subscription.startdate >= <<Pick first issue received date from|date>>
AND subscription.startdate <= IF('' = @sd := <<Pick first issue received date to|date>>, DATE(NOW()), @sd)
