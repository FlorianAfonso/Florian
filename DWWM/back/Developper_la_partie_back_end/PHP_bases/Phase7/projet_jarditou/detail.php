<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Jarditou</title>
     <?php   
     require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions

     $db = connexionBase(); // Appel de la fonction de connexion
     $pro_id = $_GET["pro_id"];
   $requete = "SELECT * FROM produits WHERE pro_id=".$pro_id; /* ajouté un pro_id valable pour que ca fonctionne */

    $result = $db->query($requete);

    // Renvoi de l'enregistrement sous forme d'un objet
    $produit = $result->fetch(PDO::FETCH_OBJ);
   ?>
   </head>
   <body> 
   <div class="container">
        <div class="d-none d-lg-flex justify-content-between align-items-center">
            <img class="w-25 " src="../jarditou_photos/jarditou_logo.jpg" alt="logo">
            <h1>Tout le jardin</h1>
        </div>
        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <ul class="navbar-brand" href="#">JardiTou.com</ul>
                    <li class="nav-item">
                        <a class="nav-link" href="../projet jarditou/index.html">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="liste.php">Tableau</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../projet jarditou/contact.html">Formulaire</a>
                    </li>
                </ul>
            </div>
            <nav class="navbar navbar-light bg-light">
                <form class="form-inline">
                    <input class="form-control mr-sm-2" type="search" placeholder="Votre promotion" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
                </form>
            </nav>
        </nav>
        <img class="img-fluid img-responsive w-100" src="../jarditou_photos/promotion.jpg" alt="Image">
   <fieldset>
<br>
<form class="form-group" action="modif.php?pro_id=<?php echo $pro_id ; ?>" method="POST">
   <img src="../jarditou_photos/<?php echo "$produit->pro_id.$produit->pro_photo"; ?>" class="img-fluid img-thumbnail rounded mx-auto d-block col-3" alt="<?php echo $produit->pro_libelle; ?>" title="<?php echo $produit->pro_libelle; ?>">
    <div class="form-group">
   <label for="id">ID</label><br>
    <input type="text" class="form-control" id="id" name="id" value=" <?php echo $produit->pro_id; ?>" readonly>
  </div>

<br>

  <div class="form-group">
    <label for="ref">Référence</label><br>
    <input type="text" class="form-control" id="ref" name="ref" value=" <?php echo $produit->pro_ref; ?>" readonly>
  </div>

<br>

  <div class="form-group">
    <label for="categorie">Catégorie</label><br>
    <input type="text" class="form-control" id="categorie" name="categorie" value=" <?php echo $produit->pro_cat_id; ?>" readonly>
  </div>

<br>

  <div class="form-group">
    <label for="libelle">Libellé</label><br>
    <input type="text" class="form-control" id="libelle" name="libelle" value=" <?php echo $produit->pro_libelle; ?>" readonly>
  </div>

<br>

<div class="form-group">
    <label for="description">Description</label>
    <textarea class="form-control" id="description" name="description" rows="3" readonly ><?php echo $produit->pro_description; ?></textarea>
  </div>

<br>

  <div class="form-group">
    <label for="prix">Prix</label><br>
    <input type="text" class="form-control" id="prix" name="prix" value=" <?php echo $produit->pro_prix; ?>" readonly >
  </div>

<br>

  <div class="form-group">
    <label for="stock">Stock</label><br>
    <input type="text" class="form-control" id="stock" name="stock" value=" <?php echo $produit->pro_stock; ?>" readonly>
  </div>

<br>

  <div class="form-group">
    <label for="couleur">Couleur</label><br>
    <input type="text" class="form-control" id="couleur" name="couleur" value=" <?php echo $produit->pro_couleur; ?>" readonly >
  </div>

<br>

<?php if ($produit -> pro_bloque == 1): ?>
        <div class="form-group">
        <label for="bloque">Produit bloqué : </label>
        <input type="radio" name="bloque" value="1" readonly checked > Oui
        <input type="radio" name="bloque" value="0" readonly > Non <br>
   </div>
      <?php else: ?>
        <div class="form-group">
        <label for="bloque">Produit bloqué : </label>
        <input type="radio" name="bloque" value="1" readonly > Oui
        <input type="radio" name="bloque" value="0" readonly checked > Non <br>
      </div>
        <?php endif; ?>

    Date d'ajout : <?php echo $produit -> pro_d_ajout . "<br><br>" ; ?>

    Date de modification :
    <?php
      if ($produit -> pro_d_modif == NULL )
      {
        echo "Il n'y a pas eu de modification sur ce produit. <br><br> " ;
      }
      else
      {
        echo $produit -> pro_d_modif . "<br><br>" ;
      }

    ?> 

<br><br>
<a class="btn btn-dark" href="liste.php">Retour</a> <input type="submit" value="Modifier" class="btn btn-dark">
<a class="btn btn-warning" href="confirmation_delete.php?pro_id=<?php echo $produit->pro_id ; ?>">Supprimer</a>
</form>

<br><br>

</fieldset>
<footer class="navbar navbar-expand-sm navbar-dark bg-dark">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item"><a class="nav-link" href="#">Mentions légales</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Horraires</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Plan du site</a></li>
            </ul>
        </footer>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
        </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
        </script>
     </div> 
    </div>  

</div>
</body>