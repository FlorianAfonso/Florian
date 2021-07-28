<html>
<head> 
<title> DateTime </title>
</head>
<body>

<?php
setlocale(LC_TIME, 'fr_FR.utf8','fra');
echo "Aujourd'hui on est le " . (strftime("%A %d %B %Y")); 

?>
</body>
</html>

