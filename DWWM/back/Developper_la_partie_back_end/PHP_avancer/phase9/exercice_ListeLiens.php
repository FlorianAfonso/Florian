<html>
<head> 
<title> ListeLiens </title>
</head>
<body>

<?php
$fp = fopen("ListeLiens.txt","r");

while(! feof($fp))
  {
  echo fgets($fp). "<br />";
  }

fclose($fp);
?>

</body>
</html>