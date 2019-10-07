<?php
//include_once('api.php');//?

$home = new Page(['']);
$home->display = function(){
	if(isset($_POST['email']) 
		&& !isset($_POST['firstName'])
		&& $GLOBALS['models']['ModUser']->login(
				$_POST['email'],$_POST['password']))
	{	
		$_SESSION['user'] = ($GLOBALS['models']['ModUser']->getUser($_POST['email']))[0];
	}
	elseif(isset($_POST['firstName']))
	{
		$GLOBALS['models']['ModUser']->setUser(
			$_POST['firstName'],
			$_POST['lastName'],
			$_POST['email'],
			$_POST['password'],
			'user');
	}

	if(isset($_SESSION['user']['firstName']) && $_SESSION['user']['role'] == 'user'){
		$GLOBALS['AllViews']['viewLogedHome']->make();
		$GLOBALS['AllViews']['viewLogedHome']->display();
	}
	elseif(isset($_SESSION['user']['firstName']) && $_SESSION['user']['role'] == 'admin'){
		$GLOBALS['AllViews']['viewLogedHomeAdmin']->make();
		$GLOBALS['AllViews']['viewLogedHomeAdmin']->display();
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
	$GLOBALS['models']['ModUser']->setUser();
};

$users = new Page(['users']);
$users->display = function(){
	if(isset($_SESSION['user']['firstName']) && $_SESSION['user']['role'] == 'admin' ){
		$GLOBALS['AllViews']['viewAllUsers']->make($GLOBALS['models']['ModUser']->getAllUsers());
		$GLOBALS['AllViews']['viewAllUsers']->display();
	}
	else{
		echo "ne";
	}
};

$logout = new Page(['logout']);
$logout->display = function(){
	session_destroy();
    header("Location: http:".$GLOBALS['pathe0']."/".$GLOBALS['pathe']);
	};

 ?>
