SELECT DISTINCT biblio.title,biblio.author, biblioitems.publishercode, 
    items.itemcallnumber, items.barcode  
FROM items 
LEFT JOIN biblioitems
    ON (items.biblioitemnumber=biblioitems.biblioitemnumber) 
LEFT JOIN biblio
    ON (biblioitems.biblionumber=biblio.biblionumber) 
WHERE items.homebranch = <<Pick your branch|branches>>
AND items.ccode= <<Collection|CCODE>> 
AND biblio.datecreated >= <<Pick creation date date from|date>>
AND biblio.datecreated <= IF('' = @dc := <<Pick creation date date to|date>>, DATE(NOW()), @dc)
