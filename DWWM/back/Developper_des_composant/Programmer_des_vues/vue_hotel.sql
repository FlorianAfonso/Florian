1. Afficher la liste des hôtels avec leur station.

CREATE VIEW v_station_hotel
AS
SELECT hot_nom, sta_nom FROM hotel.hotel
JOIN hotel.station ON hotel.hot_sta_id = station.sta_id

2. Afficher la liste des chambres et leur hôtel.

CREATE VIEW v_chambre_hotel
AS
SELECT hot_nom , cha_numero FROM hotel.chambre
JOIN hotel.hotel ON hotel.hot_id = chambre.cha_hot_id 

3. Afficher la liste des réservations avec le nom des clients.

CREATE VIEW v_reservation_client
AS
SELECT res_date , CONCAT(res_date_debut , " jusqu'au " ,res_date_fin) AS 'date de reservation' , CONCAT(cli_nom, ' ' ,  cli_prenom) AS 'Nom du client' FROM reservation
JOIN hotel.client ON reservation.res_cli_id = client.cli_id 

4. Afficher la liste des chambres avec le nom de lhôtel et le nom de la station.

CREATE VIEW v_chambre_hotel_station
AS
SELECT cha_id, hot_nom, sta_nom FROM hotel.chambre
JOIN hotel.hotel ON cha_hot_id = hot_id
JOIN hotel.station ON hot_sta_id = sta_id

5. Afficher les réservations avec le nom du client et le nom de lhôtel.

CREATE VIEW v_reservation_client_hotel
AS
SELECT res_id, CONCAT(cli_nom, ' ', cli_prenom) AS 'Nom client', hot_nom FROM hotel.hotel
JOIN hotel.chambre ON hot_id = cha_hot_id
JOIN hotel.reservation ON cha_id = res_cha_id
JOIN hotel.client ON res_cli_id = cli_id