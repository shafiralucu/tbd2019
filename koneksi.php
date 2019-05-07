<?php
	$conn = new mysqli("localhost","root","","diagnosis");
	
	if($conn -> connect_errno){
			echo "Failed to connect.";
	}
?>