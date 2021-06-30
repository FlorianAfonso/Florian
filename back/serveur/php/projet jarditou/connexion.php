<?php

try 
{

$db = new PDO('mysql:host=localhost;dbname=jarditou;charset=utf8','root','');

$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    //permet d'indiquer à l'utilisateur que la connexion est établie ...
    echo'La connexion à la base de données est établie !';
} 

    //Si échec de la connexion (du try), on attrape l'exception avec catch
catch (Exception $e) 
{
    // On affiche le message et le code de l'erreur
    echo 'Erreur : ' . $e->getMessage() . '<br />';
    echo 'N° : ' . $e->getCode();
    die('Fin du script');
    //Le script s'arrête ici.
}


?>