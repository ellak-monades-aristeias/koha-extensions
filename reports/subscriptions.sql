SELECT DISTINCT biblio.title, subscription.startdate, 
    subscription.enddate, subscription_frequencies.description
FROM subscription
JOIN subscription_frequencies 
    ON subscription.periodicity = subscription_frequencies.id
JOIN biblio USING(biblionumber)
JOIN items USING(biblionumber)
WHERE items.homebranch = <<Pick your branch|branches>> 
AND subscription.startdate >= <<Pick start subscription date|date>>
AND subscription.enddate <= << Pick end subscription date|date>>
AND subscription.closed = IF(<<Closed status (Y/N)>> = 'Y',  1,  0)
