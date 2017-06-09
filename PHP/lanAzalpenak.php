<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['lanid'];

$erantzuna = array();
		$erab = $mysqli->prepare( "SELECT * FROM lanazalpena" );
		//$erab->bind_param("si", $user, $id );
		$erab->execute();
		$erab->bind_result($id, $lanid, $arduraduna, $azalpena, $materiala, $itxiData);
		while ($erab->fetch()) {
			$erantzuna[] = array('id'=> $id, 'lanid'=> $lanid, 'arduraduna'=> $arduraduna, 'azalpena'=> $azalpena, 'materiala'=> $materiala, 'itxiData'=> $itxiData);
		}
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>