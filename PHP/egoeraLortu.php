<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['lanid'];

$erantzuna = array(); 
		$erab = $mysqli->query( "SELECT * FROM lanegoera" );
		$num_rows=mysqli_num_rows($erab);
		$int=0;
		while($datos=mysqli_fetch_array($erab,MYSQLI_ASSOC)){
			$erantzuna[$int]=array_map('utf8_encode', $datos);
			$int=$int+1;
		}
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>