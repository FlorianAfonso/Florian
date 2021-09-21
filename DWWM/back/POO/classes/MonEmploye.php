<?php
require_once "Employe.class.php" ;
require_once "Magasin.class.php" ;

$employe1 = new Employe("Shelby", "Thomas", "2001/06/27", "Patron", 150000, "Gestion", "Birmingham", "Self-service", "", "", 24) ;
$employe1 -> presentation() ;
echo "<br>" ;
$employe1 -> presentation_prime() ;
echo "<br>" ;
$employe1 -> presentation_anciennete() ;
echo "<br>" ;
$employe1 -> presentation_prime_totale() ;

echo "<br><br>" ;

$employe2 = new Employe("Shelby", "Arthur", "2021/05/10", "Chef", 75000, "Distillerie", "Londres", "Ticket-restaurant", "", "", 13) ;
$employe2 -> presentation() ;
echo "<br>" ;
$employe2 -> presentation_prime() ;
echo "<br>" ;
$employe2 -> presentation_anciennete() ;
echo "<br>" ;
$employe2 -> presentation_prime_totale() ;

echo "<br><br>" ;

$employe3 = new Employe("Shelby", "John", "2011/01/01", "Manoeuvre", 50000, "Collecteur de dette", "Birmingham", "Self-service", "", "", 6) ;
$employe3 -> presentation() ;
echo "<br>" ;
$employe3 -> presentation_prime() ;
echo "<br>" ;
$employe3 -> presentation_anciennete() ;
echo "<br>" ;
$employe3 -> presentation_prime_totale() ;

echo "<br><br>" ;

$employe4 = new Employe("Gray", "Polly", "2005/03/31", "Responsable", 50000, "Comptabilité", "Newcastle", "Self-service", "", "", 4) ;
$employe4 -> presentation() ;
echo "<br>" ;
$employe4 -> presentation_prime() ;
echo "<br>" ;
$employe4 -> presentation_anciennete() ;
echo "<br>" ;

echo "<br><br>" ;

$employe5 = new Employe("Shelby", "Grace", "1999/04/09", "Directrice", 100000, "Gestion", "Birmingham", "Self-service", "", "", 24) ;
$employe5 -> presentation() ;
echo "<br>" ;
$employe5-> presentation_prime() ;
echo "<br>" ;
$employe5 -> presentation_anciennete() ;
echo "<br>" ;
$employe5 -> presentation_prime_totale() ;


echo "<br><br>" ;


$magasin1 = new Magasin("Shelby LTD", "30 Gin street", 51000, "Birmingham", "Self-service") ;
$magasin1 -> presentation() ;

echo "<br><br>" ;

$magasin2 = new Magasin("Peaky Blinders Store", "21 Whiskey street", 80000, "Londres", "Ticket restaurant") ;
$magasin2 -> presentation() ;

echo "<br><br>" ;

$magasin3 = new Magasin("Peaky Banks corporation", "36 Raquette street", 60000, "Newcastle", "Self-service") ;
$magasin3 -> presentation() ;