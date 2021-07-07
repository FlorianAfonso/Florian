<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="SI ((i = 1) OU (N > PG)) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" maxBoucle="500000" nbDecimales="8" epaisseurPoint="2" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="N EST_DU_TYPE NOMBRE" code="1#NOMBRE#N"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="PG EST_DU_TYPE NOMBRE" code="1#NOMBRE#PG"/>
        <item algoitem="IPG EST_DU_TYPE NOMBRE" code="1#NOMBRE#IPG"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="PG PREND_LA_VALEUR 0" code="5#PG#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 1 A 20" code="12#i#1#20">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Entrez un nombre&quot;" code="4#Entrez un nombre#1"/>
            <item algoitem="LIRE N" code="2#N#pasliste"/>
            <item algoitem="SI ((i = 1) OU (N > PG)) ALORS" code="6#(i = 1) OU (N > PG)">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="PG PREND_LA_VALEUR N" code="5#PG#N#pasliste"/>
                <item algoitem="IPG PREND_LA_VALEUR i" code="5#IPG#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Le nombre le plus grand était :&quot;" code="4#Le nombre le plus grand était :#1"/>
        <item algoitem="AFFICHER PG" code="3#PG#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Il été saisi en position numéro&quot;" code="4#Il été saisi en position numéro#1"/>
        <item algoitem="AFFICHER IPG" code="3#IPG#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
