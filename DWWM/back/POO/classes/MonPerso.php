<?php
require "Personnage.class.php";

$p = new Personnage();
$p->setNom("Doe");
$p->setPrenom("John");
$p->setAge("31");
$p->setSexe("Homme");

echo ($p);

?>