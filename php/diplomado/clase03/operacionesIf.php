 <?php // Ejemplo funciones aprenderaprogramar.com
    function operaciones($n1, $n2, $operacion) {
        //
        $resultado = 0;
        //
        if($operacion == "Sumar") {
            echo "Suma de los numeros $n1 y $n2 =";
            $resultado = $n1 + $n2;
        }else if($operacion == "Restar") {
            echo "Resta de los numeros $n1 y $n2 =";
            $resultado = $n1 - $n2;
        }else if($operacion == "Multiplicar") {
            echo "Multiplicacion de los numeros $n1 y $n2 =";
            $resultado = $n1 * $n2;
        }else if($operacion == "Dividir") {
            if($n2 == 0){
                echo "Error: no se puede dividir por cero ";
            }else{
                echo "Division de los numeros $n1 y $n2 =";
                $resultado = $n1 / $n2;
            }
        }
        //
    return $resultado; // Devolver el resultado
    }

    // Llamar a la función operaciones
    $r = operaciones(5, 7, "Sumar");
    echo $r. "\n";
    // O podemos imprimir directamente
    echo operaciones(15, 8, "Restar"). "\n";
    // O podemos imprimir directamente
    echo operaciones(15, 8, "Multiplicar"). "\n";
    echo operaciones(15, 0, "Dividir"). "\n";
    echo operaciones(15, 5, "Dividir"). "\n";
?>
