/* Exercice 1 les transaction */ 

/* Que concluez-vous ? */ 

je conclu que cette transaction est pas permanente

/* Les données sont-elles modifiables par d'autres utilisateurs (ouvrez une nouvelle fenêtre de requête pour interroger le fournisseur 120 par une instruction SELECT) ? */

START TRANSACTION;
SELECT nomfou FROM fournis WHERE numfou = 120;

/* La transaction est-elle terminée ? */ 

Non elle est pas terminée , pour cette transaction il faut y inclure un commit .

/* comment rendre la modification permanente ? */

 START TRANSACTION;
    SELECT nomfou FROM fournis WHERE numfou = 120;
    UPDATE fournis SET nomfou = 'GROSBRIGAND' WHERE numfou = 120;
    SELECT nomfou FROM fournis WHERE numfou = 120; 
    COMMIT ;

/* Comment annuler la transaction ? */

START TRANSACTION ;
    SELECT nomfou FROM fournis WHERE numfou = 120 ;
    UPDATE fournis SET nomfou = 'GROBRIGAND' WHERE numfou = 120;
    ROLLBACK ;

  