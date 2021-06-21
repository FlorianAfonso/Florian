

1 - "Quelles sont les commandes du fournisseur 09120?"
SELECT numfou, numcom FROM entcom 
WHERE numfou = 9120

2 - "Afficher le code des fournisseurs pour lesquels des commandes ont été passées."
SELECT numfou FROM vente 
WHERE delliv > 0 

3 - "Afficher le nombre de commandes fournisseurs passées, et le nombre de fournisseur concernés."
SELECT COUNT() 
FROM papyrus.vente
WHERE delliv > 0

SELECT DISTINCT numfou 
FROM papyrus.vente
WHERE delliv > 0

4 - "Editer les produits ayant un stock inférieur ou égal au stock d'alerte et dont la quantité annuelle est inférieur est inférieure à1000 (informations à fournir : n° produit, libelléproduit, stock, stockactuel d'alerte, quantitéannuelle)"
SELECT stkphy, codart, libart, stkale, qteann 
FROM papyrus.produit
WHERE stkphy <= stkale AND qteann < 1000

5 - "Quels sont les fournisseurs situés dans les départements 75 78 92 77 ? L’affichage (département, nom fournisseur) sera effectué par département décroissant, puis par ordre alphabétique"
SELECT nomfou, posfou 
FROM papyrus.fournis
WHERE posfou IN (75014, 78250, 92200)
ORDER BY posfou DESC, nomfou ASC

6 - "Quelles sont les commandes passées au mois de mars et avril?"
SELECT derliv FROM papyrus2.ligcom 
WHERE derliv BETWEEN '2007-03-01' AND '2007-04-30'

7 - "Quelles sont les commandes du jourqui ont des observations particulières ?(Affichage numéro de commande, date de commande)"
SELECT numcom, datcom
FROM papyrus.entcom
WHERE obscom NOT LIKE ""

8 - "Listerle total de chaque commande par total décroissant (Affichage numéro de commande et total)"
SELECT qtecde, priuni, qtecde * priuni 
FROM papyrus.ligcom
ORDER BY qtecde * priuni DESC

9 - "Lister les commandesdont le total est supérieur à 10000€; on exclura dans le calcul du total les articles commandés en quantité supérieure ou égale à 1000.(Affichage numéro de commande et total)"
SELECT numcom, qtecde * priuni
FROM papyrus.ligcom
WHERE qtecde < 1000 AND qtecde * priuni > 10000
ORDER BY qtecde * priuni ASC

10 - "Lister les commandes par nom fournisseur (Afficher le nom du fournisseur, le numéro de commande et la date)"
SELECT nomfou, numcom, derliv
FROM papyrus.fournis, papyrus.ligcom
ORDER BY nomfou ASC

11 - "Sortir les produits des commandes ayant le mot 'urgent' en observation?(Afficher le numéro de commande, le nom du fournisseur, le libellé du produit et le sous total= quantité commandée * Prix unitaire)"
SELECT obscom, numcom, numfou, libart, qtecde*priuni FROM papyrus.entcom
JOIN papyrus.ligcom
ON numcom = numcom
JOIN papyrus.fournis
ON numfou = numfou
JOIN papyrus.produit
ON codart = codart
WHERE obscom="Commande urgente"

12 - "Coder de 2 manières différentes la requête suivante:Lister le nom des fournisseurs susceptibles de livrer au moins un article"
SELECT nomfou
FROM papyrus.fournis
WHERE satisf > 0

SELECT numfou FROM papyrus.vente
WHERE numfou = 8700 AND codart = 'B001'

13 - "Coder de 2 manières différentes la requête suivante Lister les commandes (Numéro et date) dont le fournisseur est celui de la commande 70210"
SELECT numcom, derliv
FROM papyrus.ligcom
WHERE numcom = 70210

14 - "Dans les articles susceptibles d’être vendus, lister les articles moins chers (basés sur Prix1) que le moins cher des rubans (article dont le premier caractère commence par R). On affichera le libellé de l’article et prix1"
SELECT libart, prix1
FROM papyrus.produit, papyrus.vente
WHERE prix1 < 120

15 - "Editer la liste des fournisseurs susceptibles de livrer les produits dont le stock est inférieur ou égal à 150 % du stock d'alerte. La liste est triée par produit puis fournisseur"


16 - "Éditer la liste des fournisseurs susceptibles de livrer les produit dont le stock est inférieur ou égal à 150 % du stock d'alerte et un délai de livraison d'au plus 30 jours. La liste est triée par fournisseur puis produit"

17 - "Avec le même type de sélection que ci-dessus, sortir un total des stocks par fournisseur trié par total décroissant"

18 - "En fin d'année, sortir la liste des produits dontla quantité réellement commandée dépasse 90% de la quantité annuelleprévue."

19 - "Calculer le chiffre d'affaire par fournisseur pour l'année 93 sachant que les prix indiqués sont hors taxes et que le taux de TVA est 20%."
