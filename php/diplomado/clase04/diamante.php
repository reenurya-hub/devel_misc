<?php
// Your code here!
$ancho = 7;
$i=1;
$j=0;
$imprime = 0;
/*
...-... 7-1 6/2 = 3 imprime 3 espacios, un asterisco, 3 espacios
..---..  7-3 4/2 = 2 imprime 2 espacios, tres asteriscos, 2 espacios
.-----. 7-5 2/2 = 1  imprime 1 espacio, cinco asteriscos, 1 espacio
------- 7-7 = 0/2 = 0 imprime 7 asteriscos
*/
for($i=1;$i<=7;$i=$i+2){
    $imprime = ($ancho - $i) / 2;
    for($j=1;$j<=$imprime;$j++){
        echo " ";
    }

    for($j=1;$j<=$i;$j++){
        echo "*";
    }

    for($j=1;$j<=$imprime;$j++){
        echo " ";
    }
    echo "\n";
}

for($i=7;$i>=1;$i=$i-2){
    $imprime = ($ancho - $i) / 2;
    for($j=1;$j<=$imprime;$j++){
        echo " ";
    }
    

    for($j=1;$j<=$i;$j++){
        echo "*";
    }

    for($j=1;$j<=$imprime;$j++){
        echo " ";
    }
    
    echo "\n" ;
}
