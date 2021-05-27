<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="DEBUT_ALGORITHME"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables" >
        <item algoitem="sex EST_DU_TYPE CHAINE" code="1#CHAINE#sex" />
        <item algoitem="age EST_DU_TYPE NOMBRE" code="1#NOMBRE#age" />
        <item algoitem="c1 EST_DU_TYPE CHAINE" code="1#CHAINE#c1" />
        <item algoitem="c2 EST_DU_TYPE CHAINE" code="1#CHAINE#c2" />
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo" >
        <item algoitem="AFFICHER &quot;Entrez le sexe (M&#x2F;F) :&quot;" code="4#Entrez le sexe (M&#x2F;F) :#0" />
        <item algoitem="LIRE sex" code="2#sex#pasliste" />
        <item algoitem="AFFICHER &quot;Entrez l'age&quot;" code="4#Entrez l'age#0" />
        <item algoitem="LIRE age" code="2#age#pasliste" />
        <item algoitem="c1 PREND_LA_VALEUR sex == &quot;M&quot; ET age &gt; 20" code="5#c1#sex == &quot;M&quot; ET age &gt; 20#pasliste" />
        <item algoitem="c2 PREND_LA_VALEUR sex == &quot;F&quot; ET (age &gt; 18 ET age &lt;35)" code="5#c2#sex == &quot;F&quot; ET (age &gt; 18 ET age &lt;35)#pasliste" />
        <item algoitem="SI (c1 OU c2) ALORS" code="6#c1 OU c2">
            <item algoitem="DEBUT_SI" code="7#debutsi" />
            <item algoitem="AFFICHER &quot;Imposable&quot;" code="4#Imposable#1" />
            <item algoitem="FIN_SI" code="8#finsi" />
            <item algoitem="SINON" code="9#sinon" >
                <item algoitem="DEBUT_SINON" code="10#debutsinon" />
                <item algoitem="AFFICHER &quot;Non imposable&quot;" code="4#Non imposable#1" />
                <item algoitem="FIN_SINON" code="11#finsinon" />
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo" />
</Algo>