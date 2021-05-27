<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="DEBUT_ALGORITHME"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables" >
        <item algoitem="H EST_DU_TYPE NOMBRE" code="1#NOMBRE#H" />
        <item algoitem="M EST_DU_TYPE NOMBRE" code="1#NOMBRE#M" />
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo" >
        <item algoitem="LIRE H" code="2#H#pasliste" />
        <item algoitem="LIRE M" code="2#M#pasliste" />
        <item algoitem="M PREND_LA_VALEUR M+1" code="5#M#M+1#pasliste" />
        <item algoitem="SI (M==60) ALORS" code="6#M==60">
            <item algoitem="DEBUT_SI" code="7#debutsi" />
            <item algoitem="H PREND_LA_VALEUR H+1" code="5#H#H+1#pasliste" />
            <item algoitem="M PREND_LA_VALEUR &quot;00&quot;" code="5#M#&quot;00&quot;#pasliste" />
            <item algoitem="FIN_SI" code="8#finsi" />
        </item>
        <item algoitem="SI (H==24) ALORS" code="6#H==24">
            <item algoitem="DEBUT_SI" code="7#debutsi" />
            <item algoitem="H PREND_LA_VALEUR &quot;00&quot;" code="5#H#&quot;00&quot;#pasliste" />
            <item algoitem="FIN_SI" code="8#finsi" />
        </item>
        <item algoitem="AFFICHER &quot;Dans une minute il sera :&quot;" code="4#Dans une minute il sera :#1" />
        <item algoitem="AFFICHER H" code="3#H#0#pasliste" />
        <item algoitem="AFFICHER &quot;:&quot;" code="4#:#0" />
        <item algoitem="AFFICHER M" code="3#M#0#pasliste" />
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo" />
</Algo>