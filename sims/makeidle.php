#!/usr/bin/php
<?php
//$bits = '00111110101001000101';

//complemented
$k285 = '1100000101';
$d162 = '0110111010';

//negative side of sgmii idle
$bits = "$k285$d162";

$last = 0;
$baud = 800;
$rise = 40;
$end = strlen($bits);
for($i=0; $i<$end; $i++)
{
	$next = intval($bits[$i]);

	$t1 = $i * $baud;
	$t2 = $t1 + $rise;
	echo "${t1}e-12,$last\n";
	echo "${t2}e-12,$next\n";

	$last = $next;
}
$t1 = $end * $baud;
echo "${t1}e-12,$last\n";
?>
