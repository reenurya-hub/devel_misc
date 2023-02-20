<?php
$b=1;
recursividad($b);
function recursividad($a)
{
    if ($a < 20) {
        echo "$a\n";
        recursividad($a + 1);
    }
}

$c=10;
recursividad($c);
?>
