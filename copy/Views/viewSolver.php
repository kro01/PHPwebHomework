<?php 
class Solver extends View{
	public function make($problem){
		$this->header();
		$this->html .= "<div>";
		$this->html .= $problem[0]['text'];
		$this->html .= "</div>";

		$this->html .="<div class='top'>
		Въведете решението си тук:
	<form action='/web/solver.php' method='post'>
		
		<div class = 'numbers'>
		1<br>2<br>3<br>4<br>5<br>6<br>7<br>8<br>9<br>10<br>
		11<br>12<br>13<br>14<br>15<br>16<br>17<br>18<br>19<br>20<br>
		21<br>22<br>23<br>24<br>25<br>26<br>27<br>28<br>29<br>30<br>
		31<br>32<br>33<br>34<br>35<br>36<br>37<br>38<br>39<br>40<br>
			
		
		</div>
		<textarea class = 'code' rows='40' cols='90' name='code' ></textarea>
		
		<div class = 'a'>
		<input class = 'submit' type='submit'>
		</div>
	</form>

	</div>";
		$this->footer();
	}
}
$Solver = new Solver('viewSolver');
 ?>