var form_inscription= document.querySelector('#inscription');
var champ_nom = form_inscription.elements["nom"];
var champ_prenom = form_inscription.elements["prenom"];
var champ_email = form_inscription.elements["mail"];
var champ_cp = form_inscription.elements["cp"];
//var regExMail = /^[a-zA-Z]+\.?(\w+)?\d+@[a-zA-Z]+\.[a-z]+/

var form_OK = true;

form_inscription.addEventListener('submit', (e)=>{

console.log(e.target);

if(champ_cp.value.length != 5 || isNaN(champ_cp.value)){
    alert("Veuillez entrez un code postale 5 chiffres s.v.p.")
}else if(!form_OK){
    e.preventDefault();
}

if(champ_nom = ""){
    form_OK = false;
    alert("Veuillez renseigner votre Nom s.v.p.");
}else if(!form_OK){
    e.preventDefault();
}

if(champ_prenom = ""){
    form_OK = false;
    alert("Veuillez renseigner votre Prénom s.v.p.");
}else if(!form_OK){
    e.preventDefault();
}

if( !champ_email.value.includes("@")){
    alert('c\'est pas la bonne ');
    e.preventDefault();
}

})




function valider (event) {
    
}

form_inscription.addEventListener('submit', valider)