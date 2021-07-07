DROP DATABASE IF EXISTS base_exo1;

CREATE DATABASE base_exo1;

USE base_exo1;

CREATE TABLE client (
    cli_num INT PRIMARY KEY,
    cli_nom VARCHAR(50),
    cli_adresse VARCHAR(50),
    cli_tel VARCHAR(30)
    );
    
CREATE TABLE commande (
    com_num INT PRIMARY KEY,
    cli_num INT,
    com_date DATETIME,
    com_obs VARCHAR(50),
    FOREIGN KEY (cli_num) REFERENCES client(cli_num)
    );
    
CREATE TABLE produit (
    pro_num INT PRIMARY KEY,
    pro_libelle VARCHAR(50),
    pro_description VARCHAR(50)
    );
    
CREATE TABLE est_compose (
    com_num INT,
    pro_num INT,
    est_qte INT,
    PRIMARY KEY (com_num, pro_num),
    FOREIGN KEY (com_num) REFERENCES commande(com_num),
    FOREIGN KEY (pro_num) REFERENCES produit(pro_num)
    );

CREATE INDEX index_be1 ON client (cli_num);