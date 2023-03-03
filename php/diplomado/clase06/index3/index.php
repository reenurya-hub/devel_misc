<?php
include "carro.php";
$car = new carro();
$car -> setNumLlantas(4);
$car -> setColor("negro");
$car -> setNumPuertas(4);
$car -> setMarca('Mazda');
$car -> setValor('50000000');
$car -> setModelo('2024');
$respuesta = $car -> printDescription();
echo $respuesta;
