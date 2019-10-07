<?php
class AllUsers extends View{
	
	public function make($users){
		$this->header();
		$this->html .=
		"<table>
			<tr>
				<th>Име</th>
				<th>Фамилия</th>
				<th>Точки</th>
				<th>изтрии</th>
			</tr>";
		foreach ($users as $user){
			$this->html .= "<tr>";
			$this->html .= "<td>".$user['firstName']."</td>";
			$this->html .= "<td>".$user['lastName']."</td>";
			$this->html .= "<td>".$user['points']."</td>";
			$this->html .= "</tr>";
		}
		$this->html .="<table>";
		$this->footer();
	}
}
$AllUsers = new AllUsers('viewAllUsers');
?>