<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Jarditou</title>
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

<body>
<div class="container">
<?php
$DATABASE_HOST = 'localhost';
$DATABASE_NAME = 'jarditou';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';

try
{
    $db = new PDO('mysql:host=' . $DATABASE_HOST . ';dbname=' . $DATABASE_NAME . ';charset=utf8', $DATABASE_USER, $DATABASE_PASS);
    $answer = $db->query('SELECT * FROM produits');
} 
catch (PDOException $exception) 
{
    echo $exception->getMessage() . "<br>";
    die();
}
?>

<section>
    <div class="table-responsive table-striped table-hover table-bordered">
        <table class="table text-center">
            <thead class="h4 thead-light">
            <tr>
                <th scope="col">Photo</th>
                <th scope="col">ID</th>
                <th scope="col">Référence</th>
                <th scope="col">Libellé</th>
                <th scope="col">Prix</th>
                <th scope="col">Stock</th>
                <th scope="col">Couleur</th>
                <th scope="col">Date d'ajout</th>
                <th scope="col">Date de modification</th>
                <th scope="col">Statut</th>
            </tr>
            </thead>
            <tbody>
            <?php while ($row = $answer->fetch(PDO::FETCH_OBJ)): ?>
                <tr>
                    <td><img src="../jarditou_photos/<?php echo "$row->pro_id.$row->pro_photo"; ?>" class="img-fluid" alt="<?php echo $row->pro_libelle; ?>" title="<?php echo $row->pro_libelle; ?>"></td>
                    <td><?php echo $row->pro_id; ?></td>
                    <td><?php echo $row->pro_ref; ?></td>
                    <td><u><a class="font-weight-bold text-danger" href="detail.php?pro_id=<?php echo $row->pro_id ?>"><?php echo $row->pro_libelle ?></a></u></td>
                    <td><?php echo $row->pro_prix; ?>€</td>
                    <td><?php echo $row->pro_stock; ?></td>
                    <td><?php echo $row->pro_couleur; ?></td>
                    <td><?php echo $row->pro_d_ajout; ?></td>
                    <td><?php echo $row->pro_d_modif; ?></td>
                    <td>
                        <?php 
                        if ($row->pro_bloque == 1)
                        {
                            echo 'Oui';
                        }
                        ?>
                    </td>
                    <?php 
                    endwhile; 
                    $answer->closeCursor();
                    ?>
                </tr>
            </tbody>
        </table>

</section>

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

</html>