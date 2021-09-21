<?php

require_once "Magasin.class.php" ;

class Employe extends Magasin

{
    private $_nom ;
    private $_prenom ;
    private $_embauche ;
    private $_poste ;
    private $_salaire ;
    private $_service ;
    private $_magasin ;
    private $_repas ;
    private $_vacance ;
    private $_nbEnfant ;
    private $_ageEnfant ;
    private $_noel ;


    public function __construct($nom="Loper", $prenom="Dave", $embauche="2001/06/27", $poste="salarié", $salaire=12, $service="RH", $magasin="Tokyo", $repas="Ticket restaurant", $vacance="", $nbEnfant="0", $ageEnfant="0", $noel="non"){
        parent::__construct($nom_magasin = "Shelby LTD", $adresse = "30 Gin street", $code_postal = 80000, $ville = "Birmingham", $restauration = "self-service") ;
        $this->_nom = $nom ;
        $this->_prenom = $prenom ;
        $this->_embauche = $embauche ;
        $this->_poste = $poste ;
        $this->_salaire = $salaire ;
        $this->_service = $service ;
        $this->_magasin = $magasin ;
        $this->_repas = $repas ;
        $this->_vacance = $vacance ;
        $this->_nbEnfant = $nbEnfant ;
        $this->_ageEnfant = $ageEnfant ;
        $this->_noel = $noel ;
    }

    public function setNom($sNom){
        $this->_nom = $sNom ;
    }

    public function setPrenom($sPrenom){
        $this->_prenom = $sPrenom ;
    }

    public function setEmbauche($sEmbauche){
        $this->_embauche = $sEmbauche ;
    }

    public function setPoste($sPoste){
        $this->_poste = $sPoste ;
    }

    public function setSalaire($sSalaire){
        $this->_salaire = $sSalaire ;
    }

    public function setService($sService){
        $this->_service = $sService ;
    }

    public function setMagasin($sMagasin){
        $this->_magasin = $sMagasin ;
    }

    public function setRepas($sRepas){
        $this->_repas = $sRepas ;
    }

    public function setVacance($sVacance){
        $this->_vacance = $sVacance ;
    }

    public function setNbEnfant($sNbEnfant){
        $this->_nbEnfant = $sNbEnfant ;
    }

    public function setAgeEnfant($sAgeEnfant){
        $this->_ageEnfant = $sAgeEnfant ;
    }

    public function setNoel($sNoel){
        $this->_noel = $sNoel ;
    }

    public function annees()
    {
        $date = new DateTime();
        $date2 = new DateTime("$this->_embauche");
        $diff = $date2->diff($date)->y ;
        return $diff ;

    }

    public function vacance()
    {
        if ($this->annees() >=1 ){
            $this->_vacance="oui" ;
            return $this->_vacance ; 
        }
        else {
            $this->_vacance="non" ;
            return $this->_vacance ;
        }
    }

    public function enfants()
    {
        if ($this->_ageEnfant >= 1 && $this->_ageEnfant <= 10){
            $this->_noel = 20 ;
            return $this->_noel ;
        }
        else if ($this->_ageEnfant >= 11 && $this->_ageEnfant <= 15){
            $this->_noel = 30 ;
            return $this->_noel ;
        }
        else if ($this->_ageEnfant >= 16 && $this->_ageEnfant <= 18){
            $this->_noel = 50 ;
            return $this->_noel ;
        }
        else{
            $this->_noel = 0 ;
            return $this->_noel ;
        }
    }


    public function presentation() {
        echo "Je m'appelle $this->_prenom $this->_nom, je suis arrivé le $this->_embauche dans le service
        $this->_service au poste de $this->_poste et je touche $this->_salaire € par an. Je suis dans l'affaire familiale de $this->_magasin depuis " . $this->annees() . " ans.
        Le magasin est $this->_nom_magasin. Le midi c'est : $this->_repas . On a le droit au ticket ?   " . $this->vacance() . ". Mon enfant à  $this->_ageEnfant ans, j'ai donc une prime de Noël de " . $this->enfants() . "€";
    }

    public function prime(){
        $prime = $this->_salaire * 5 / 100 ;
        return $prime ;
    }

    public function presentation_prime() {
        echo "Mon salaire est de $this->_salaire € par an et je touche une prime de " . $this->prime() . "€." ;
    }

    public function anciennete(){
        $i = 1 ;
        $salaire_anciennete = $this->_salaire ;
        while ($i <= $this->annees()){
            $salaire_anciennete = $salaire_anciennete + ($salaire_anciennete * 2 / 100) ;
            $i++ ;
        }
        return round($salaire_anciennete - $this->_salaire, 2) ;
    }

    public function presentation_anciennete(){
        echo "Mon salaire de base est de $this->_salaire € par an et puisque j'ai " . $this->annees() . " ans d'ancienneté dans l'entreprise familiale je touche une prime d'ancienneté de " . $this->anciennete() . "€." ;
    }

    public function prime_totale(){
        $prime_totale = $this->prime() + $this->anciennete() ;
        return $prime_totale ;
    }

    public function presentation_prime_totale(){
        echo "Par an, j'ai une prime totale de " . $this->prime_totale() . " €." ;
    }

}