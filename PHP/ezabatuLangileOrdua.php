<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['id'];

$erantzuna = array(); 

		//if($mysqli->query( "DELETE * FROM langileorduak WHERE id='$id'" )===TRUE{
			$mysqli->query( "DELETE FROM langileorduak WHERE id=$id" );
			$erantzuna["zuzen"] = "ok";
			$erantzuna["mezua"] = "Zuzen ezabatu da.";
		/*}else{
			$erantzuna["zuzen"] = "error";
			$erantzuna["mezua"] = "Errorea gertatu da ezabaketan.";
		}*/
		/*$num_rows=mysqli_num_rows($erab);
		if ($num_rows> 0){
			$_SESSION['logged'] = true;
			$_SESSION['username'] = $user;
			$erantzuna["mezua"] = "Datu zuzenak.";
			$erantzuna["onarpena"] = "ok";
		}else{
			$erantzuna["mezua"] = "Erabiltzaile eta pasahitz okerrak.";
			$erantzuna["onarpena"] = "error";
		}*/

/*emaitza json formatura bihurtzen da*/
$resultadosJson = json_encode($erantzuna);
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>