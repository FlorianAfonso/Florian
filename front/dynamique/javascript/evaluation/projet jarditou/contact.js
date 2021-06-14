var form_inscription= document.querySelector('#inscription');
var champ_nom = form_inscription.elements["nom"];
var champ_prenom = form_inscription.elements["prenom"];
var champ_email = form_inscription.elements["mail"];
var champ_cp = form_inscription.elements["cp"];
var form_OK = true;

form_inscription.addEventListener('submit', (e)=>{

console.log(e.target);

if(champ_cp.value.length != 5 || isNaN(champ_cp.value)){
    alert("Veuillez entrez un code postale 5 chiffres s.v.p.")
    form_OK = false;
}

if(champ_nom.value == ""){
    alert("Veuillez renseigner votre Nom s.v.p.");
    form_OK = false;
    
}

if(champ_prenom = ""){
    alert("Veuillez renseigner votre Prénom s.v.p.");
    form_OK = false;
}

if( !champ_email.value.includes("@")){
    alert("Veuillez renseigner une adresse E-mail valide s.v.p.");
    form_OK = false;
    
}

if(!form_OK){
    e.preventDefault();
}
})

function valider (event) {
    
}

form_inscription.addEventListener('submit', valider)

