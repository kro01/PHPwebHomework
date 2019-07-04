<?php 
class Helper {

	function __construct($help) {
		$GLOBALS['helper'][$help]=$this;	
	}
}
 ?>