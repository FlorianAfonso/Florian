<!DOCTYPE html>
<html lang="fr">

<head>
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
            <h1>Tout le jardin</h1>
        </div>
        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                    <a class="navbar-brand" href="#">JardiTou.com</a>
                    <li class="nav-item">
                        <a class="nav-link active" href="index.php">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="tableau.php">Tableau</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">Formulaire</a>
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
        <img class="img-fluid img-responsive w-100" src="../jarditou_html_zip/images/promotion.jpg" alt="Image">

        <table class="table table-bordered">
            <tbody>
                <div>
                    <tr class="table-active">
                        <th>
                            <h3>Photo</h3>
                        </th>
                        <th>
                            <h3>Id</h3>
                        </th>
                        <th>
                            <h3>Categories</h3>
                        </th>
                        <th>
                            <h3>Libell??</h3>
                        </th>
                        <th>
                            <h3>Prix</h3>
                        </th>
                        <th>
                            <h3>Couleur</h3>
                        </th>
                    </tr>
                </div>
                <tr class="table-warning">
                    <td>
                        <img src="../jarditou_html_zip/jarditou_photos/7.jpg" alt="Image" height="100" width="100">
                    <td>7</td>
                    <td>Barbecues</td>
                    <td> Aramis</td>
                    <td>110.00???</td>
                    <td> brun</td>
                    </th>


                </tr>
                <tr>
                    <td>
                        <img src="../jarditou_html_zip/jarditou_photos/8.jpg" alt="Image" height="100" width="100">
                    <td>8</td>
                    <td>Barbecues</td>
                    <td> Athos</td>
                    <td>249.00???</td>
                    <td> Noir</td>
                    </td>
                </tr>
                <tr class="table-warning">
                    <td>
                        <img src="../jarditou_html_zip/jarditou_photos/11.jpg" alt="Image" height="100" width="100">
                    <td>11</td>
                    <td>Barbecues</td>
                    <td> Caltronic</td>
                    <td>135.90???</td>
                    <td> Chrome</td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="../jarditou_html_zip/jarditou_photos/12.jpg" alt="Image" height="100" width="100">
                    <td>12</td>
                    <td>Barbecues</td>
                    <td> Camping</td>
                    <td>88.00???</td>
                    <td> Noir</td>
                    </td>
                </tr>
                <tr class="table-warning">
                    <td>
                        <img src="../jarditou_html_zip/jarditou_photos/13.jpg" alt="Image" height="100" width="100">
                    <td>13</td>
                    <td>Brouette</td>
                    <td> Green</td>
                    <td>49.00???</td>
                    <td> Verte</td>
                    </td>
                </tr>
            </tbody>
        </table>
        <footer class="navbar navbar-expand-sm navbar-dark bg-dark">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item"><a class="nav-link" href="#">Mentions l??gales</a></li>
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
</body>

</html>