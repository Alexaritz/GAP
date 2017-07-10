<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$pass = $_GET['password'];
session_start();
$erantzuna = array(); 

		$erab = $mysqli->prepare( "SELECT * FROM erabiltzailea WHERE username=? and password=?");
		$erab->bind_param("ss", $user, $pass);
		$erab->execute();
		$erab->bind_result($id, $izena, $abizenak, $user, $pass, $telefonoa, $email, $mota);
		if($erab-> fetch()){
			if($mota=="admin"){
				$erantzuna["admin"] = "true";
				$_SESSION['admin'] = true;
			}
			$_SESSION['logged'] = true;
			$_SESSION['username'] = $user;
			$erantzuna["mezua"] = "Datu zuzenak.";
			$erantzuna["onarpena"] = "ok";
		}else{
			$erantzuna["mezua"] = "Erabiltzaile eta pasahitz okerrak.";
			$erantzuna["onarpena"] = "error";
		}

/*emaitza json formatura bihurtzen da*/
$resultadosJson = json_encode($erantzuna);
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>