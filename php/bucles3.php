<?php
for ($i = 1; ; $i++) {
    if ($i > 10) {
        break;
    }
    echo $i;//."\t ";
}
echo "\n";
for ($i = 1; $i <= 10; $i++) {
    echo $i;
}
echo "\n";
$i = 1;
for (; ; ) {
    if ($i > 10) {
        break;
    }
    echo $i;
    $i++;
}
echo "\n";
for ($i = 1, $j = 0; $i <= 10; $j += $i, print $i, $i++);
?>