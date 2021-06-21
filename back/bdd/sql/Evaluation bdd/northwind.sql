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

6 - Liste des pays dont les clients ont passé commande de produit fournis par «Exotic Liquids»:

SELECT ShipCountry AS 'Pays' 
FROM northwind.orders JOIN northwind.customers ON orders.OrderID=customers.CustomerID
