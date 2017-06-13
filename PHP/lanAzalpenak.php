<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['lanid'];

$erantzuna = array();
		$erab = $mysqli->prepare( "SELECT lanazalpena.id, lanazalpena.lanid, lanazalpena.arduraduna, lanazalpena.azalpena, lanazalpena.materiala, lanazalpena.itxiData, lanagindua.saila, langileorduak.langilea FROM lanazalpena INNER JOIN lanagindua ON lanazalpena.lanid = lanagindua.id INNER JOIN langileorduak ON lanazalpena.lanid=langileorduak.lanID" );
		//$erab->bind_param("si", $user, $id );
		$erab->execute();
		$erab->bind_result($id, $lanid, $arduraduna, $azalpena, $materiala, $itxiData, $saila, $langilea);
		while ($erab->fetch()) {
			$erantzuna[] = array('id'=> $id, 'lanid'=> $lanid, 'arduraduna'=> $arduraduna, 'azalpena'=> $azalpena, 'materiala'=> $materiala, 'itxiData'=> $itxiData, 'saila'=> $saila, 'langilea'=> $langilea);
		}
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>