<?php
//echo phpinfo();
//die;
//echo "Hola mundo!\n";
//echo "PHP version:".phpversion();
//echo $_SERVER["HTTP_USER_AGENT"];
#echo $_SERVER["HTTP_ACCEPT_LANGUAGE"];
//var_dump($_SERVER);
//$semana = ["lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo"];
//echo "hola hoy es $semana[3]";

//echo "Nombre:".$array[0][0]." Edad: ".$array[0][1]." Cargo: ".$array[0][2];
//echo $array[1][0];
/*
$alumnosSeminario = ["Hugo", "Carlos", "Henry", "Luisa","Junior"];

for($i=0; $i<=4;$i++)
{
    echo $alumnosSeminario[$i].'<br>';
    echo '<pre>'.$alumnosSeminario[$i].'</pre>'; 
    //echo "\n";
}*/
/*$array = [ 
            ["Angelica",    24, "Vendedora"     ],
            ["Lucia",       22, "Impulsadora"   ],
            ["Marcela",     35, "Contadora"     ]
        ];

for ($i=0; $i<count($array);$i++){
   //echo '<pre>'.$array[$i][0]." es ".$array[$i][2]." y tiene ".$array[$i][1]." años".'</pre>';
   echo $array[$i][0]." es ".$array[$i][2]." y tiene ".$array[$i][1]." años".'<br>';
}*/

for($i=1;$i<=10;$i+=2){
    echo "Esta es la tabla del $i";
    echo '<br>';
    for($j=1;$j<=10;$j++){
        echo $j.' * '.$i.' = '.$j*$i;
        echo '<br>';
    }
    echo '<br>';
}

?>
