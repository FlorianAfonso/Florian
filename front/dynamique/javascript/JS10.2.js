function GetInteger() 
{
    Entier =parseInt(prompt("Veuillez saisir un nombre"));

    if(Number.isInteger(Entier))
    {
    return Entier;
    }
}

nbr= GetInteger(); 

function InitTab()
{
    tab= new Array(nbr);

    return tab;

}


tab=InitTab();

function saisie()
{
 
    for(var i=0; i<=nbr-1;i++)
    {


       tab[i]=parseInt(prompt("Veuillez saisir un poste"))

    }
}
 

function AfficheTab()
{
    for(var i=0; i<=nbr-1;i++)
    {


 
       console.log(i + " " + tab[i]);
       document.write("<h4>le postes du tableau" + " " +i + " est de : " + tab[i] + "</br>"+"<h4>");
    }
    document.write();
}

function RechercheTab ()
{
    var rang = parseInt(prompt("Saisir le rang d'un poste pour afficher son contenu :"+""));
    if(rang < tab.length)
    {
        document.write("</br><h3>"+"le poste de tableau dont le rang est saisi :" + rang + " est de " + " " + tab[rang]+"<h3>");
    }
    else
    {
        alert('le rang est superieur a la taille du tableau');
        rang = parseInt(prompt("Saisir le rang d'un poste pour afficher son contenu :"));
    }
}


function InfoTab (arr)
{
    var count=0;
    for(var i=0; i<=arr.length-1;i++)
    {
       count = count  + arr[i];
    }

        document.write("<br><h3> la moyenne des postes :" +  count/(arr.length-1) + "</h3>") ; 
        document.write("<h3>le maximum des postes :" + Math.max(...tab)+ "</h3>") ;

}

saisie();
AfficheTab();
RechercheTab();
InfoTab (tab);
