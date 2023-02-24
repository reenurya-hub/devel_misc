<?php
/*
<?php
 
function fibonacci($n)
{
    $fibonacci  = [0,1];
 
  for($i=2;$i<=$n;$i++)
    {
        $fibonacci[] = $fibonacci[$i-1]+$fibonacci[$i-2];
    }
    echo $fibonacci[$n];
}
 
fibonacci(10);
 
?>

$num1=50;
$num2="num1";
//$num3 busca valor de $num2 que es $num1
$num3 = $$num2;

echo $num3;
*/

//constantes deberian nombrarse en mayuscula
//define("NOMBRE_PROFE", "luigi 21+");

//echo NOMBRE_PROFE;
//print(NOMBRE_PROFE);

/*
define("NOMBRE", "Reinaldo");
define("APELLIDO", "Urquijo");
define("EDAD", "38");

echo "Mi nombre es ".NOMBRE." ".APELLIDO." y tengo ".EDAD." años"."\n";

define("NOMBRE", "Luigi");

function holaConNombre($nombrePersona, $apellidoPersona, $edadPersona =0){
    echo "Hola Comfa. \nBienvenid(@) a $nombrePersona $apellidoPersona \n";
    echo "Usted tiene $edadPersona años.\n";
    if ($edadPersona ==0){
        echo "Debe ingresar una edad válida";
    }
}
$nombre     = "Reinaldo";
$apellido   = "Urquijo";
$edad       = 38;
holaConNombre(/*$nombre "Reinaldo", /*$apellido "Urquijo"/*, /*$edad );
*/
/*
$array = [  [51,49],
            [82,18],
            [33,69],
            [100,5]
        ];

function calcular($n1, $n2, $op=1){
    switch ($op) {
        case 1:
            $result = $n1+$n2;
            echo "la suma de $n1 + $n2 es = $result\n";
            break;
        case 2:
            $result = $n1-$n2;
            echo "la resta de $n1 - $n2 es = $result\n";
            break;
        case 3:
            $result = $n1*$n2;
            echo "la multiplicacion de $n1 * $n2 es = $result\n";
            break;
        case 4:
            if($n2 !=0){
                $result = $n1/$n2;
                echo "la division de $n1 / $n2 es = $result\n";
            }
            else{
                echo "No se puede dividir por cero!\n";
            }
            break;
                                
        default:
                echo "Debe ingresar una operacion valida\n";
        break;
    }
    

}

foreach ($array as list($a, $b)) {
    sumar($a,$b);
}

foreach ($array as $misdatos) {
    for($i=1;$i<=4;$i++){
        calcular($misdatos[0],$misdatos[1],$i);
    }
}
*/
function areaCuadrado($lado){
    $result = $lado * $lado;
    echo "el area del cuadrado lado ".$lado." es : ".$result."\n";
}

areaCuadrado(2);

function areaTriangulo($base, $altura){
    $result = ($base * $altura)/2;
    echo "el area del triángulo cuya base ".$base." y altura ".$altura." es : ".$result."\n";
}

function areaCirculo($radio){
    define("PI",3.1416);
    $result = ($radio * (PI*PI));
    echo "el area del circulo cuyo radio es: ".$radio." tiene de área: ".$result."\n";
}
areaTriangulo(2,3);


$monedas = [['dolar', 4905],
            ['euro', 5002],
            ['bolivar', 0.0025],
            ['peso mexicano', 250]
            ];

function convertirMoneda($moneda, $valor, $pesos){
            $result = $valor * $pesos;
            echo "Valor de ".$pesos." pesos en ".$moneda." es de: ".$result."\n";
}


foreach ($monedas as list($a, $b)) {
    convertirMoneda($a,$b, 10000);
}

/*
0
1
1 + 1 =2
2 + 1 = 3
3 + 2 = 5
*/

function fibonacci($n){
    
        if($n==0){
            echo "0";
            
        }else if($n==1){
            echo "1";
            
        }else{
            //0,1,1,2,3,
            /*
            iteracion 0 = 0
            iteracion 1 = 0,1
            iteracion 2 = 0,1,1
            iteracion 3 = 0,1,1,2
            iteracion 4 = 0,1,1,2,3
            */
            /*
            $fibonacci  = [0,1];
            for($i=2;$i<=$n;$i++)
            {
                $fibonacci[] = $fibonacci[$i-1]+$fibonacci[$i-2];
            }
            echo "Valor de fibonacci :".$fibonacci[$n];
            */
            $valor1=0;
            $valor2=1;
            $valor3=$valor1+$valor2;
            echo $valor1 ;
            echo $valor2 ;

            for($i=0;$i<$cantidad;$i++){
                echo $valor3."<br>";
                $valor1=$valor2;
                $valor2=$valor3;
                $valor3=$valor1+$valor2;
            }
        }
    
}

fibonacci(3);
/*
l*l
circunferencia = pi * r2
*/
function areaFigura($base, $altura, $figura){
    switch ($figura){
        case 'cuadrado':
        areaCuadrado($base);
        break;
        case 'triangulo':
        areaTriangulo($base, $altura);
        break;
        case 'circulo':
        areaCirculo($base);
        break;
        default:
        echo "figura no encontrada";
        break;
    }

    areaFigura(3, 0, 'cuadrado');
    areaFigura(3, 2, 'triangulo');
    areaFigura(6, 0, 'circulo');
}
