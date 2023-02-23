 <?php
function muestraLista($lista) {
    for ($i=0;$i<count($lista);$i++) {
        echo $lista[$i] . "<br />";
    }
}

$arr = array (1, 3, 2, 9);
muestraLista($arr);
?> 
