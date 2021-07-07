<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="DEBUT_ALGORITHME"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables" >
        <item algoitem="A EST_DU_TYPE NOMBRE" code="1#NOMBRE#A" />
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo" >
        <item algoitem="AFFICHER &quot;Quel age a votre enfant ?&quot;" code="4#Quel age a votre enfant ?#0" />
        <item algoitem="LIRE A" code="2#A#pasliste" />
        <item algoitem="SI (A&gt;=12) ALORS" code="6#A&gt;=12">
            <item algoitem="DEBUT_SI" code="7#debutsi" />
            <item algoitem="AFFICHER &quot;Categorie Cadet&quot;" code="4#Categorie Cadet#0" />
            <item algoitem="FIN_SI" code="8#finsi" />
        </item>
        <item algoitem="SI (A&gt;=10) ALORS" code="6#A&gt;=10">
            <item algoitem="DEBUT_SI" code="7#debutsi" />
            <item algoitem="AFFICHER &quot;Categorie Minime&quot;" code="4#Categorie Minime#0" />
            <item algoitem="FIN_SI" code="8#finsi" />
            <item algoitem="SINON" code="9#sinon" >
                <item algoitem="DEBUT_SINON" code="10#debutsinon" />
                <item algoitem="SI (A&gt;=8) ALORS" code="6#A&gt;=8">
                    <item algoitem="DEBUT_SI" code="7#debutsi" />
                    <item algoitem="AFFICHER &quot;Categorie Pupille&quot;" code="4#Categorie Pupille#0" />
                    <item algoitem="FIN_SI" code="8#finsi" />
                    <item algoitem="SINON" code="9#sinon" >
                        <item algoitem="DEBUT_SINON" code="10#debutsinon" />
                        <item algoitem="SI (A&gt;=6) ALORS" code="6#A&gt;=6">
                            <item algoitem="DEBUT_SI" code="7#debutsi" />
                            <item algoitem="AFFICHER &quot;Categorie Poussin&quot;" code="4#Categorie Poussin#0" />
                            <item algoitem="FIN_SI" code="8#finsi" />
                            <item algoitem="SINON" code="9#sinon" >
                                <item algoitem="DEBUT_SINON" code="10#debutsinon" />
                                <item algoitem="SI (A&lt;=5) ALORS" code="6#A&lt;=5">
                                    <item algoitem="DEBUT_SI" code="7#debutsi" />
                                    <item algoitem="AFFICHER &quot;Pas recrutable&quot;" code="4#Pas recrutable#0" />
                                    <item algoitem="FIN_SI" code="8#finsi" />
                                    <item algoitem="SINON" code="9#sinon" >
                                        <item algoitem="DEBUT_SINON" code="10#debutsinon" />
                                        <item algoitem="FIN_SINON" code="11#finsinon" />
                                    </item>
                                </item>
                                <item algoitem="FIN_SINON" code="11#finsinon" />
                            </item>
                        </item>
                        <item algoitem="FIN_SINON" code="11#finsinon" />
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon" />
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo" />
</Algo>