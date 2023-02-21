<?php
function escribe_separa($cadena){ 
   	for ($i=0;$i<strlen($cadena);$i++){ 
      	echo $cadena[$i]; 
      	if ($i<strlen($cadena)-1) 
         	echo "-"; 
   	} 
} 

escribe_separa ("hola"); 
escribe_separa("\n");
escribe_separa ("Texto mas largo, a ver lo que hace"); 
