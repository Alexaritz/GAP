<?php
include 'dbcon.php';

$erantzuna = array(); 

		$erab = $mysqli->query( "SELECT * FROM ura" );
		$num_rows=mysqli_num_rows($erab);
		while($datos=mysqli_fetch_array($erab,MYSQLI_ASSOC)){
			$erantzuna[]=array_map('utf8_encode', $datos);
		}
		$resultadosJson=json_encode( $erantzuna );
		echo $resultadosJson;
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
//echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>