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

/*$array = [ 
            ["Angelica",    24, "Vendedora"     ],
            ["Lucia",       22, "Impulsadora"   ],
            ["Marcela",     35, "Contadora"     ]
        ];*/
//echo "Nombre:".$array[0][0]." Edad: ".$array[0][1]." Cargo: ".$array[0][2];
//echo $array[1][0];

$alumnosSeminario = ["Hugo", "Carlos", "Henry", "Luisa","Junior"];

for($i=0; $i<=4;$i++)
{
   echo '<pre>';
   echo $alumnosSeminario[$i]; 
   echo '</pre>';
   //echo "\n";
}
?>