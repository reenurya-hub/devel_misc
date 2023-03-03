<?php
//Arreglo de arreglo con animales y atributos de animal y
//luego mostrar los atributos
$animales = [['lucas',2,'blanco y negro', 'filipino', 'cuack'],
['bunny',4,'blanco y azul', 'Irlandes','que hay de nuevo viejo!!'],
['Coyote',2,'cafe y gris', 'Americano','fiuuuuuuu... pum!'],
['Porky',4,'rosado', 'Argentino','eso eso eso eso es todo amigos!']
];

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
/*
animales = [
    ['lucas',2,'blanco y negro', 'filipino', 'cuack'],
    ['bunny',4,'blanco y azul', 'Irlandes','que hay de nuevo viejo!!'],
};
*/
foreach ($animales as $valores) {
    $looney_toon = new Animal();
    $looney_toon -> setName($valores[0]);
    $looney_toon -> setPaws($valores[1]);
    $looney_toon -> setColor($valores[2]);
    $looney_toon -> setRace($valores[3]);
    $looney_toon -> setSound($valores[4]);
    $respuesta = $looney_toon -> printDescription();
echo $respuesta;
echo "</br>";
echo "<hr>";
}
