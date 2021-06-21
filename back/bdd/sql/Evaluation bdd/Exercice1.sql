DROP DATABASE IF EXIST MySQL;
CREATE DATABASE MySQL;
USE MySQL;

CREATE TABLE Client (
    cli_num INT NOT KEY ,
    cli_nom VARCHAR (50) NOT NULL ,
    cli_adresse VARCHAR (50) NOT NULL , 
    cli_tel VARCHAR (30) NOT NULL 
    , CONSTRAINT Client_PK PRIMARY KEY (cli_num)
)

CREATE TABLE Commande (
    com_num INT NOT NULL ,
    cli_num INT NOT NULL ,
    com_date DATE NOT NULL ,
    com_obs VARCHAR (50) NOT NULL
    , CONSTRAINT Commande_PK PRIMARY KEY (com_num)
    , CONSTRAINT Commande_Client_FK FOREIGN KEYS (cli_num) REFERENCES Commande()
)

CREATE TABLE est_compose (
    com_num INT NOT NULL ,
    pro_num INT NOT NULL ,
    est_qte INT NOT NULL 
    , CONSTRAINT est_compose_PK PRIMARY KEY (com_num ,pro_num)
)

CREATE TABLE Produit (
    pro_num INT NOT NULL ,
    pro_libelle VARCHAR (50) NOT NULL ,
    pro_description VARCHAR (50)
    , CONSTRAINT Produit_PK PRIMARY KEY (pro_num)
)