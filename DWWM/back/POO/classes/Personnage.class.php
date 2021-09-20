<?php
class Personnage
{
    private $_nom ;
    private $_prenom ;
    private $_age ;
    private $_sexe ;

    public function __construct($_nom = "Loper", $_prenom = "Dave", $_age = 69, $_sexe = "Homme")
    {
        $this->_nom = $_nom ;
        $this->_prenom = $_prenom ;
        $this->_age = $_age ;
        $this->_sexe = $_sexe ;
    }

    public function setNom($sNom)
    {   
        $this->_nom = $sNom ;
    }

    public function setPrenom($sPrenom)
    {   
        $this->_prenom = $sPrenom ;
    }
    
    public function setAge($sAge)
    {   
        $this->_age = $sAge ;
    }

    public function setSexe($sSexe)
    {   
        $this->_sexe = $sSexe ;
    }

    public function __toString(): string
    {
        return "Bonjour je m'appelle $this->_prenom $this->_nom, j'ai $this->_age ans et je suis un $this->_sexe." ;
    }
}