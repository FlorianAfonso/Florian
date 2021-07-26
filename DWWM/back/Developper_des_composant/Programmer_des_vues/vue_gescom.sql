Les vue gescom :

Exercice 1 : 

CREATE VIEW v_details
AS
SELECT ode_pro_id, SUM(ode_quantity) AS 'QteTot', SUM(ode_unit_price * ode_quantity) AS 'PrixTot' FROM gescom_afpa.orders_details
GROUP BY ode_pro_id

Exercice 2 :

CREATE VIEW v_ventes_barb004
AS
SELECT * FROM gescom_afpa.orders_details
JOIN gescom_afpa.products ON ode_pro_id = pro_id
WHERE pro_ref = 'barb004'