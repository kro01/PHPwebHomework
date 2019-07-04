<?php 

class Page{
	public $pathe;
	public $check;
	public $display;
	
	function __construct($pathe) {
		array_push($GLOBALS['pages'],$this);
		$this->pathe = $pathe;
		$this->check = function($otherPathe){
			return $otherPathe == $this->pathe;
		};	
	}

	/*public function check($otherPathe){
		return $otherPathe == $this->pathe;
	}*/
}
 ?>
