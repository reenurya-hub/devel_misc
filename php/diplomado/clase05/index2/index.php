<?php
/*
function sumarTresNumeros($numero1, $numero2, $numero3)
{
    $resultado = $numero1 + $numero2 + $numero3;
    return $resultado;
}
$sumatoria = sumarTresNumeros(78,19,84);
echo "la sumatoria es $sumatoria";
*/
$numeros = [
            [5,8,10,3,2],
            [1,9,7,8,3],
            [4,8,4,3],
            [3,9,15]
        ];
//
/*
function Operacion($n1, $n2, $n3, $n4=1, $n5=1 )
{
    $res = $n1 + $n2 * $n3 - $n4 / $n5;
    return $res;
}

foreach ($numeros as $valores) {
    if(isset($valores[3])){
        $nuevoValor3 = $valores[3];
    }else{
        $nuevoValor3 = 1;
    }
    
    $nuevoValor4 = isset($valores[4])? $valores[4] : 1;

    $resultado = Operacion($valores[0],$valores[1],$valores[2],$nuevoValor3,$nuevoValor4);
    //echo Operacion($valores[0],$valores[1],$valores[2],$nuevoValor3,$nuevoValor4);
    //echo "</br>";
    echo "la operacion de $valores[0] + $valores[1] * $valores[2] - $nuevoValor3 / $nuevoValor4 es = $resultado"."</br>";
}
*/


//
/*
for ($row = 0; $row < =3; $row++) {
    for ($col = 0; $col <= 4; $col++) {
        if (is_null($numeros[$row][$col])){

        }
    }
  }
*/


/*
foreach ($numeros as $datos) {
    for($i=0;$i<=4;$i++){
        $arrayenvio = $datos[i];
    }
    
    if(is_null($d)){
        $d = 1;
    }
    if(is_null($e)){
        $e = 1;
    }
    $resultado = Operacion($a,$b,$c,$d,$e);
    echo "la operacion de $a + $b * $c - $d / $e es = $resultado"."</br>";
}
*/

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

//$raton = new Animal();
//$raton -> setName('Miguelito');
//echo $raton -> nombrePrincipal;
//var_dump($raton);
//echo $raton -> getName();

$minotauro = new Animal();
$minotauro -> setName('Mickey');
$minotauro -> setColor("gris claro");
$minotauro -> setRace('criollo');
$minotauro -> setPaws(7);
$minotauro -> setSound('muuuu');
//el animal mickey es de raza criollo, con color gris claro, tiene 7 patas t hace muuu
$respuesta = $minotauro -> printDescription();
echo $respuesta;

echo "</br>";

$perro = new Animal();
$perro -> setName('lucky');
$perro -> setColor("amarillo");
$perro -> setRace('labrador');
$perro -> setPaws(5);
$perro -> setSound('guau');
$respuesta = $perro -> printDescription();
echo $respuesta;

echo "</br>";

$gato = new Animal();
$gato -> setName('felix');
$gato -> setColor("negro");
$gato -> setPaws(4);
$gato -> setRace('bengali');
$gato -> setSound('miau');
$respuesta = $gato -> printDescription();
echo $respuesta;
