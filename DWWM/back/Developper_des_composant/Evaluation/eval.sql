/* Vue : Créez une vue qui affiche le catalogue produits. L'id, la référence et le nom des produits, ainsi que l'id et le nom de la catégorie doivent apparaître. */ 

CREATE VIEW v_catalogue
AS
SELECT pro_id, pro_ref, pro_name, cat_id, cat_name FROM gescom_afpa.products
JOIN gescom_afpa.categories ON products.pro_cat_id = categories.cat_id

/* Procedure stockées : Créez la procédure stockée facture qui permet d'afficher les informations nécessaires à une facture en fonction d'un numéro de commande.
Cette procédure doit sortir le montant total de la commande. */ 

DELIMITER |
CREATE PROCEDURE facture(IN p_num INT(4))
BEGIN 
SELECT SUM((ode_unit_price * ode_quantity)*(1-(ode_discount/100))) FROM gescom_afpa.orders_details
JOIN gescom_afpa.orders ON orders_details.ode_ord_id = orders.ord_id
WHERE p_num = orders.ord_id ;
END  |
DELIMITER ;

/* Présentez le déclencheur after_products_update demandé dans la phase 2 de la séance sur les déclencheurs. */

DELIMITER |

CREATE TRIGGER after_products_update
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    DECLARE v_pro_id INT(10);
    DECLARE v_pro_stock INT(5);
    DECLARE v_pro_stock_alert INT(5);
    DECLARE v_codart INT(10);

    SET v_pro_id = NEW.pro_id;
    SET v_pro_stock = NEW.pro_stock;
    SET v_pro_stock_alert = NEW.pro_stock_alert;
    SET v_codart = (SELECT codart FROM commander_articles WHERE codart = v_pro_id);

    IF (v_pro_stock < v_pro_stock_alert)
    THEN
        IF ISNULL(v_codart)
        THEN
            INSERT INTO commander_articles 
            VALUES
            (v_pro_id, v_pro_stock_alert - v_pro_stock, now());
        ELSE
            UPDATE commander_articles
            SET
                qte = v_pro_stock_alert - v_pro_stock,
                date = now()
            WHERE codart = v_codart;
        END IF;
    END IF;
END |

DELIMITER ;

/* Transaction : Ecrire la transaction permettant d'acter tous ces changements en base des données. */ 

/* 2. Décrire les opérations qui seront à réaliser sur la table posts. */

Pour commencer jai crée le posts retraité ensuite jai passé le poste de Amity HANAH au pépiniériste Simone George.
De ce fait il est devenue manager dans la foulée jai actualiser la hiérarchie pour les autre employées. 
Ensuite jai effectuer laugmentation de sont salaire .  Pour terminer jai mis Amity HANAH en retraite . 

/* 1. La base de données ne contient actuellement que des employés en postes.
Il a été choisi de garder en base une liste des anciens collaborateurs de l'entreprise parti en retraite. 
Il va donc vous falloir ajouter une ligne dans la table posts pour référencer les employés à la retraite. */

/* 3.Ecrire les requêtes correspondant à ces opéarations.*/

/* 4. Ecrire la transaction */ 

START TRANSACTION;
INSERT INTO gescom_afpa.posts VALUES (36, 'Retraité(e)');
UPDATE gescom_afpa.employees SET emp_pos_id = 36 WHERE emp_id = 59;
UPDATE gescom_afpa.employees SET emp_pos_id = 2, emp_superior_id = 4, emp_salary = emp_salary * (1 + (5/100)) WHERE emp_id = 38;
UPDATE gescom_afpa.employees SET emp_superior_id = 38 WHERE emp_pos_id = 14 AND emp_id != 38;
SELECT * FROM gescom_afpa.employees WHERE emp_id = 38;
SELECT * FROM gescom_afpa.employees WHERE emp_pos_id = 14;
COMMIT;