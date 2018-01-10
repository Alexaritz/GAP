<?php
include 'dbcon.php';
include_once 'session.php';
/* erab. datuak jaso*/
$userID = $_GET['userID'];
$user = $_GET['usuario'];

session_start();
$erantzuna = array(); 
if(isset($_SESSION['logged']) && $_SESSION['logged'] == true && $_SESSION['admin'] == true && $user!=""){
		$erab = $mysqli->prepare( "DELETE FROM erabiltzailea WHERE id=?");
		$erab->bind_param("s", $userID);
		$erab->execute();
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
			$ard->execute();
		}*/
		$erantzuna["mezua"] = "Zuzen ezabatu da.";
		$erantzuna["onarpena"] = "ok";
}else{
	$erantzuna["mezua"] = "Saioa amaitu da. Logeatu berriro.";
	$erantzuna["log"] = "false";
}

/*emaitza json formatura bihurtzen da*/
$resultadosJson = json_encode($erantzuna);
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>