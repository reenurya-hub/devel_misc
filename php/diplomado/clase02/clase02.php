<?php
// Información de la versión PHP instalada en el servidor
// phpinfo();

// Declaración de variables y asignacion de valores string / texto
$firstName = "Luigi";
$lastName = "OsoQui";

// Declaración de variables y asignacion de valores enteros / numeros
$personAge = 44;
echo "Hola Soy $firstName $lastName y estoy en el Diplomado. Tengpo $personAge años";

// Creacion de arreglos, vectores, matrices.
$alumnosSeminario = array('Hugo', 'Carlos', 'Henry', 'Luisa', 'Junior');

// Impresion de un dato del arreglo
echo "Hola, yo soy $alumnosSeminario[2]";

// Creacion de arreglo con llaves cuadradas [] e impresion de toda la data
$alumnosSeminario2 = ['Hugo', 'Carlos', 'Henry', 'Luisa', 'Junior'];
var_dump($alumnosSeminario2);

// Ciclo for, para impresion de arreglos.
for($incremento = 0; $incremento < 5; $incremento++ )
{
    echo "$alumnosSeminario2[$incremento] <br>";
}

// Creacion de arreglos de arreglos
$cargos = [
    ['Angelica', 24, 'Vendedora'],
    ['Lucia', 32, 'Impulsadora'],
    ['Marcela', 35, 'Contadora']
];

// Ciclo for, para recorrer el arreglo
for ($i=0; $i < count($cargos); $i++) { 
    echo $cargos[$i][0] . " es " . $cargos[$i][2] , " y tiene " . $cargos[$i][1] . " años <br>";
}

// Aprendiendo el ciclo for anidado, con las tablas de multiplicar, con base impar
for ($i=1; $i < 10; $i+= 2) { 
    echo "Esta es la tabla del $i <br>";
    for ($j=1; $j <= 10; $j++) { 
        echo "$i X $j = " . ( $i * $j ) . "<br>"; 
    }
    echo "<br>";
}

// Creando arreglos asociativos
$familia = [
    'madre' => [
        'nombre' => 'Ceneida',
        'edad' => 72,
        'cargo' => 'Pensionada'
    ],
    'hermana' => [
        'nombre' => 'Mariluz',
        'edad' => 46,
        'cargo' => 'Ingeniera'
    ],
    'esposa' => [
        'nombre' => 'Angela',
        'edad' => 38,
        'cargo' => 'Administradora'
    ]
];

// Impresion de la edad de mi hermana
echo $familia['hermana']['edad'];

// Arreglo asociativo para las tablas de multiplicar de los numeros primos.
$numeroPrimos = [
    ['nombre' => 'Dos', 'valor' => 2],
    ['nombre' => 'Tres', 'valor' => 3],
    ['nombre' => 'Cinco', 'valor' => 5],
    ['nombre' => 'Siete', 'valor' => 7],
    ['nombre' => 'Once', 'valor' => 11],
    ['nombre' => 'Trece', 'valor' => 13],
    ['nombre' => 'Diecisiete', 'valor' => 17],
    ['nombre' => 'Diecinueve', 'valor' => 19],
    ['nombre' => 'Veintitres', 'valor' => 23],
    ['nombre' => 'Veintinueve', 'valor' => 29],
    ['nombre' => 'Treinta y uno', 'valor' => 31],
    ['nombre' => 'Treinta y siete', 'valor' => 37]
];

foreach($numeroPrimos as $dato)
{
    echo '<h2>La tabla del ' . $dato['nombre'] . ' <small>(' . $dato['valor'] . ')</small></h2><br>';
    for ($i=1; $i <= 10; $i++) { 
        echo $dato['valor'] . ' X ' . $i . ' = ' . ( $dato['valor'] * $i ) . '<br>';
    }
    echo '<br>';
}
