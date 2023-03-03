<?php
class Carro{
    private $numLlantasPpal;
    private $colorPpal;
    private $numPuertasPpal;
    private $marcaPpal;
    private $modeloPpal;
    private $valorPpal;
    //name
    function setNumLlantas($numLlantasExt)
    {
        $this -> numLlantasPpal = $numLlantasExt;
    }

    function getNumLlantas(){
        return $this -> numLlantasPpal;
    }

    //raza
    function setColor($colorExt)
    {
        $this -> colorPpal = $colorExt;
    }

    function getColor(){
        return $this -> colorPpal;
    }

    //numero_patas
    function setNumPuertas($numPuertasExt)
    {
        $this -> numPuertasPpal = $numPuertasExt;
    }

    function getNumPuertas(){
        return $this -> numPuertasPpal;
    }

    //color
    function setMarca($marcaExt)
    {
        $this -> marcaPpal = $marcaExt;
    }

    function getMarca(){
        return $this -> marcaPpal;
    }

    function setValor($valorExt)
    {
        $this -> valorPpal = $valorExt;
    }

    function getValor(){
        return $this -> valorPpal;
    }


    function setModelo($modeloExt)
    {
        $this -> modeloPpal = $modeloExt;
    }

    function getModelo(){
        return $this -> modeloPpal;
    }

    function printDescription(){
        $numLlantas = $this->getNumLlantas();
        $color = $this->getColor();
        $numPuertas = $this ->getNumPuertas();
        $marca = $this -> getMarca();
        $valor = $this -> getValor();
        $modelo = $this -> getModelo();
        $message =  "El vehiculo de marca ".$marca.
                    ", cuenta con ".$numLlantas." llantas mas la de repuesto. <br> Su hermoso color ".
                    $color." hace que resalte sobre los demas. <br> El modelo es ".$modelo;
        
                    /*"El carro tiene ".$numLlantas.
                    " llantas, es de color ".$color.
                    ", tiene ".$numPuertas.
                    " puertas, es de marca ".$marca.
                    ", es modelo ".$modelo;*/
        //$message = $message."hola";
        return $message;
    }

}

