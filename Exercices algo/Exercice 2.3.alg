<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="pttc PREND_LA_VALEUR nb* pht* ( 1+ ttva/100 )" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2"/>
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
        <item code="5#pttc#nb* pht* ( 1+ ttva/100 )#pasliste" algoitem="pttc PREND_LA_VALEUR nb* pht* ( 1+ ttva/100 )"/>
        <item code="4#Le prix toute taxe est :#1" algoitem="AFFICHER &quot;Le prix toute taxe est :&quot;"/>
        <item code="3#pttc#1#pasliste" algoitem="AFFICHER pttc"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
