Exercice : La Base

DROP DATABASE IF EXISTS hotel;

CREATE DATABASE hotel; 

USE *hotel*; 

CREATE TABLE *chambre* (
    capacite_chambre INT NOT NULL,
    degre_confort type(x),
    exposition type(x),
    type_chambre type(x),
    num_chambre type(x),
    num_hotel type(x)
);

CREATE TABLE *station* (
    num_station type(x),
    nom_station type(x)
);

CREATE TABLE *client* (
    adresse_client type(x),
    nom_client type(x),
    prenom_client type(x),
    num_client type(x)
);

CREATE TABLE *reservation* (
    num_chambre type(x),
    num_client type(x),
    date_debut type(x),
    date_fin type(x),
    date_reservation type(x),
    montant_arrhes type(x),
    prix_total type(x)
);
