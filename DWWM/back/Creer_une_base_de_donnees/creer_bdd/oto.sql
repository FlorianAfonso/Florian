CREATE TABLE IF NOT EXISTS client (
id_cli int,
cli_nom varchar(30),
cli_prenom varchar(30),
cli_num int UNIQUE,
cli_part varchar(50),
cli_pro varchar(50)
,CONSTRAINT client_PK PRIMARY KEY (id_cli)
);

CREATE TABLE IF NOT EXISTS vehicule (
id_vehi int, 
vehi_part varchar(50),
vehi_utilitaire varchar(50),
vehi_neuf varchar(50),
vehi_occas varchar(50)
,CONSTRAINT vehicule_PK PRIMARY KEY (id_vehi)
);

CREATE TABLE IF NOT EXISTS employee (
id_emp int,
emp_poste varchar(50) NOT NULL,
emp_nom varchar(30) NOT NULL,
emp_prenom varchar(30) NOT NULL 
,CONSTRAINT employee_PK PRIMARY KEY (id_emp)
);

CREATE TABLE IF NOT EXISTS activite (
id_acti int,
acti_vente varchar(255),
acti_repar varchar(255),
acti_entretien varchar(255)
,CONSTRAINT activite_PK PRIMARY KEY (id_acti)    
);

CREATE TABLE IF NOT EXISTS paiement (
id_paie int,
paie_credit DECIMAL(2,2)  NOT NULL,
paie_comptant DECIMAL(2,2) NOT NULL
,CONSTRAINT paiement_PK PRIMARY KEY (id_paie)   
);

CREATE TABLE contrat (
id_emp Int NOT NULL,
id_cli Int NOT NULL
,CONSTRAINT contrat PRIMARY KEY (id_emp,id_cli)
,CONSTRAINT contrat_employee_FK FOREIGN KEY (id_emp) REFERENCES employee (id_emp)
,CONSTRAINT contrat_client_FK FOREIGN KEY (id_cli) REFERENCES client (id_cli)
);