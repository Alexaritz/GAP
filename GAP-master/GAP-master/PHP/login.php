<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$pass = $_GET['password'];

$erantzuna = array(); 

		$erab = $mysqli->query( "SELECT * FROM erabiltzailea WHERE username=('$user') and password=('$pass')" );
		$num_rows=mysqli_num_rows($erab);
		if ($num_rows> 0){
			$row=mysqli_fetch_array($erab,MYSQLI_ASSOC);
			if ($row["mota"]=="admin") $erantzuna["admin"] = "true";
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