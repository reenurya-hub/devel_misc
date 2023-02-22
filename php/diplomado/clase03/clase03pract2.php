<?php
/*
for($i=0; $i<=14; $i++){
    for($j=0;$j<=20;$j++){
        echo "*";    
    }
    echo "\n";
}


$a = 50;
while ($a >=40 ){
    echo $a."\n";
    $a--;
}
*/


/*
...-... 7-1 6/2 = 3 imprime 3 espacios, un asterisco, 3 espacios
..---..  7-3 4/2 = 2 imprime 2 espacios, tres asteriscos, 2 espacios
.-----. 7-5 2/2 = 1  imprime 1 espacio, cinco asteriscos, 1 espacio
------- 7-7 = 0/2 = 0 imprime 7 asteriscos
*/
/*
$a=15;
do{
    echo $a."\n";
    $a++;
}while($a <= 10);
*/

// Arreglo asociativo para las tablas de multiplicar de los numeros primos.
/*$numeroPrimos = [
    ['nombre' => 'Dos', 'valor' => 2],
    ['nombre' => 'Tres', 'valor' => 3],
    ['nombre' => 'Cinco', 'valor' => 5],
    ['nombre' => 'Siete', 'valor' => 7],
    ['nombre' => 'Once', 'valor' => 11],
    ['nombre' => 'Trece', 'valor' => 13],
    ['nombre' => 'Diecisiete', 'valor' => 17],
    ['nombre' => 'Diecinueve', 'valor' => 19],
    ['nombre' => 'Veintitres', 'valor' => 23],
    ['nombre' => 'Veintinueve', 'valor' => 29],
    ['nombre' => 'Treinta y uno', 'valor' => 31],
    ['nombre' => 'Treinta y siete', 'valor' => 37]
];

foreach($numeroPrimos as $pepito){
    echo $pepito['nombre']."\n";
}
*/
/*col = 0 
col = 20
fil = 0
fil = 20
*/

/*
$a=105;
do{
    echo $a."\n";
    $a=$a+23;
}while($a <= 480);


for($a=105; $a<=480; $a+=23){
    echo $a."\n";
}

$i = 1;
while($i<=100){
    echo "$i - ".$i/4;
    echo "\n";
    $i=$i+6;
}

$nota = 185;

if($nota < 1 || $nota > 100){
    echo "Nota no valida";
}
else{
    if(($nota > 59) && ($nota < 70) ){
        echo "Habilita";
    }else{
        if ($nota > 69){
            echo "Aprobado";
        }else{
            echo "reprobado";
        }
    }
}

$nota = 69.5;

if($nota < 1 || $nota > 100){
    echo "Nota no valida";
}
else{
        if(($nota >= 70) ){
            echo "Aprobado";
        } elseif ($nota > 59){
            echo "Habilita";
        } else{
            echo "Reprobado";
        }
}


$nota = 100;

if($nota < 1 || $nota > 100){
    echo "Nota no valida";
}
else{
        if(($nota >= 70) ){
            echo "Aprobado";
        } elseif ($nota > 59){
            echo "Habilita";
        } else{
            echo "Reprobado";
        }
}



echo date('y-m-d H:i:s')."<br>";
echo date('w')."<br>";
echo date_default_timezone_set('UTC')."<br>";
*/
$diadelasemana = 2;//date('w');
//
switch ($diadelasemana) {
    case 0:
        echo 'Domingo : Salio el sol, nos vamos de paseo';
        break;
    case 1:
        echo 'Lunes : Se acabo la guachafita. A trabajar..';
        break;
    case 2:
        echo 'Martes: El dia mas feliz de mi vida, voy al seminario';
        break;
    case 3:
        echo 'Miercoles: El ombligo de la semana';
        break;
    case 4:
        echo 'Jueves; otro dia feliz para mi, vamos a seminario';
        break;
    case 5:
        echo 'Viernes: El cuerpo lo sabe';
        break;
    case 6:
        echo 'Sabado: Nos vemos en Paradise';
        break;
    default:
        echo 'Y esto que contiene no hay un dia seleccionado';
        break;
}
