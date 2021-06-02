var mot = prompt("saisissez un mot : ").toLocaleLowerCase();
var voyellesNum = 0;
for(var i = 0; i < mot.length; i++){
  if( mot[i] == "i" || mot[i] == "a" || mot[i] == "e" ||mot[i] == "y"|| mot[i] == "o" ||mot[i] == "u" ||mot[i] == "y" ){
voyellesNum++
  }
}
console.log(voyellesNum);
document.write(voyellesNum);