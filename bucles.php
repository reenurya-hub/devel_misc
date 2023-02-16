<?php
$edad = 18;
if ($edad >= 18){
    echo "eres mayor de edad\n";
}
else
{
    echo "eres menor de edad\n";
}
// eres mayor de edad
$num1 = 2;
echo "2 elevado al cuadrado es: ".$num1**2;
echo "\n";
$x = 5;
$x += 5; //$x valdrá 10
echo "El valor de la variable \"x\" es: ".$x."\n";
$cadena = "Hola ";
$cadena .= "mundo"; //$cadena ahora vale "hola mundo"
echo "El valor de la variable cadena \"cadena\" es: "."\"$cadena\"\n";
$sentido[0]="ver"; 
$sentido[1]="tocar";
$sentido[2]="oir"; 
$sentido[3]="gusto"; 
$sentido[4]="oler";
for ($i = 0; $i <= 4; $i++) 
{
    echo "Valor del indice ".$i." en el array \"sentido\": ".$sentido[$i]."\n";
}
$array = array(1, 2, 3, 4);
foreach ($array as &$valor) {
    echo "valor antes de cambiar: ".$valor;
    $valor = $valor *2;
    echo " . Valor de elemento despues de cambiar: ".$valor."\n";
}
unset($array); // rompe la referencia con el último elemento
$semana = array("lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo");
foreach ($semana as $dia) {
    echo "Dia de la semana : $dia.\n";
}
/* Ejemplo 4 de foreach: arrays multidimensionales */
$a = array();
$a[0][0] = "a";
$a[0][1] = "b";
$a[1][0] = "y";
$a[1][1] = "z";

foreach ($a as $v1) {
    foreach ($v1 as $v2) {
        echo "$v2\n";
    }
}
$array = [
    [1, 2],
    [3, 4],
];

foreach ($array as list($a, $b)) {
    // $a contiene el primer elemento del array interior,
    // y $b contiene el segundo elemento.
    echo "A: $a; B: $b\n";
}
?>
