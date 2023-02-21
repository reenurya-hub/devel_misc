<?php

$número = 1234.56;

// notación inglesa (por defecto)
$número_formato_inglés = number_format($número);
// 1,235
echo $número_formato_inglés."\n";

// notación francesa
$nombre_format_francais = number_format($número, 2, ',', ' ');
// 1 234,56
echo $número_formato_inglés."\n";


$número = 1234.5678;

// notación inglesa sin separador de millares
$english_format_number = number_format($número, 2, '.', '');
// 1234.57
echo $número_formato_inglés."\n";

?>
