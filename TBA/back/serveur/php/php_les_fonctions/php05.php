<html>
<body>
  <?php
$resultat = 0 ;
function calculator ($nbr1, $operateur, $nbr2)
{
    if ($operateur = "+")
    {
        $resultat = $nbr1 + $nbr2 ;
    }
    else if ($operateur = "-")
    {
        $resultat = $nbr1 - $nbr2 ;
    }
    else if ($operateur = "*")
    {
        $resultat = $nbr1 * $nbr2 ;
    }
    else if ($operateur = "/")
    {
        $resultat = $nbr1 / $nbr2 ;
    }
    return $resultat ;
}
echo calculator (4, "*", 4) ;
    ?>
</body>
</html>