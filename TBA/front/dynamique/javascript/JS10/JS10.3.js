 var Tableau = new Array(10,7,1,6,2,5,4,9,3,8);

 for (var ind01 = Tableau.length-1; ind01 >= 0;ind01--) {
     var temp;
     for (var ind02 = Tableau.length-1; ind02 >= 0;ind02--) {
         if (Tableau[ind02] < Tableau[ind01]) {
             temp = Tableau[ind02];
             Tableau[ind02] = Tableau[ind01];
             Tableau[ind01] = temp;
         }
     }

}

for (var ind01 = 0; ind01 < Tableau.length;ind01++) {
         document.write(Tableau[ind01])
 }