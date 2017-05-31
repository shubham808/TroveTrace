<?php
if($currentPage == 'register.php'){
		// process the script only if the form has been submitted
		if (array_key_exists('register', $_POST)) {
		
				include("include/connection.php");
				
				$player1=$_POST['player_1'];
				$sex = $_POST['sex'];
				$username = $_POST['username'];
				$password = $_POST['password'];
				$enc_pwd=sha1($password);
				$re_password = $_POST['re_password'];
				$contact = $_POST['contact_no'];
				$email = $_POST['email'];
				$institute = $_POST['institute'];
				$player2 = $_POST['player_2'];
				$city = $_POST['city'];
				
				$temp = mysql_query("SELECT username FROM registration WHERE email='$email'");
				$result = mysql_fetch_row($temp);
				if($result[0] != NULL){
					$error = '<font color="red">Sorry, Username already taken</font>';
					}
				else if($password != $re_password) {
					$error = '<font color="red">Password Doesn\'t Match</font>';
					}
				else if($player1 == NULL || $sex == NULL || $username == NULL || $password == NULL || $contact == NULL || $email == NULL || $institute == NULL || $city == NULL){
					$error = '<font color="red">* Required field cann\'t be left blank</font>';
					}
				else{
					$time = $_SERVER['REQUEST_TIME'];
					$sql="INSERT INTO registration SET player1='$player1', sex='$sex', username='$username', password='$enc_pwd', contact='$contact', email='$email', institute='$institute', city='$city', player2='$player2'";
					$sql1 = "INSERT INTO result SET username='$username', institute='$institute', time_taken='$time'";
					if(mysql_query($sql) && mysql_query($sql1))
					$error = '<font color="red">Successfully registered</font>';
					else
					$error = '<font color="red">Error in inserting into database. Contact Site Administrator</font>'.mysql_error();
						
					
					
					}
				
		}
}

?>