var prenom ;
var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"] ;
prenom = window.prompt("Veuillez saisir un prénom :");
var index = tab.indexOf(prenom);
if (index > -1 )
{
    tab.splice(index, 1);
    tab.push(" ");
    console.log(tab);
}

else
{
    alert("Ce prénom ne figure pas dans le tableau");
    console.log(tab);
}