<?php

//$scores = [100, 100, 90, 80, 80, 70];
$original = [70, 100, 80, 80, 90, 100];
$orden    = array(0,0,0,0,0,0);
$temp = 0;
$k=0;

function mover_array($pmayor, $pidx,$porden){
    $temp = $porden[0];
    $porden[0] = $pmayor;
    $k=1;
    do{
        $porden[$k] = $temp;
        $k++;
        $temp=$porden[$k];
    }while($k>=5);
	return $porden;
}

    //recorrer el array original
    for($i = 0; $i <= 5; $i++ ){
        //ahora tenemos el elemento $scores[i] para evaluarlo contra todo el array orden
        for($j=0;$j<=5;$j++){
            // si el a comparar 
            if($orden[$j]>$original[$i]){
                $mayor = $orden[$j];
                //$menor = $original[$i];
                $orden = mover_array($mayor, $j,$orden);
            }else if($orden[$j]<$original[$i]){
                $mayor = $original[$i];
                //$menor = $orden[$j];

                $orden = mover_array($mayor, $j,$orden);
            }else{
                $mayor = $original[$i];
                //$menor = $orden[$j];
                $orden = mover_array($mayor, $j,$orden);
            }
        }

    }




for($j=0; $j<= 5; $j++){
    echo $orden[$j].",";
}
