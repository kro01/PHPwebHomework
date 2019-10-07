<?php 
$str = "10 + 7 = 17\n10 - 7 = 3\n10 * 7 = 70\n10 / 7 = 1.4285714285714\n10 % 7 = 3\n";

$handle = fopen("./tmp", "r");
$outpute = fread($handle, filesize('./tmp'));
fclose($handle);

if ($outpute == $str){
	echo "sucses";
}
else{
	echo "faile";
}
 ?>
