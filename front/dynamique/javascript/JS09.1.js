var X = window.prompt("Entrez un chiffre :");
var Y = window.prompt("Entrez un multiplicateur :");
var produit = function(X, Y)
{
    return X * Y;
}

var img = function(src)
{
    document.write(src);
}
img('<img src="../javascript/papillon.jpg">' +"</br>" );

var cube = function(X)
{
    return X * X * X;
}

document.write("Le cube de " + X + " est de " + cube(X) + "</br>");
console.log("Le cube de " + X + " est de " + cube(X));
document.write("Le produit de " + X + " x " + Y + " est de " + produit(X, Y) + "</br>");
console.log("Le produit de " + X + " x " + Y + " est de " + produit(X, Y));