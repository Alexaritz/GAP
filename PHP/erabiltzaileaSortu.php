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
session_start();
$erantzuna = array(); 
if(isset($_SESSION['logged']) && $_SESSION['logged'] == true && $_SESSION['admin'] == true && $user!=""){
		$erab = $mysqli->prepare( "INSERT INTO erabiltzailea (izena, abizenak, username, password, telefonoa, email, mota) VALUES (?,?,?,?,?,?,?)");
		$erab->bind_param("sssssss", $name, $surnames, $user, $pass, $telf, $email, $mota);
		$erab->execute();
		if($mota=="ard"){
			$ard = $mysqli->prepare( "INSERT INTO arduraduna (username) VALUES (?)");
			$ard->bind_param("s", $user);
			$ard->execute();
		}
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