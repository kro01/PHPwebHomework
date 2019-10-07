<?php 
class View
{	protected $html;
	public $view;

	function __construct($v){
		$html = '';
		$this->view = $v;
		$GLOBALS['AllViews'][$this->view]=$this;
	}
	public function display(){
		echo $this->html;
	} 
	function header(){
		$this->html .="<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
	<link rel='stylesheet' type='text/css' href='".$GLOBALS['pathe0']."/base.css'>
	<link rel='stylesheet' type='text/css' href='".$GLOBALS['pathe0']."/styles.css'>
	<title>PHP tests</title>
</head>
<body>
<header>
	<span id='home'><a href='".$GLOBALS['pathe0']."/".$GLOBALS['pathe']."'>PHP tests</a></span>

		<a id='user'  href='".$GLOBALS['pathe0']."/".$GLOBALS['pathe']."/logout'>излез</a>

</header>";
	}
	function footer(){
		$this->html .="</body></html>";
	}
}
 ?>