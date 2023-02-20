<?php
$array = array(
    "foo" => "bar",
    42    => 24,
    "multi" => array(
                        "dimensional" => array(
                                                "array" => "555"
                                            )
                    )
);

var_dump('Elemento foo:  '.$array["foo"]);
var_dump('Elemento 42 :  '.$array[42]);
var_dump('Elemento multi.dimensional.array: '.$array["multi"]["dimensional"]["array"]);
?>
