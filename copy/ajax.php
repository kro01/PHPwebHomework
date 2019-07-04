<?php 

class Ajax
{	
	function __construct($argument)
	{
		
	}

	function link(){
		return "<script>
					function loadDoc() {
  						var xhttp = new XMLHttpRequest();
  						xhttp.onreadystatechange = function() {
    					if (this.readyState == 4 && this.status == 200) {
      						document.
      						getElementById('demo')
      						.innerHTML =
      						 this.responseText;
    						}
  					};
  					xhttp.open('POST', 'demo_post.asp', true);
  					xhttp.send();
					}
				</script>";
	}
}
 ?>