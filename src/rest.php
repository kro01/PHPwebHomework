<?php
class Rest{
	private $pathe;
	private $verbs;
	public $pages;
	public $models;

	function __construct() {
        $this->pathe = $this->getPathe();
    }

	private function getPathe(){
		$str = $_SERVER['PHP_SELF'];
		$str = preg_replace('/^.*\/'.preg_quote($GLOBALS['pathe']).'[\/]?/', '', $str);
		$str = preg_split('#/#',$str);
		return $str;
	}
	public function root(){
		$used = false;
		foreach($GLOBALS['pages'] as $page){
			if(
				($page->check)($this->pathe)){
				($page->display)();
				$used = true;
				break;
			}
		}
		if($used == false){
			echo "Грешен адрес пробвайте пак";
		}
	}
}
?>