var form_inscription= document.querySelector('#inscription');
var champ_nom = form_inscription.elements["nom"];
var champ_prenom = form_inscription.elements["prenom"];
var champ_email = form_inscription.elements["mail"];
var champ_cp = form_inscription.elements["cp"];
var regNom = new RegExp("^[a-zA-Z]+$");
var regPrenom = new RegExp("^[a-zA-Z]+$");
var form_OK = true;

form_inscription.addEventListener('submit', (e)=>{

console.log(e.target);

if(champ_cp.value.length != 5 || isNaN(champ_cp.value)){
    alert("Veuillez entrez un code postale 5 chiffres s.v.p.")
    form_OK = false;
    e.preventDefault();
}

if(champ_nom.value == "" || champ_nom.value == null || regNom.test(champ_nom.value) == false ){
    alert("Veuillez renseigner votre Nom s.v.p.");
    form_OK = false;
    e.preventDefault();
    
}

if(champ_prenom.value == "" || champ_prenom.value == null || regPrenom.test(champ_prenom.value) == false ){
    alert("Veuillez renseigner votre Prénom s.v.p.");
    form_OK = false;
    e.preventDefault();
}

if( !champ_email.value.includes("@")){
    alert("Veuillez renseigner une adresse E-mail valide s.v.p.");
    form_OK = false;
    e.preventDefault();
}


})


form_inscription.addEventListener('submit', valider)

