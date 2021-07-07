<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" epaisseurLigne="2" totalAffichages="1000" nbDecimales="8" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#A" algoitem="A EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#B" algoitem="B EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#C" algoitem="C EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#D" algoitem="D EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#c1" algoitem="c1 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#c2" algoitem="c2 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#c3" algoitem="c3 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#c4" algoitem="c4 EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez les scores des quatre participants#1" algoitem="AFFICHER &quot;Entrez les scores des quatre participants&quot;"/>
        <item code="2#A#pasliste" algoitem="LIRE A"/>
        <item code="2#B#pasliste" algoitem="LIRE B"/>
        <item code="2#C#pasliste" algoitem="LIRE C"/>
        <item code="2#D#pasliste" algoitem="LIRE D"/>
        <item code="5#c1#A > 50#pasliste" algoitem="c1 PREND_LA_VALEUR A > 50"/>
        <item code="5#c2#B > 50 OU C > 50 OU D > 50#pasliste" algoitem="c2 PREND_LA_VALEUR B > 50 OU C > 50 OU D > 50"/>
        <item code="5#c3#A >= B ET A >= C ET A >= D#pasliste" algoitem="c3 PREND_LA_VALEUR A >= B ET A >= C ET A >= D"/>
        <item code="5#c4#A >= 12.5#pasliste" algoitem="c4 PREND_LA_VALEUR A >= 12.5"/>
        <item code="6#c1" algoitem="SI (c1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Elu au premier tour#1" algoitem="AFFICHER &quot;Elu au premier tour&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#c2 OU Non(c4)" algoitem="SI (c2 OU Non(c4)) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Battu , éliminé, sorti !!!#1" algoitem="AFFICHER &quot;Battu , éliminé, sorti !!!&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#c3" algoitem="SI (c3) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="4#Ballotage favorable#1" algoitem="AFFICHER &quot;Ballotage favorable&quot;"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                            <item code="9#sinon" algoitem="SINON">
                                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                <item code="4#Ballotage favorable#1" algoitem="AFFICHER &quot;Ballotage favorable&quot;"/>
                                <item code="11#finsinon" algoitem="FIN_SINON"/>
                            </item>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
