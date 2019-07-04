<?php 

class HelpLogin extends Helper {
	function display(){
		return 
		"function loadDoc() {
  			var xhttp = new XMLHttpRequest();
  			xhttp.onreadystatechange = function() {
    		if (this.readyState == 4 && this.status == 200) {
      			document.getElementById('demo').innerHTML = this.responseText;
   		 }
  		};
  		xhttp.open('GET', 'http://localhost/webHomework/proba/proba2.php', true);
	  	xhttp.send();
		}";
	}
}

$login = new HelpLogin('login');
 ?>