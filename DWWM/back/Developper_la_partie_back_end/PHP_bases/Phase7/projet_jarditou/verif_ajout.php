<?php 

require "connexion_bdd.php" ;
$db = connexionBase() ;
$wequete = "INSERT INTO produits (pro_ref, pro_cat_id, pro_libelle, pro_description, pro_prix, pro_stock, pro_couleur, pro_bloque, pro_d_ajout)
            VALUES (:ref, :categorie, :libelle, :description, :prix, :stock, :couleur, :bloque, NOW())" ;
$requete = $db -> prepare($wequete) ;
$requete->bindValue(":categorie", $_POST["categorie"]) ;
$requete->bindValue(":ref", $_POST["ref"]) ;
$requete->bindValue(":libelle", $_POST["libelle"]) ;
$requete->bindValue(":description", $_POST["description"]) ;
$requete->bindValue(":prix", $_POST["prix"]) ;
$requete->bindValue(":stock", $_POST["stock"]) ;
$requete->bindValue(":couleur", $_POST["couleur"]) ;
$requete->bindValue(":bloque", $_POST["bloque"]) ;
$erreurs = "" ;


// Catégorie
if (empty($_POST["categorie"]))
{
    $erreurs .= "&ecat" ;
    header("Location: produits_ajout.php?" . $erreurs) ;
}

// Référence
if (!preg_match("/^[a-zA-Z-_0-9]{1,10}$/", $_POST["ref"]))
{
    $erreurs .= "&eref";
    header("Location: produits_ajout.php?" . $erreurs) ;
}

// Libellé
if (!preg_match("/^[\s\S]{1,200}$/", $_POST["libelle"]))
{
    $erreurs .= "&elib";
    header("Location: produits_ajout.php?" . $erreurs) ;
}

// Description
if (!preg_match("/^[\s\S]{0,1000}$/", $_POST["description"]))
{
    $erreurs .= "&desc";
    header("Location: produits_ajout.php?" . $erreurs) ;
}

// Prix
if (!preg_match("/^[0-9]{1,4}\.[0-9]{0,2}$/", $_POST["prix"]))
{
    $erreurs .= "&eprix";
    header("Location: produits_ajout.php?" . $erreurs) ;
}

//Stock
if (!preg_match("/^[0-9]{1,11}$/", $_POST["stock"]))
{
    $erreurs .= "&estock";
    header("Location: produits_ajout.php?" . $erreurs) ;
}

// Couleur
if (!preg_match("/^[a-zA-Z]{0,30}$/", $_POST["couleur"]))
{
    $erreurs .= "&ecolor";
    header("Location: produits_ajout.php?" . $erreurs) ;
}

if ($erreurs != NULL)
{
    exit ;
}

else
    {
        $requete -> execute() ;
        $requete -> closeCursor() ;
        header("Location: liste.php") ;
        exit ;
    }
?>