<html>
<head> 
<title> DateTime </title>
</head>
<body>

<?php

echo "<pre>";
$dnow = date('c', mktime(0, 0, 0));

$dafter = date('c', mktime(0, 0, 0, 2, 11, 2022));

var_dump($dnow,$dafter);

$date1=date_create($dnow);
$date2=date_create($dafter);
$diff=date_diff($date1,$date2);
print_r($diff);

?>
</body>
</html>