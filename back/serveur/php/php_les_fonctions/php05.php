<html>
<body>
    <?php
function calculator($val1,$val2,$operateur){

switch($operateur){
    case "+":
        return $val1+$val2 ;
    case "-":
        return $val1-$val2 ; 
    case "":
        return $val1$val2 ; 
    case "/":
        return $val1/$val2 ;

}
};

echo calculator(3,2,"/");
 
    ?>
</body>
</html>