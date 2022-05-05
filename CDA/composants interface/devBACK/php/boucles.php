<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <h1> Exercice PHP -> Les Boucles </h1>

    Exercie 1 :<br>
    <br>

    <?php
$counter = 0;

while ($counter < 150) {
    $counter += 1;

    if ($counter % 2 == 0) {
        continue;
    }

    echo "$counter.\n";
}
    ?>
<br>
<br>

Exercice 2 : <br>

<?php
{
    for ($i = 0; $i <= 500; $i++) {
      echo"Je dois faire des sauvegardes régulières de mes fichiers. $i <br>";
    }
}
   ?>
<br>
<br>

Exercice 3 : <br>

<?php 
function table($nbr, $nbr2)
{
    $table = '<table border="1">';
    for ($a=0; $a <= $nbr; $a++) {
        $table .= '<tr>';
        for ($b=0; $b <= $nbr2 ; $b++) {
            $table .= '<td>'.$a*$b.'</td>';
        }
        $table .= '</tr>';
    }
    $table .= '</table>';
    return $table;
}
 
echo table(12, 12);
?>

</body>
</html>