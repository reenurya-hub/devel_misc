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

/*for($i=1;$i<10;$i+=2){
    echo "Esta es la tabla del $i";
    echo '<br>';
    for($j=1;$j<=10;$j++){
        echo $j.' * '.$i.' = '.$j*$i;
        echo '<br>';
    }
    echo '<br>';
}*/

$cargos = [ 
            [  
            'nombre'=>'Angelica',    
            'edad'  => 24, 
            'cargo' => 'Vendedora'     
            ],
            
            [  
                'nombre'=>'Lucia',    
                'edad'  => 22, 
                'cargo' => 'Impulsadora'     
            ],
            
            [  
                'nombre'=>'Marcela',    
                'edad'  => 35, 
                'cargo' => 'Contadora'     
            ]
        ];
        
        for($i=0;$i<=2;$i++)
        {
            echo $cargos[$i]['nombre'].' tiene '.$cargos[$i]['edad'].' y su cargo es '.$cargos[$i]['cargo'].'<br>';
        }

        $cargos2 = [ 
            'novia'=>[  
            'nombre'=>'Angelica',    
            'edad'  => 24, 
            'cargo' => 'Vendedora'     
            ],
            
            'amiguis'=>[  
                'nombre'=>'Lucia',    
                'edad'  => 22, 
                'cargo' => 'Impulsadora'     
            ],
            
            'esposa'=>[  
                'nombre'=>'Marcela',    
                'edad'  => 35, 
                'cargo' => 'Contadora'     
            ]
        ];
        echo "<br>";
        echo 'La esposa '.$cargos2['esposa']['nombre'].' tiene '.$cargos2['esposa']['edad'].' y su cargo es '.$cargos2['esposa']['cargo'].'<br>';

        $numeroPrimos = [ 
            ['nombre' => 'Dos', 'valor' => 2]

            ];

            foreach($numeroPrimos as $dato){
                echo "la tabla del ".$dato['nombre']
            }

?>
