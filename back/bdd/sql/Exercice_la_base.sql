Exercice la base :

-- DROP DATABASE if EXISTS Hotel;
-- CREATE DATABASE Hotel;
-- USE Hotel;


-- CREATE TABLE Client (
--         adresse_client    VARCHAR (50) NOT NULL , 
--         nom_client        VARCHAR (50) NOT NULL , 
--         prenom_client    VARCHAR (50) NOT NULL , 
--         num_client        INT NOT NULL
--     ,CONSTRAINT Client_PK PRIMARY KEY (num_client)    
-- );
    
-- CREATE TABLE Reservation (
--         num_chambre            INT NOT NULL , 
--         num_client            INT NOT NULL , 
--         date_debut            DATE NOT NULL , 
--         date_fin                DATE NOT NULL ,
--         date_reservation    DATE NOT NULL , 
--         montant_arrhes        INT NOT NULL , 
--         prix_total            INT NOT NULL
--     ,CONSTRAINT Reservation_PK PRIMARY KEY (num_chambre,num_client)
--     ,CONSTRAINT Reservation_Chambre_FK FOREIGN KEY (num_chambre) REFERENCES Chambre(num_chambre)
--     ,CONSTRAINT Reservation_Client_FK FOREIGN KEY (num_client) REFERENCES Client(num_client)
-- );    

-- CREATE TABLE Chambre (
--         capacite_chambre  INT NOT NULL ,
--         degre_confort       INT NOT NULL ,
--         exposition            VARCHAR (50) NOT NULL ,
--         type_chmabre        VARCHAR (50) NOT NULL ,
--         num_chambre            INT NOT NULL ,
--         num_hotel            INT NOT NULL
--     ,CONSTRAINT Chambre_PK PRIMARY KEY (num_chambre)
--     ,CONSTRAINT Chambre_Hotel_FK FOREIGN KEY (num_hotel) REFERENCES Hotel(num_hotel) 
-- );

-- CREATE TABLE Hotel (
--         capacite_hotel        INT NOT NULL ,
--         categorie_hotel    VARCHAR (50) NOT NULL ,
--         nom_hotel            VARCHAR (50) NOT NULL ,
--         adresse_hotel        VARCHAR (50) NOT NULL ,
--         num_hotel            INT NOT NULL ,
--         num_station            INT NOT NULL
--     ,CONSTRAINT Hotel_PK PRIMARY KEY (num_hotel)
--     ,CONSTRAINT Hotel_Station_PK FOREIGN KEY (num_station) REFERENCES Station(num_station)             
-- );

-- CREATE TABLE Station (
--         num_station    INT NOT NULL ,
--         nom_station    VARCHAR (50) NOT NULL
--     ,CONSTRAINT Station_PK PRIMARY KEY (num_station)
-- );