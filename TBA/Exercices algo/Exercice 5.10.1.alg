<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="LIRE P"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" totalAffichages="1000" arrondiAuto="vrai" totalBoucles="5000000" maxBoucle="500000" nbDecimales="8" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="N EST_DU_TYPE NOMBRE" code="1#NOMBRE#N"/>
        <item algoitem="P EST_DU_TYPE NOMBRE" code="1#NOMBRE#P"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="Numé EST_DU_TYPE NOMBRE" code="1#NOMBRE#Numé"/>
        <item algoitem="Déno1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#Déno1"/>
        <item algoitem="Déno2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#Déno2"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrez le nombre de chevaux partant : &quot;" code="4#Entrez le nombre de chevaux partant : #1"/>
        <item algoitem="LIRE N" code="2#N#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez le nombre de chevaux joués :&quot;" code="4#Entrez le nombre de chevaux joués :#1"/>
        <item algoitem="LIRE P" code="2#P#pasliste"/>
        <item algoitem="Numé PREND_LA_VALEUR 1" code="5#Numé#1#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 2 A N" code="12#i#2#N">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="Numé PREND_LA_VALEUR Numé*i" code="5#Numé#Numé*i#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="Déno1 PREND_LA_VALEUR 1" code="5#Déno1#1#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 2 A N-P" code="12#i#2#N-P">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="Déno1 PREND_LA_VALEUR Déno1*i" code="5#Déno1#Déno1*i#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="Déno2 PREND_LA_VALEUR 1" code="5#Déno2#1#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 2 A P" code="12#i#2#P">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="Déno2 PREND_LA_VALEUR Déno2*i" code="5#Déno2#Déno2*i#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Dans l'ordre , une chance sur&quot;" code="4#Dans l'ordre , une chance sur#1"/>
        <item algoitem="AFFICHERCALCUL Numé/Déno1" code="20#Numé/Déno1#1"/>
        <item algoitem="AFFICHER &quot;Dans le désordre , une chance sur&quot;" code="4#Dans le désordre , une chance sur#1"/>
        <item algoitem="AFFICHERCALCUL Numé/(Déno1*Déno2)" code="20#Numé/(Déno1*Déno2)#1"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
