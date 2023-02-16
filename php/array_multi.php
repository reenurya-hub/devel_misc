<?php
$pais=array
        (
            "brasil" =>array
                        (
                            "nombre"=>"Brasil",
                            "idioma"=>"Portugues",
                            "moneda"=>"Real"
                        ),
            "colombia" =>array
                        (
                            "nombre"=>"Colombia",
                            "idioma"=>"Espaniol",
                            "moneda"=>"Peso colombiano"
                        )
);
echo "Pais  : ".$pais["colombia"]["nombre"]."\n"; //Saca en pantalla: "Peso colombiano"
echo "Moneda: ".$pais["colombia"]["moneda"]."\n"; //Saca en pantalla: "Peso colombiano"
echo "Idioma: ".$pais["colombia"]["idioma"]."\n"; //Saca en pantalla: "Peso colombiano"
?>
