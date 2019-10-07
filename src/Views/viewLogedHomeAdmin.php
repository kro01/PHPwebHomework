<?php 
class ViewLogedHomeAdmin extends View{
	public function make(){
		$this->header();
		$this->html .=
		"<p>Добре дошли ".$_SESSION['user']['firstName']."</p>";
		$this->listProblems();
		$this->html .=
		"<a href='".$GLOBALS['pathe0']."/".$GLOBALS['pathe']."/users'> списък с потребители	</a>";
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
}
$ViewLogedHomeAdmin = new ViewLogedHomeAdmin('viewLogedHomeAdmin');
?>