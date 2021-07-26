<html>
<head>
   <meta charset="UTF-8">
   <title>testDb.php</title>
   <?php
   try 
   {        
       $db = new PDO('mysql:host=localhost;charset=utf8;dbname=jarditou', 'root', '');
       $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   } catch (Exception $e) {
      echo "Erreur : " . $e->getMessage() . "<br>";
      echo "N° : " . $e->getCode();
      die("Fin du script");
}     
/* demande de requete */ 

$requete = "SELECT * FROM produits WHERE pro_id = 7";
$result = $db->query($requete);
$produit = $result->fetch(PDO::FETCH_OBJ);
echo '<pre>' , var_dump($produit) , '</pre>';
$result->closeCursor(); 

?>
</head>
<body>
<p>Ma page</p>   
</body>
</html> 