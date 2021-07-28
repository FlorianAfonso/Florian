<html>
<head> 
<title> DateTime </title>
</head>
<body>

<?php
$DateDisplay = '2019-07-14' ;
echo 'Semaine' . ' '. Date('W',strtotime($DateDisplay)) . ' de ' . Date('Y',strtotime($DateDisplay));
?>
</body>
</html>
