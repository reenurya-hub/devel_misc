<?php
class Animal{
    public $nombrePrincipal;
    public $razaPrincipal;
    public $numPatasPrincipal;
    public $colorPrincipal;
    public $sonidoPrincipal;
    //name
    function setName($nombreExterno)
    {
        $this -> nombrePrincipal = $nombreExterno;
    }

    function getName(){
        return $this -> nombrePrincipal;
    }

    //raza
    function setRace($razaExterna)
    {
        $this -> razaPrincipal = $razaExterna;
    }

    function getRace(){
        return $this -> razaPrincipal;
    }

    //numero_patas
    function setPaws($numPatasExterno)
    {
        $this -> numPatasPrincipal = $numPatasExterno;
    }

    function getPaws(){
        return $this -> numPatasPrincipal;
    }

    //color
    function setColor($colorExterno)
    {
        $this -> colorPrincipal = $colorExterno;
    }

    function getColor(){
        return $this -> colorPrincipal;
    }

    //sonido
    function setSound($sonidoExterno)
    {
        $this -> sonidoPrincipal = $sonidoExterno;
    }

    function getSound(){
        return $this -> sonidoPrincipal;
    }

    function printDescription(){
        $name = $this->getName();
        $race = $this->getRace();
        $color = $this ->getColor();
        $paws = $this -> getPaws();
        $sound = $this -> getSound();
        $message = "El animal ".$name." es de raza ".$race." con color ".$color.", tiene ".$paws." patas y hace ".$sound;
        //$message = $message."hola";
        return $message;
    }

}

