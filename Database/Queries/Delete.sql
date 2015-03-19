-- Must Delete Child Records First! --
DELETE FROM CustomerAccounts
WHERE CustomerId='3';
-- Must delete child records first! --

-- Then delete the customer record --
DELETE FROM Customers
WHERE FirstName='Spud' 
AND CustomerId='3';
-- Then delete the customer record --