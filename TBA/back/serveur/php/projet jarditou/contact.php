<!DOCTYPE html>
<html lang="Fr">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Jarditou</title>
</head>

<body>
<div class="container">
        <div class="d-none d-lg-flex justify-content-between align-items-center">
            <img class="w-25 " src="../jarditou_html_zip/images/jarditou_logo.jpg" alt="logo">
            <h1>La qualité depuis 70 ans</h1>
        </div>
        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="../projet jarditou/index.php">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../projet jarditou/tableau.php">Tableau</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../projet jarditou/contact.php">Formulaire</a>
                    </li>
                </ul>
            </div>
        </nav>
        <img class="img-fluid img-responsive w-100" src="../jarditou_html_zip/images/promotion.jpg" alt="Image">



        <div class="container-fluid">


            <h1>Contacts</h1>
            <form action="http://bienvu.net/script.php" method="post" id="inscription">
                <p><span class="text-danger">* Information indispensable</span></p>
                <fieldset>
                    <legend>Vos coordonnées</legend>
                    <label for="name">Sexe<span class="text-danger">* </span>:</label>
                    <input type="radio" name="sexe" value="Male"> Masculin
                    <input type="radio" name="sexe" value="Female"> Feminin

                    <br>
                    <label for="name">Nom<span class="text-danger">* </span>:</label>
                    <input type="text" id="nom" name="user_name" class="form-control">
                    <label for="prenom">Prénom <span class="text-danger">* </span> :</label>
                    <input type="text" id="prenom" name="user_prenom" class="form-control">

                    <br>

                    <label for="start">Date de naissance<span class="text-danger">* </span>:</label>
                    <input type="date" id="start" name="trip-start" value="2011-07-22" class="form-control">
                    <br>
                    <label for="cp">Code postale<span class="text-danger">* </span>:</label>
                    <input type="text" id="cp" name="user_cp" class="form-control"> <br>

                    <label for="adress">Adresse :</label>
                    <input type="text" id="adress" name="user_adress" class="form-control"> <br>

                    <label for="ville">Ville :</label>
                    <input type="text" id="ville" name="user_ville" class="form-control"> <br>

                    <label for="mail">Email<span class="text-danger">* </span>:</label>
                    <input type="text" id="mail" name="user_mail" class="form-control">

                </fieldset>

                <fieldset>

                    <legend>Votre demande</legend>

                    <label for="demande">Sujet<span class="text-danger">* </span>:</label>
                    <select id="demande" class="form-control">
                        <option value="Veuillez séléctionner un sujet" selected>Veuillez séléctionner un sujet</option>
                        <option value="Mes commandes">Mes commandes</option>
                        <option value="Questions sur un produit">Questions sur un produit</option>
                        <option value="Réclamation">Réclamation</option>
                        <option value="Autres">Autres</option>
                    </select><br>

                    <label>Votre question<span class="text-danger">* </span>:</label>
                    <textarea name="comentaires" rows="2" cols="20" class="form-control"></textarea>
                </fieldset>
                <br>
                <input type="checkbox" name="couleur3" value="Vert"><span class="text-danger">* </span>J'accepte le
                traitement informatique de ce formulaire
                <br><br>
                <input type="submit" value="Envoyer" class="form-control">
                <br>
                <input type="reset" value="Annuler" class="form-control">
                <br>
        </div>
        </form>
        <footer class="navbar navbar-expand-sm navbar-dark bg-dark">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item"><a class="nav-link" href="#">Mentions légales</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Horraires</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Plan du site</a></li>
            </ul>
        </footer>
        <script src="../projet jarditou/contact.js"></script>
</body>

</html>