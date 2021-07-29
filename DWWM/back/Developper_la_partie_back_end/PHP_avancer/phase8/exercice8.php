<?php

$jour = date("Y-m-d"); // Notre Date par default

$mod = strtotime($jour."+ 1 months");
echo date("Y-m-d",$mod) . "\n";

?>