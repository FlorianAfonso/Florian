var moyenne = 0;
var somme = 0;
var saisie;
var index = 0;
while (saisie!=0)
{
    saisie = parseInt(prompt("Veuillez saisir un nombre :\n on arrête la saisie a zero"),10);
    somme = somme + saisie;
    index++ 
    moyenne = somme/(index-1);
}

document.write("moyenne = " + moyenne +'</br>');
document.write(" somme = " + somme);
