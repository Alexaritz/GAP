<?php
include 'dbcon.php';
/* user jaso*/
$user = $_GET['usuario'];

$erantzuna = array(); 
		$erab = $mysqli->prepare( "SELECT * FROM arduraduna WHERE username=?" );
		$erab->bind_param("s", $user);
		$erab->execute();
		$erab->bind_result($id, $user, $saila);
		if($erab-> fetch()){
			$erantzuna["mezua"] = "Erabiltzailea arduraduna da.";
			$erantzuna["arduraduna"] = "bai";
		}else{
			$erantzuna["mezua"] = "Erabiltzailea ez da arduraduna.";
			$erantzuna["arduraduna"] = "ez";
		}

/*emaitza json formatura bihurtzen da*/
$resultadosJson = json_encode($erantzuna);
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>