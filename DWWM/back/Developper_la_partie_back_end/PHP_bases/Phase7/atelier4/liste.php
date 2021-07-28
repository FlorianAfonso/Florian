<?php
$DATABASE_HOST = 'localhost';
$DATABASE_NAME = 'jarditou';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';

try
{
    $db = new PDO('mysql:host=' . $DATABASE_HOST . ';dbname=' . $DATABASE_NAME . ';charset=utf8', $DATABASE_USER, $DATABASE_PASS);
    setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $answer = $db->query('SELECT * FROM produits');
} 
catch (PDOException $exception) 
{
    echo $exception->getMessage() . "<br>";
    die();
}
?>

<section>
    <div class="table-responsive table-striped table-hover table-bordered">
        <table class="table text-center">
            <thead class="h4 thead-light">
            <tr>
                <th scope="col">Photo</th>
                <th scope="col">ID</th>
                <th scope="col">Référence</th>
                <th scope="col">Libellé</th>
                <th scope="col">Prix</th>
                <th scope="col">Stock</th>
                <th scope="col">Couleur</th>
                <th scope="col">Date d'ajout</th>
                <th scope="col">Date de modification</th>
                <th scope="col">Statut</th>
            </tr>
            </thead>
            <tbody>
            <?php while ($row = $answer->fetch(PDO::FETCH_OBJ)): ?>
                <tr>
                    <td><img src="src/images/<?php echo "$row->pro_id.$row->pro_photo"; ?>" class="img-fluid" alt="<?php echo $row->pro_libelle; ?>" title="<?php echo $row->pro_libelle; ?>"></td>
                    <td><?php echo $row->pro_id; ?></td>
                    <td><?php echo $row->pro_ref; ?></td>
                    <td><u><a class="font-weight-bold text-danger" href="details.php?pro_id=<?php echo $row->pro_id ?>"><?php echo $row->pro_libelle ?></a></u></td>
                    <td><?php echo $row->pro_prix; ?>€</td>
                    <td><?php echo $row->pro_stock; ?></td>
                    <td><?php echo $row->pro_couleur; ?></td>
                    <td><?php echo $row->pro_d_ajout; ?></td>
                    <td><?php echo $row->pro_d_modif; ?></td>
                    <td>
                        <?php 
                        if ($row->pro_bloque == 1)
                        {
                            echo 'Oui';
                        }
                        ?>
                    </td>
                    <?php 
                    endwhile; 
                    $answer->closeCursor();
                    ?>
                </tr>
            </tbody>
        </table>
    </div>
</section>
