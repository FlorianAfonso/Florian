<?php   

    function est_bissextile($annee)
    {
        return date("m-d", strtotime("$annee-02-29")) == "02-29";
    }
 
     echo($annee = '2024');
     
?>


