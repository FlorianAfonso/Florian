<?php
class Employe
{
    private $_nom ;
    private $_prenom ;
    private $_dateEmbauche ;
    private $_fonction ;
    private $_salaire ;
    private $_service ;

    public function __construct($nom = "Doe", $prenom = "John", $dateEmbauche = "2015/09/21", $fonction = "Directeur", $salaire = 150000, $service = "Gestion" )
    {
        $this->_nom = $nom ;
        $this->_prenom = $prenom ;
        $this->_dateEmbauche = $dateEmbauche ;
        $this->_fonction = $fonction ;
        $this->_salaire = $salaire ;
        $this->_service = $service ;
    }

    public function setNom($sNom)
    {   
        $this->_nom = $sNom ;
    }

    public function setPrenom($sPrenom)
    {   
        $this->_prenom = $sPrenom ;
    }
    
    public function setDateEmbauche($sDateEmbauche)
    {   
        $this->_dateEmbauche = $sDateEmbauche ;
    }


    public function setFonction($sFonction)
    {   
        $this->_fonction = $sFonction ;
    }

    public function setSalaire($sSalaire)
    {   
        $this->_salaire = $sSalaire ;
    }

    public function setService($sService)
    {   
        $this->_service = $sService ;
    }


    public function presentation()
    {
        var_dump ("Bonjour je m'appelle $this->_prenom $this->_nom, je suis embauché depuis le $this->_dateEmbauche en temp que $this->_fonction pour un salaire annuel de $this->_salaire K . Je travail dans le service de $this->_service .") ;
    }
    
    public 
}

?>