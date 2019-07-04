<?php	
class ViewHome extends View{
	public function make(){
		$this->header();
		$this->html .=
		"<p>Страницата е само за регистрирани потребители. Моля взете в системата</p>";
		$this->html .="<div id='demo'></div>";
		$this->html .=
		"<div>
		Влезте в истемата
		<form action='".$GLOBALS['pathe']."' method='post'>
		e-mail:
		<input type='text' name='email'>
		парола:
		<input type='password' name='password'>
		<input type='submit' value='Влез'>
		</form>
		</div>";
		$this->html .=
		"<div>
		Създайте си профил
		<form>
		име:
		<input type='text'>
		Фамилия:
		<input type='text'>
		e-mail:
		<input type='text'>
		парола:
		<input type='password'>
		Повторете паролата:
		<input type='password'>
		<input type='submit' value='Регистрирай се'>
		</form>
		</div>";
		$this->footer();
	}
}
$ViewHome = new ViewHome('viewHome');
?>