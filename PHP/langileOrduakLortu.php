<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['lanid'];

$erantzuna = array();
//arduraduna='$user' and
		$erab = $mysqli->prepare("SELECT * FROM langileorduak where  lanID=?" );
		$erab->bind_param("i", $id);
		$erab->execute();
		$erab->bind_result($id, $lanid, $langilea, $denborah, $denboramin, $laneguna);
		while ($erab->fetch()) {
			$erantzuna[] = array('id'=> $id, 'lanid'=> $lanid, 'langilea'=> $langilea,'denborah'=> $denborah, 'denboramin'=> $denboramin, 'lanEguna'=> $laneguna);
		}
		
		/*$erab = $mysqli->query( "SELECT * FROM langileorduak where  lanID='$id'" );
		$num_rows=mysqli_num_rows($erab);
		if ($num_rows> 0){
			while($datos=mysqli_fetch_array($erab,MYSQLI_ASSOC)){
				$erantzuna[]=array_map('utf8_encode', $datos);
			}
		}*/
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>