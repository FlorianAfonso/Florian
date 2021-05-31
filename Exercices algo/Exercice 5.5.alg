<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="DEBUT_ALGORITHME"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" maxBoucle="500000" totalAffichages="1000" nbDecimales="8" epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez un nombre#1" algoitem="AFFICHER &quot;Entrez un nombre&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
        <item code="12#i#1#nb" algoitem="POUR i ALLANT_DE 1 A nb">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#somme#somme+i#pasliste" algoitem="somme PREND_LA_VALEUR somme+i"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="3#somme#0#pasliste" algoitem="AFFICHER somme"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
