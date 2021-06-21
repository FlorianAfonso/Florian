1 - Liste des contacts français :

SELECT CompanyName AS 'Société', ContactName AS 'Contact', ContactTitle AS 'Fonction', Phone AS 'Téléphone'
FROM northwind.customers
WHERE Country = 'France'

2 -Produits vendus par le fournisseur «Exotic Liquids» :

SELECT ProductName AS 'Produit' , UnitPrice AS 'Prix'
FROM northwind.products
WHERE SupplierID = 1

3 - Nombre de produits vendus par les fournisseurs Francais dans lordre décroissant :

SELECT CompanyName AS 'Fournisseur' , COUNT(ProductName) AS 'Nbre produits' 
FROM northwind.suppliers JOIN northwind.products ON suppliers.SupplierID=products.SupplierID
WHERE Country = 'France'
GROUP BY CompanyName 
ORDER BY COUNT(ProductName) DESC

4 - Liste des clients Français ayant plus de 10 commandes :

SELECT CompanyName AS 'Client' , COUNT(OrderID) AS 'Nbre commandes'
FROM northwind.customers JOIN northwind.orders ON customers.CustomerID=orders.CustomerID
WHERE Country = 'France'
HAVING COUNT(OrderID) > 10 
GROUP BY CompanyName

5 - Liste des clients ayant un chiffre daffaires > 30.000 :

SELECT CompanyName AS 'Client', SUM(UnitPrice * Quantity) AS 'CA'
FROM northwind.customers
JOIN orders ON customers.CustomerID = orders.CustomerID 
JOIN order_details ON orders.OrderID = order_details.OrderID
GROUP BY CompanyName
HAVING SUM(UnitPrice * Quantity) > 30000
ORDER BY SUM(UnitPrice * Quantity) DESC

6 - Liste des pays dont les clients ont passé commande de produit fournis par «Exotic Liquids»:



7 - Montant des ventes de 1997 : 

SELECT SUM(UnitPrice*Quantity) AS 'Montant Ventes 97' 
FROM northwind.order_details
JOIN northwind.orders ON order_details.OrderID = orders.OrderID
WHERE OrderDate BETWEEN ('1997-01-01 00:00:00') AND ('1997-12-31 00:00:00')

8 - Montant des ventes de 1997 mois par mois : 

SELECT MONTH(OrderDate) AS 'Mois 97', SUM(UnitPrice*Quantity) AS 'Montant Ventes'
FROM northwind.order_details
JOIN northwind.orders ON orders.OrderID = order_details.OrderID
WHERE YEAR(OrderDate) = '1997'
GROUP BY MONTH(OrderDate)
ORDER BY MONTH(OrderDate) ASC

9 - Depuis quelle date le client «Du monde entier» n’a plus commandé ?

SELECT MAX(OrderDate) AS 'Date de dernière commande'
FROM northwind.orders
WHERE CustomerID = 'DUMON'

10 - Quel est le délai moyen de livraison en jours ? 

SELECT ROUND(AVG(DATEDIFF (ShippedDate, OrderDate))) FROM northwind.orders