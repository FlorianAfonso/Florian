Exercice :

/*Ecrivez l'appel de la procédure ajoutFournisseur() pour un fournisseur basé en France.*/

CALL ajoutFournisseur('Geek+', 'FR', '30 rue poulainville', '80000', 'Bilbo Hobbit', '0625242322', 'lehobbit@gmail.com' );

/* Exercice 1 : création d'une procédure stockée sans paramètre*/


DELIMITER |

CREATE PROCEDURE Lst_Suppliers()

BEGIN
    SELECT sup_name FROM gescom_afpa.suppliers
    WHERE EXISTS 
    (
        SELECT ode_pro_id FROM gescom_afpa.orders_details
        JOIN gescom_afpa.products ON ode_pro_id = pro_id
        WHERE pro_sup_id = sup_id
    );
END |


/*Exercice 2 : création d'une procédure stockée avec un paramètre en entrée*/

DELIMITER |

CREATE PROCEDURE Lst_Rush_Orders(IN p_ord_status VARCHAR(25))

BEGIN
    SELECT * FROM gescom_afpa.orders
    WHERE ord_status = p_ord_status;
END |

DELIMITER ;

/*Exercice 3 : création d'une procédure stockée avec plusieurs paramètres*/



