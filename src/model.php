<?php
class Model{
	static $conn;
	public $model;
	
	
	public function register($model){
		$GLOBALS['models'][$model]=$this;
	}

	static function connect(){
		try{
			self::$conn = new PDO($GLOBALS['dataBase'],$GLOBALS['dbUser'],$GLOBALS['dbPass']);
		} catch (Exception $e) {
  			echo 'Не е намерена базата данни';
  		}
	}
}

Model::connect();
 ?>