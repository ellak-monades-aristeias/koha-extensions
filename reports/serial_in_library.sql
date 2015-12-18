SELECT DISTINCT biblio.title, serial.serialseq
FROM items
JOIN serial USING(biblionumber)
JOIN biblio USING(biblionumber)
JOIN subscription USING(biblionumber)
WHERE items.homebranch = <<Pick your branch|branches>> 
AND subscription.firstacquidate >= <<Pick first issue received date from|date>>
AND subscription.firstacquidate <= IF('' = @fd := <<Pick first issue received date to|date>>, DATE(NOW()), @fd)
