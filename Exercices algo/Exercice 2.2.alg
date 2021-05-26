<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHERCALCUL pttc =nb* pht* (1 + ttva)" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8" totalBoucles="5000000" totalAffichages="1000" epaisseurPoint="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pht" algoitem="pht EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#ttva" algoitem="ttva EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pttc" algoitem="pttc EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez le prix hors taxes :#1" algoitem="AFFICHER &quot;Entrez le prix hors taxes :&quot;"/>
        <item code="2#pht#pasliste" algoitem="LIRE pht"/>
        <item code="4#Entrez le nombre d'articles :#1" algoitem="AFFICHER &quot;Entrez le nombre d'articles :&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="4#Entrez le taux TVA#1" algoitem="AFFICHER &quot;Entrez le taux TVA&quot;"/>
        <item code="2#ttva#pasliste" algoitem="LIRE ttva"/>
        <item code="20#pttc =nb* pht* (1 + ttva)#0" algoitem="AFFICHERCALCUL pttc =nb* pht* (1 + ttva)"/>
        <item code="4#Le prix toute taxe est :#1" algoitem="AFFICHER &quot;Le prix toute taxe est :&quot;"/>
        <item code="2#pttc#pasliste" algoitem="LIRE pttc"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
