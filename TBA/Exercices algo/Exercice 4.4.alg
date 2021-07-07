<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;€&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" epaisseurLigne="2" nbDecimales="8" maxBoucle="500000" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="NC EST_DU_TYPE NOMBRE" code="1#NOMBRE#NC"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Nombre de copie ?&quot;" code="4#Nombre de copie ?#1"/>
        <item algoitem="LIRE NC" code="2#NC#pasliste"/>
        <item algoitem="SI (NC&lt;=10) ALORS" code="6#NC&lt;=10">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHERCALCUL NC*0.1" code="20#NC*0.1#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (NC&lt;=30) ALORS" code="6#NC&lt;=30">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHERCALCUL 1+(NC-10)*0.09" code="20#1+(NC-10)*0.09#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (NC>30) ALORS" code="6#NC>30">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHERCALCUL 2.8+(NC-30)*0.08" code="20#2.8+(NC-30)*0.08#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="AFFICHER &quot;€&quot;" code="4#€#1"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
