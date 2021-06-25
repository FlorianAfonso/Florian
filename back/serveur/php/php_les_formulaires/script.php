<html>
<body>
  <?php 

    $nom = $_GET['nom'];
    $prenom = $_GET['prenom'];  
    $birthdate = $_GET['start'];
    $postcode = $_GET['cp'];
    $email = $_GET['mail'];

    if (empty($_POST['nom']))
    {
        echo"Le nom doit être renseigné";
    }

    if (empty($_POST['prenom']))
    {
        echo"Le prénom doit être renseigné";
    }

    if (empty($_POST['start']))
    {
        echo"l'Email doit être renseigné";
    }

    if (empty($_POST['cp']))
    {
        echo"Le code postale doit être renseigné";
    }

  ?> 
</body>
</html>