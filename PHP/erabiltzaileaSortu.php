<?php
include 'dbcon.php';
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

		$erab = $mysqli->prepare( "INSERT INTO erabiltzailea (izena, abizenak, username, password, telefonoa, email, mota) VALUES (?,?,?,?,?,?,?)");
		$erab->bind_param("sssssss", $name, $surnames, $user, $pass, $telf, $email, $mota);
		$erab->execute();
		$erab->bind_result($id, $user, $pass, $admin);
		if($erab-> fetch()){
			if($admin=="admin"){
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