<html>
<body>
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
</body>
</html>