<?php
include "animal.php";
$gato = new Animal();
$gato -> setName('felix');
$gato -> setColor("negro");
$gato -> setPaws(4);
$gato -> setRace('bengali');
$gato -> setSound('miau');
$respuesta = $gato -> printDescription();
echo $respuesta;
