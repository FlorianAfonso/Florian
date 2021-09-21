<?php
class Magasin {
    protected $_nom_magasin ;
    private $_adresse ;
    private $_code_postal ;
    private $_ville ;
    private $_restauration ;

    public function __construct($nom_magasin = "Shelby LTD", $adresse = "30 Gin street", $code_postal = 80000, $ville = "Birmingham", $restauration = "self-service"){
        $this->_nom_magasin = $nom_magasin ;
        $this->_adresse = $adresse ;
        $this->_code_postal = $code_postal ;
        $this->_ville = $ville ;
        $this->_restauration = $restauration ;
    }

    public function setNom($sNom_magasin){
        $this->nom_magasin = $sNom_magasin ;
    }

    public function sAdresse($sAdresse){
        $this->adresse = $sAdresse ;
    }

    public function sCode_postal($sCode_postal){
        $this->code_postal = $sCode_postal ;
    }

    public function sVille($sVille){
        $this->ville = $sVille ;
    }

    public function sRestauration($sRestauration){
        $this->restauration = $sRestauration ;
    }

    public function presentation(){
        echo "Le magasin $this->_nom_magasin ce trouve à l'adresse suivante : $this->_adresse dans le ville de $this->_ville. Il dispose de ce type de restauration : $this->_restauration." ;
    }
}