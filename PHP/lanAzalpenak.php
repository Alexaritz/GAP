<?php
include 'dbcon.php';
include_once 'session.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['lanid'];
//
$erantzuna = array();
$datuak = array();
if($_SESSION['logged'] && $_SESSION['admin']==true ){
		$erab = $mysqli->prepare( "SELECT lanagindua.id, lanagindua.username, lanagindua.bidaltzailea, lanagindua.eraikina, lanagindua.pisua, lanagindua.gela, lanagindua.lehentasuna, lanagindua.laburpena, lanagindua.deskribapena, lanagindua.data, lanagindua.egoera, lanazalpena.lanid, lanazalpena.arduraduna, lanazalpena.azalpena, lanazalpena.materiala, lanazalpena.itxiData, lanagindua.saila, langileorduak.langilea, langileorduak.denborah, langileorduak.denboramin, langileorduak.lanEguna FROM lanazalpena INNER JOIN lanagindua ON lanazalpena.lanid = lanagindua.id INNER JOIN langileorduak ON lanazalpena.lanid=langileorduak.lanID" );
		$erab->execute();
		$erab->bind_result($id, $username, $bidaltzailea, $eraikina, $pisua, $gela, $lehentasuna, $laburpena, $deskribapena, $data, $egoera, $lanid, $arduraduna, $azalpena, $materiala, $itxiData, $saila, $langilea, $denborah, $denboramin, $lanEguna);
		while ($erab->fetch()) {
			$datuak[] = array('id'=> $id, 'username'=> $username, 'bidaltzailea'=> $bidaltzailea, 'eraikina'=> $eraikina, 'pisua'=> $pisua, 'gela'=> $gela, 'lehentasuna'=> $lehentasuna, 'laburpena'=> $laburpena, 'deskribapena'=>$deskribapena, 'data'=>$data, 'egoera'=>$egoera, 'lanid'=> $lanid, 'arduraduna'=> $arduraduna, 'azalpena'=> $azalpena, 'materiala'=> $materiala, 'itxiData'=> $itxiData, 'saila'=> $saila, 'langilea'=> $langilea, 'denborah'=> $denborah, 'denboramin'=> $denboramin, 'lanEguna'=> $lanEguna);
		}
		$erantzuna=json_encode( $datuak );
}else{
	$erantzuna[]="logout";
}
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $erantzuna . ');';
?>