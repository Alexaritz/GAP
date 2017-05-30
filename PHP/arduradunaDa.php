<?php
include 'dbcon.php';
/* user jaso*/
$user = $_GET['usuario'];

$erantzuna = array(); 

		$erab = $mysqli->query( "SELECT * FROM arduraduna WHERE username=('$user')" );
		$num_rows=mysqli_num_rows($erab);
		if ($num_rows> 0){
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