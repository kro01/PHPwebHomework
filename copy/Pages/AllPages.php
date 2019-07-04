<?php
//include_once('api.php');//?

$home = new Page(['']);
$home->display = function(){
	if(isset($_POST['email']) 
		&& $GLOBALS['models']['ModUser']->login($_POST['email'],$_POST['password']))
	{
		$_SESSION['user'] = ($GLOBALS['models']['ModUser']->getUser($_POST['email']))[0];
		//var_dump($_SESSION['user']);
	}

	if(isset($_SESSION['user']['firstName'])){
		$GLOBALS['AllViews']['viewLogedHome']->make();
		$GLOBALS['AllViews']['viewLogedHome']->display();
	}
	else{
		$GLOBALS['AllViews']['viewHome']->make();
		$GLOBALS['AllViews']['viewHome']->display();
	}
};

/*$hello = new Page(['hello']);
$hello->display = function(){echo 'hello';};*/

$register = new Page(['register']);
$register->display = function(){
	call_user_func_array([$GLOBALS['models']['ModUser'],'setUser'],json_decode($_POST["json"], true));
};

$users = new Page(['users']);
$users->display = function(){
	$GLOBALS['AllViews']['viewAllUsers']->make($GLOBALS['models']['ModUser']->getAllUsers());
	$GLOBALS['AllViews']['viewAllUsers']->display();
	/*foreach ($GLOBALS['rest']->models['ModUser']->getAllUsers() as $user){
		echo var_dump($user)."<br>";
	}*/
};

/*$del_user = new Page(['user']);
$del_user->check = function($otherPathe){
	$tmp =($otherPathe[0] == $del_user->pathe[0]);
	$tmp2 = getUser($otherPathe[1]);
	$del_user->email = $otherPathe[1];
	//return $tmp && $tmp2;
	return true;
};
$del_user->display = function(){
	$GLOBALS['models']['ModUser']->delUser($del_user->email);
};*/

 ?>
