<html>
<body>
  <?php 

    // $nom = "nom";
    // $prenom = "prenom";  
    // $birthdate = "start";
    // $postcode = "cp";
    // $email = "mail";
 
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      // collect value of input field
      $name = $_POST['user_name'];
      if (empty($name)) {
        echo "Name is empty";
      } else {
        echo $name;
      }
    }
    // $prenom = $_POST['prenom'];  
    // $nom = $_POST['nom'];
    // echo $nom;   
  //    if (empty($_POST["prenom"]))
  //   {
  //       echo"Le prénom doit être renseigné <br>";
  // }

  //    if (empty($_POST["start"]))
  //   {
  //      echo"L'email doit être renseigné <br>";
  // }

  //    if (empty($_POST["cp"]))
  //   {
  //      echo"Le code postale doit être renseigné <br>";
  // }


  ?> 
</body>
</html>

