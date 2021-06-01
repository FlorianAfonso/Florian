
var nombre1 = parseInt(prompt("Saisir le premier chiffre"));
var nombre2 = parseInt(prompt("Saisir le second chiffre"));
var operateur = prompt("Saisir operateur");
var resultat;

switch (operateur)
{   
  case "+" :
    resultat = (nombre1+nombre2);
     break; 

  case "-" :   
  resultat = (nombre1-nombre2); 
     break;  

  case "*" :
    resultat = (nombre1*nombre2);
     break;

  case "/" :
      if (nombre2==0){
          alert("Choisir un autre chiffre")
      }
      else {
              resultat = (nombre1/nombre2);
      }
      break;
}
 
     document.write(resultat);