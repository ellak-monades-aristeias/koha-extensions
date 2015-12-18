SELECT COUNT(DISTINCT biblio.biblionumber) AS TOTAL
FROM biblio 
LEFT JOIN items 
    ON biblio.biblionumber = items.biblionumber 
WHERE items.homebranch = <<Pick your branch|branches>> 
AND biblio.datecreated >= <<Pick creation date from|date>>
AND biblio.datecreated <= <<Pick creation date to|date>>
