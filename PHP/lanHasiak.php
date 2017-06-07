<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['lanid'];

$erantzuna = array();
		$erab = $mysqli->prepare( "SELECT azalpena, materiala FROM lanazalpena where arduraduna=? and lanid=?" );
		$erab->bind_param("si", $user, $id );
		$erab->execute();
		$erab->bind_result($azalpena, $materiala);
		while ($erab->fetch()) {
			$erantzuna[] = array('azalpena'=> $azalpena, 'materiala'=> $materiala);
		}
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>