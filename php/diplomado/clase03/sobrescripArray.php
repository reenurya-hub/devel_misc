<?php
// Ejemplo de amoldamiento de tipo y sobrescritura
$array = array(
    1    => "a",
    "1"  => "b",
    1.5  => "c",
    true => "d",
);
var_dump($array);

$array2 = array(
    1    => "a",
    "1"  => "b",
    1.5  => "c",
    true => "d",
    2.3  => "sopa",
    2.5  => "seco",
    2.7  => "postre"
);
var_dump($array2);


?>
