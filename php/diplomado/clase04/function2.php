<?php

$hacer_algo = true;

/* No podemos llamar a foo() desde aquí
   ya que no existe aún,
   pero podemos llamar a bar() */

bar();

if ($hacer_algo) {
  function foo()
  {
    echo "No existo hasta que la ejecución del programa llegue hasta mí.\n";
  }
}

/* Ahora podemos llamar de forma segura a foo()
   ya que $hacer_algo se evaluó como verdadero */

if ($hacer_algo) foo();

function bar()
{
  echo "Existo desde el momento inmediato que comenzó el programa.\n";
}

?>
