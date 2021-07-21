/* Exercice phase 2 , les declencheur  : */

/* Créer une table commander_articles constituées de colonnes :

codart : id du produit
qte : quantité à commander
date : date du jour  */ 

USE gescom_afpa;

CREATE TABLE commander_articles (
    codart_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    codart_qte INT,
    codart_date DATE
    ) ;

/* Créer un déclencheur after_products_update sur la table products : lorsque le stock physique devient inférieur au stock d'alerte, une nouvelle ligne est insérée dans la table commander_articles. */ 

DELIMITER |

CREATE TRIGGER after_products_update
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    DECLARE v_pro_id INT(10);
    DECLARE v_pro_stock INT(5);
    DECLARE v_pro_stock_alert INT(5);

    SET v_pro_id = NEW.pro_id;
    SET v_pro_stock = NEW.pro_stock;
    SET v_pro_stock_alert = NEW.pro_stock_alert;

    IF (v_pro_stock < v_pro_stock_alert)
    THEN
        INSERT INTO commander_articles 
        VALUES
        (v_pro_id, v_pro_stock_alert - v_pro_stock, now());
    END IF;
END |

DELIMITER ;