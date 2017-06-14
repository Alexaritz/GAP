<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['lanid'];
//
$erantzuna = array();
		$erab = $mysqli->prepare( "SELECT lanazalpena.id, lanagindua.username, lanagindua.bidaltzailea, lanagindua.eraikina, lanagindua.pisua, lanagindua.gela, lanazalpena.lanid, lanazalpena.arduraduna, lanazalpena.azalpena, lanazalpena.materiala, lanazalpena.itxiData, lanagindua.saila, langileorduak.langilea, langileorduak.lanEguna FROM lanazalpena INNER JOIN lanagindua ON lanazalpena.lanid = lanagindua.id INNER JOIN langileorduak ON lanazalpena.lanid=langileorduak.lanID" );
		$erab->execute();
		$erab->bind_result($id, $username, $bidaltzailea, $eraikina, $pisua, $gela, $lanid, $arduraduna, $azalpena, $materiala, $itxiData, $saila, $langilea, $lanEguna);
		while ($erab->fetch()) {
			$erantzuna[] = array('id'=> $id, 'username'=> $username, 'bidaltzailea'=> $bidaltzailea, 'eraikina'=> $eraikina, 'pisua'=> $pisua, 'gela'=> $gela, 'lanid'=> $lanid, 'arduraduna'=> $arduraduna, 'azalpena'=> $azalpena, 'materiala'=> $materiala, 'itxiData'=> $itxiData, 'saila'=> $saila, 'langilea'=> $langilea, 'lanEguna'=> $lanEguna);
		}
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>