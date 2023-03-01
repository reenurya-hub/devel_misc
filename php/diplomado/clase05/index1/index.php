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
function Operacion($n1, $n2, $n3, $n4=1, $n5=1 )
{
    $res = $n1 + $n2 * $n3 - $n4 / $n5;
    return $res;
}
//
/*
for ($row = 0; $row < =3; $row++) {
    for ($col = 0; $col <= 4; $col++) {
        if (is_null($numeros[$row][$col])){

        }
    }
  }
*/

foreach ($numeros as $valores) {
    if(isset($valores[3])){
        $nuevoValor3 = $valores[3];
    }else{
        $nuevoValor3 = 1;
    }
    
    $nuevoValor4 = isset($valores[4])? $valores[4] : 1;

    $resultado = Operacion($valores[0],$valores[1],$valores[2],$nuevoValor3,$nuevoValor4);
    echo "la operacion de $valores[0] + $valores[1] * $valores[2] - $nuevoValor3 / $nuevoValor4 es = $resultado"."</br>";
}


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
