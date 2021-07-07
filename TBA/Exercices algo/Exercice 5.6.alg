<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER F"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#N" algoitem="N EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#F" algoitem="F EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez un nombre :#0" algoitem="AFFICHER &quot;Entrez un nombre :&quot;"/>
        <item code="2#N#pasliste" algoitem="LIRE N"/>
        <item code="5#F#1#pasliste" algoitem="F PREND_LA_VALEUR 1"/>
        <item code="12#i#2#N" algoitem="POUR i ALLANT_DE 2 A N">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#F#F*i#pasliste" algoitem="F PREND_LA_VALEUR F*i"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#La factorielle est :#0" algoitem="AFFICHER &quot;La factorielle est :&quot;"/>
        <item code="3#F#0#pasliste" algoitem="AFFICHER F"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
