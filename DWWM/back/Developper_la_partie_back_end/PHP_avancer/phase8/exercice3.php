<html>
<head> 
<title> DateTime </title>
</head>
<body>

<?php

echo "<pre>";
$today = new DateTime('today');
$date1 = $today->format("d-m-Y");

$target = new DateTime('2022-02-11');
$date2 = $target->format("d-m-Y");
var_dump($date1,$date2);
$diff = $target->diff($today);
print_r($diff) ;
echo "</pre>";
?>
</body>
</html>
