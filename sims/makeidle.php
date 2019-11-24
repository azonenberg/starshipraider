#!/usr/bin/php
<?php
//$bits = '00111110101001000101';

//negative side of sgmii idle
$bits = '11000001010110111010';

$last = 1;
$baud = 800;
$rise = 40;
for($i=0; $i<strlen($bits); $i++)
{
	$next = intval($bits[$i]);

	$t1 = $i * $baud;
	$t2 = $t1 + $rise;
	echo "${t1}e-12,$last\n";
	echo "${t2}e-12,$next\n";

	$last = $next;
}
?>
