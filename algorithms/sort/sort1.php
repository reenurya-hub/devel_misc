<?php

//$scores = [100, 100, 90, 80, 80, 70];
$scores = [70, 100, 80, 80, 90, 100];

$orden = [0,0,0,0,0,0];

//for($j=0; $j<= 5; $j++){
    //organizar una lista de mayor a menor
    for($i = 0; $i <= 5; $i++ ){
        if($i == 0){
            $may = $scores[$i];
            echo "mayor inicial: ".$may." indice: ".$i." Elemento: ".$scores[$i]."\n"; 
        }else{
            if($may <= $scores[$i]){
                $may = $scores[$i];
                
            }
            echo "mayor ahora: ".$may." indice: ".$i." Elemento: ".$scores[$i]."\n"; 
        }
    }

//}
