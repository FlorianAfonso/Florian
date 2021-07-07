var PU = parseInt(prompt("Entrez un prix unitaire "));
var QTECOM = parseInt(prompt("Quantité commandé "));
var TOT = PU * QTECOM;
var REM=0;
var PAP= TOT-REM;
console.log("Le prix d'achats de vos articles est de " + TOT +  " EUROS");


function AfficheRemise (TOT){

var TOT = PU * QTECOM;
var PAP=0;
var REM=0;

if(TOT>100 && TOT<200){
    REM = TOT*0.05;
    PAP = TOT-REM;
    console.log("Une remise de 5% est offerte, soit " + (REM) +" euros en moins sur votre prix d'achats. Le prix avec remise est de  : "+ PAP + " EUROS. ");
    return PAP;

}
if(TOT>=200){
    REM = TOT*0.1;
    PAP = TOT-REM;
    console.log("Une remise de 10% est offerte, soit " + REM +" euros en moins sur votre prix d'achats. Le prix avec remise est de  : "+ PAP + " EUROS. ");
    return PAP; 
}
else{
   REM = 0;
   PAP = TOT-REM;
    console.log("la remise est de 0%. Le prix à payer est toujours de " + TOT + " EUROS. ");
    return PAP;
}

}

function AjoutPort(){
var PORT=0;
var Result=0;
    if(AfficheRemise(PAP)>500){
        console.log("Aucun frais n'est ajouté");
    } else {
        PORT = (AfficheRemise(PAP))*0.02;
        Result= (AfficheRemise(PAP))+PORT;
        if (PORT<6){
            PORT = 6;
            Result= (AfficheRemise(PAP))+PORT;
            console.log("Les frais de port sont de 6€ minimum")
        }
        console.log(" Des frais de port à hauteur de 2% s'ajoutent au prix remisé. Le prix total est de : "+ Result + "EUROS");
    }

}





(AfficheRemise());
(AjoutPort());