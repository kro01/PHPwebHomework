<?php 

$regex = "/10\s*\+\s*7\s*=\s*17\s*10\s*-\s*7\s*=\s*3\s*10\s*\*\s*7 = 70\s*10\s*\/\s*7\s*=\s*1\.4285714285714\s*10\s*%\s*7\s*=\s*3\s*/";

$handle = fopen("./tmp", "r");
$outpute = fread($handle, filesize('./tmp'));
fclose($handle);

if (preg_match($regex,$outpute)){
	echo "sucses";
}
else{
	echo "faile\n";
}
 ?>
