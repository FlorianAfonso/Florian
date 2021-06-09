var chiffre = prompt("Entrez un chiffre");
var resultat;

resultat = chiffre%2;

if (resultat==0)
{
    document.write("Chiffre paire");
}
else
{
    document.write("Chiffre impaire");
}