<?php
//login validation
	session_start();
	if (array_key_exists('login', $_POST)) 
	{

		include("./connection.php");
		if(empty($_POST['email']))
	    {
			?><script type="text/javascript">
			alert("Enter a valid a email address");
			window.location.href="http://infotsav.com/Trovetrace/login.php";
			</script>
			<?php
	    }
		if(empty($_POST['password']))
	    {
			?><script type="text/javascript">
			alert("Enter a valid a password");
			window.location.href="http://infotsav.com/Trovetrace/login.php";
			</script>
			<?php
	    }

		$email = $_POST['email'];
	          
	    //$_POST['password']=md5($_POST['password']);
		$sql="SELECT email, password, status FROM registration WHERE email='".$email."'";
		$temp=mysqli_query($connect,$sql);
		$result=mysqli_fetch_array($temp);
		
		if(mysqli_num_rows($temp) == 0) 
		{
			

			include("./infotsav_db.php");

			$sql1="SELECT * FROM users WHERE email='".$email."'";
			$temp1=mysqli_query($connect1,$sql1) or die("error2");


	        if(mysqli_num_rows($temp1) == 0) 
	        {
	            ?>
					<script type="text/javascript">
					alert("You are not registered at Infotsav");
					window.location.href="http://www.infotsav.com";
					</script>
				<?php
	        }else 
	        {

				$result1 = mysqli_fetch_assoc($temp1);
				
				if(md5($_POST['password'])!=$result1['password'])
			  	{
					//echo "Maa";
					?>
						<script type="text/javascript">
						alert("Incorrect password");
						window.location.href="http://infotsav.com/Trovetrace/index.php";
						</script>
					<?php
			  	}
	                                    
                          // echo $result1['password'];
				if(md5($_POST['password'])==$result1['password'])
			   	{  
				   
				    $uid = $result1['id'];
					$player1 = $result1['name'];
					$institute = $result1['school'];
					$username = $result1['name'];
					$sex=$result1['avtar'];
					$contact = $result1['contact'];
					$email = $result1['email'];
					$address ="";
					$address = str_replace("'", " ", $address);
					$password = md5($_POST['password']);
					//$eid='Trove Trace';

					/*$query2="SELECT count(*) FROM infotsav.reg WHERE eid='$eid' AND id='$uid'";
					$query2="SELECT count(*) FROM infotsav.users WHERE id='".$uid."'";
					$res1=mysqli_query($connect,$query2) or die("23".mysql_error());
					$ro1=mysqli_fetch_row($res1);
					//die($res1);
					if($ro1[0] == 0)
						{
								$login_error = '<font color="red"><a href="http://www.infotsav.com" target="_blank">Click here </a>to register for Trove Trace at Infotsav page</font>';
						}
					else {  */
	                $time=time();
					include("connection.php");
					$sql3 = "INSERT INTO registration (player1,username, password, contact, email, institute) VALUES ('$player1', '$username', '$password', '$contact', '$email', '$institute')";
					mysqli_query($connect,$sql3) or die("Insertion Error1 ".mysqli_error());
					
					$_SESSION['authenticated'] = 'trove_trace';
					$_SESSION['email']=$email;
					//changing current login flag to 1
					$sql1 = "UPDATE registration SET current_login=1 WHERE email='".$email."'";
					mysqli_query($sql1);
					header("location:../index.php");
						//}
				}

			}
		}
		else
		{

			$sql="SELECT email, password, status FROM registration WHERE email='".$email."'";
			$temp=mysqli_query($connect,$sql);
			$result = mysqli_fetch_assoc($temp);

			$_SESSION['email']=$result['email'];
			$email = $_SESSION['email'];

			if($result['status'] == 1) 
			{
				$login_error = '<font color="red">You are blocked. Contact admin</font>';
			}else if($result['password'] != md5($_POST['password']))
			{ 
	            ?>
	                <script type="text/javascript">
					alert("Incorrect Password");
					window.location.href="http://infotsav.com/Trovetrace/login.php";  //change
					</script>
				<?php 
				die();
			}else if($result['email'] == $email && $result['password'] == md5($_POST['password'])) 
			{
				
				$_SESSION['authenticated'] = 'trove_trace';
				//echo $_SESSION['authenticated'];
				//changing current login flag to 1
				$sql1 = "UPDATE trovetrace.registration SET current_login=1 WHERE email='".$email."'";
				mysqli_query($sql1);
				header("location:../index.php");
			}
		}
	}

	?>
