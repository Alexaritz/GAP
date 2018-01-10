<?php
include 'dbcon.php';
include_once 'session.php';
/* erab. datuak jaso*/
$name = $_GET['name'];
$surnames = $_GET['surnames'];
$user = $_GET['usuario'];
$pass = $_GET['password'];
$telf = $_GET['telf'];
$email = $_GET['email'];
$mota = $_GET['mota'];
$saila = $_GET['saila'];
$salt = "pepper";//random_bytes(20);
session_start();
$erantzuna = array(); 
if(isset($_SESSION['logged']) && $_SESSION['logged'] == true && $_SESSION['admin'] == true && $user!=""){
		
		if($pass==""){
			$erab = $mysqli->prepare( "UPDATE erabiltzailea SET izena=?, abizenak=?, username=?, telefonoa=?, email=?, mota=? WHERE username=?");
			$erab->bind_param("sssssss", $name, $surnames, $user, $telf, $email, $mota, $user);
		}else{
			$pass = crypt($pass, $salt);
			$erab = $mysqli->prepare( "UPDATE erabiltzailea SET izena=?, abizenak=?, username=?, password=?, telefonoa=?, email=?, mota=? WHERE username=?");	
			$erab->bind_param("sssssss", $name, $surnames, $user, $pass, $telf, $email, $mota, $user);
		}
		$erab->execute();
		$erab = $mysqli->query( "SELECT * FROM arduraduna WHERE username='$user'" );
		if($erab->num_rows >= 1 && $mota=="ard"){
			$ard = $mysqli->prepare( "UPDATE arduraduna SET saila=? WHERE username=?");
			$ard->bind_param("ss", $saila, $user);
			$ard->execute();
		}else if ($erab->num_rows >= 1 && $mota!="ard"){
			$ard = $mysqli->prepare( "DELETE FROM arduraduna WHERE username=?");
			$ard->bind_param("s", $user);
			$ard->execute();
		}else if($erab->num_rows != 1 && $mota=="ard"){
			$ard = $mysqli->prepare( "INSERT INTO arduraduna (username, saila) VALUES (?,?)");
			$ard->bind_param("ss", $user, $saila);
			$ard->execute();
		}
		//$ard->execute();
		/*if($mota=="ard"){
			$erab = $mysqli->query( "SELECT * FROM arduraduna WHERE username='$user'" );
			//$num_rows=mysqli_num_rows($erab);
			if($erab->num_rows >= 1){
				$ard = $mysqli->prepare( "UPDATE arduraduna SET saila=? WHERE username=?");
				$ard->bind_param("ss", $saila, $user);
			}else{
				$ard = $mysqli->prepare( "INSERT INTO arduraduna (username, saila) VALUES (?,?)");
				$ard->bind_param("ss", $user, $saila);
			}
			
		}*/
		$erantzuna["mezua"] = "Datu zuzenak.";
		$erantzuna["onarpena"] = "ok";
}else{
	$erantzuna["mezua"] = "Saioa amaitu da. Logeatu berriro.";
	$erantzuna["log"] = "false";
}
		/*}else{
			$erantzuna["mezua"] = "Erabiltzaile eta pasahitz okerrak.";
			$erantzuna["onarpena"] = "error";
		}*/

/*emaitza json formatura bihurtzen da*/
$resultadosJson = json_encode($erantzuna);
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>