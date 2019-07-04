<?php 
/**
 * 
 */
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
	<link rel='stylesheet' type='text/css' href='/WebHomework/proekt/base.css'>
	<link rel='stylesheet' type='text/css' href='/WebHomework/proekt/styles.css'>
	<title>PHP tests</title>
</head>
<body>
<header>
	<span id='home'><a href='/web/index.php'>PHP tests</a></span>
	<span id='user'>
	<span><img src='./pics/userNotLog.png' style='width:30px;height:30px;'></span>
		<span>Гошо</span>
		<span>12</span>
		<button type='button'>излез</button>
	</span>
</header>";
	}
	function footer(){
		$this->html .="</body></html>";
	}
}
 ?>