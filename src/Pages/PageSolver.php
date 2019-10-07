<?php 

$solver = new Page(['solver']);
$problemId = 0;
global $problemId;

$solver->display = function(){
	$results = [];
	if(isset($_POST["code"])){

		$str = preg_replace("/ /", "&nbsp;",  $_POST["code"]);
		$str = preg_replace("/</", "&lt;",  $str);
		$str = preg_replace("/>/", "&gt;",  $str);
		$str = preg_replace("/[\n\r]/", "<br>", $str); 

		$GLOBALS['models']['ModProblems']->setSolutions(
			intval($_SESSION['user']['id']),
			$GLOBALS['$problemId'],
			$str,
			date('Y-m-d-H-m-s'));

		$fileName = './decisions/user1/'.(string)time().'.php';
		$myfile = fopen($fileName, "w");
		fwrite($myfile, $_POST["code"]);
		fclose($myfile);

		$output = shell_exec('php '.$fileName);
		$tmpFile = fopen('./tmp', 'w');
		fwrite($tmpFile, $output);

		$d = dir("./tests/".$GLOBALS['$problemId']);
		while( false !==($entry = $d->read())){
			if( $entry!='.' && $entry!='..'){
				$outputTest = shell_exec('php '."./tests/".$GLOBALS['$problemId']."/".$entry);
				$results[$entry] = $outputTest;
			}
		}
	}	

	$GLOBALS['AllViews']['viewSolver']->make(
		$GLOBALS['models']['ModProblems']->getProblem(
			$GLOBALS['$problemId']),
		$results
		);
	$GLOBALS['AllViews']['viewSolver']->display();
};
$solver->check = function($pathe){
	if($pathe[0] == 'solver' && is_integer(intval($pathe[1])) ){
		$GLOBALS['$problemId'] = intval($pathe[1]);
 		return true;
 	}else{
 		return false;
 	}
};
 ?>
