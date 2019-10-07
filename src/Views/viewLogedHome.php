<?php 
class ViewLogedHome extends View{
	public function make(){
		$this->header();
		$this->html .=
		"<p>Добре дошли ".$_SESSION['user']['firstName']."</p>";
		$this->listProblems();
		$this->userSolutions();
		$this->footer();
	}
	function listProblems(){
		$this->html .= "<table>
			<tr>
				<th>задача</th>
				<th>условие</th>
				<th>тип</th>
				<th>реши я</th>
				<th>опити до сега</th>
				<th>резултати</th>
			</tr>";
		foreach ($GLOBALS['models']['ModProblems']->getAllProblems() as  $value) {
			$this->html .= "<tr>";
			$this->html .= "<td>".$value['id']."</td>";
			$this->html .= "<td>".$value['text']."</td>";
			$this->html .= "<td>".$value['type']."</td>";
			$this->html .= 
			"<td><a href='".$GLOBALS['pathe']."/solver"."/".$value['id']."'>реши я</a></td>";
			$this->html .= "</tr>";
		}
		$this->html .="<table>";
	}
	function userSolutions(){
		$this->html .= "<table>
			<tr>
				<th>задача</th>
				<th>рещение</th>
				<th>предадена</th>
				<th>резултати</th>
			</tr>";
		foreach ($GLOBALS['models']['ModProblems']->getAllSolutionUser($_SESSION['user']['id']) as  $value) {
			$this->html .= "<tr>";
			$this->html .= "<td>".$value['problemId']."</td>";
			$this->html .= "<td>"."</td>";
			$this->html .= "<td>".$value['time']."</td>";
			$this->html .= "<td>"."</td>";
			$this->html .= "</tr>";
		}
		$this->html .="<table>";
		;
	}
}
$ViewLogedHome = new ViewLogedHome('viewLogedHome');
?>