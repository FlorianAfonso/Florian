const form = document.querySelector("form");
const Societe = document.querySelector("Societe");
const PaC = document.querySelector("PaC");
const cp = document.querySelector("cp");
const ville = document.querySelector("ville");
const mail = document.querySelector("mail");
const tel = document.querySelector("tel");



var bouton_envoyer= document.getElementById("envoyer");
bouton_envoyer.addEventListener("click",ma_fonction);

function ma_fonction(){

    var PaC= document.getElementById("PaC");
    if(PaC=""){

            alert("Entrez le nom de la personne à contacter s.v.p. !");
            document.write(alert)

    }

    var cp= document.getElementById("cp");
    if(cp <=4 || cp >=6) {

        alert("Entrez le code postal sur 5 chiffre s.v.p. !")
        document.write(alert)
    }

}
