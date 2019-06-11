<?php
include_once('api.php');

$hello = new Page(['hello']);
$hello->display = function(){echo 'hello';};

$register = new Page(['register']);
$register->display = function(){
	call_user_func_array([$GLOBALS['model'],'setUser'],json_decode($_POST["json"], true));
};

$users = new Page(['users']);
$users->display = function(){
	header(json_encode($GLOBALS['model']->getAllUsers()));
};

$del_user = new Page(['user']);
$del_user->check = function($otherPathe){
	$tmp =($otherPathe[0] == $del_user->pathe[0]);
	$tmp2 = getUser($otherPathe[1]);
	$del_user->email = $otherPathe[1];
	//return $tmp && $tmp2;
	return true;
};
$del_user->display = function(){
	$GLOBALS['model']->delUser($del_user->email);
};

 ?>
