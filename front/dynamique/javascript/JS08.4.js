var X = parseInt(prompt("Veuillez saisir X"));
var N = parseInt(prompt("Veuillez saisir N"));
var resultat =0;

for(var i =1; i<=N;i++)
{
    resultat=i*X;
    document.write(i +" x "+ X + " = "+resultat+"</br>");
}