<?php 

$solver = new Page(['solver']);
$number = 0;
global $number;
$solver->display = function(){
	//$GLOBALS['AllViews']['viewSolver']->make($GLOBALS['number']);
	$GLOBALS['AllViews']['viewSolver']->make(
		$GLOBALS['models']['ModProblems']->getProblem(
			$GLOBALS['number']));
	$GLOBALS['AllViews']['viewSolver']->display();
	//echo "aaa";
	//echo $GLOBALS['number'];
};
$solver->check = function($pathe){
	//echo "aaa";
	if($pathe[0] == 'solver' && is_integer(intval($pathe[1])) ){
		$GLOBALS['number'] = intval($pathe[1]);
 		return true;
 	}else{
 		return false;
 	}
};
 ?>
