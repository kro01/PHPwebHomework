<?php 
//include_once('Rest.php');
//include_once('api.php');


class Page{
	public $pathe;

	function __construct($pathe) {
		array_push($GLOBALS['rest']->pages,$this);
		$this->pathe = $pathe;
		
	}

	public function check($otherPathe){
		return $otherPathe == $this->pathe;
	}
}
 ?>
