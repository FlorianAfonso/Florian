function GetInteger() 
{
    Entier =parseInt(prompt("Veuillez saisir un nombre"));

    if(Number.isInteger(Entier))
    {
    return Entier;
    }
}

function InitTab()

{
var Tableau = new Array(GetInteger());
console.log(Tableau);
return Tableau;

}

console.log(InitTab());


 function SaisieTab()
 {
    for(var i = 0; i<=InitTab().length;i++)
    {
        Ajout_Element=prompt("Veuillez saisir les poste du tableau");
        InitTab()
    }

}