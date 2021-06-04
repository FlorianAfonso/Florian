var tableau = [];
var nombre_element=parseInt(prompt("Veuillez saisir un nombre de fruit :"),10);


for(var i=1; i<=nombre_element-1; i++)
{
   element_ajouter=(prompt("Veuillez saisir le nom du fruit :"));

   tableau.push(element_ajouter+"</br>"+ "  " );
   document.write("Fruit N°=" + i + " " +tableau[i]);

}