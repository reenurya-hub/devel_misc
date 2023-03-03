<?php
class Bicicleta{
    private $marca='generica';
    private $color='negro';
    private $rin=22;
 
    /*
    function setMarca($pMarca)
    {
        $this -> marca = $pMarca;
    }

    function getMarca(){
        return $this -> marca;
    }
    */

    function display(){
        //$dMarca = $this->marca;
        echo 'La bicicleta es de marca '.$this->marca.', tiene color '.$this->color.', y el rin es '.$this->rin;
    }
/*
    function __construct($marca, $color, $rin) {
        $this -> marca = 'generica';
        $this -> color = 'negro';
        $this -> rin   = '22';
    }
*/
function __construct($marca, $color, $rin) {
    $this -> marca = $marca;
    $this -> color = $color;
    $this -> rin   = $rin;
}

/*
function __destruct() {
    print "Destruyete " . __CLASS__ . "<br>";
}
*/

}

