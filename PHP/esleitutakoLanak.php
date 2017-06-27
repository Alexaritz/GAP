<?php
include 'dbcon.php';
include_once 'session.php';
/* user + pass jaso*/
if (!$_SESSION['logged']) {
  $erantzuna[]="logout";
   exit();
}else{
$user = $_GET['usuario'];
$kop = $_GET['kop'];
$kop2 = $_GET['kop2'];
$admin = $_GET['admin'];
$erantzuna = array(); 

	if($kop2!=="") {
		if($admin=="true"){//, data desc
			$erab = $mysqli->prepare("SELECT id, username, saila, arduraduna, bidaltzailea, eraikina, pisua, gela, laburpena, data, egoera FROM lanagindua order by id desc LIMIT ?, ?" );
			$erab->bind_param("ii", $kop, $kop2);
		}else{
		$erab = $mysqli->prepare("SELECT id, username, saila, arduraduna, bidaltzailea, eraikina, pisua, gela, laburpena, data, egoera FROM lanagindua where arduraduna=? order by id desc LIMIT ?, ?" );
		$erab->bind_param("sii", $user, $kop, $kop2);
		}
	}else{
		if($admin=="true"){
			$erab = $mysqli->prepare("SELECT id, username, saila, arduraduna, bidaltzailea, eraikina, pisua, gela, laburpena, data, egoera FROM lanagindua order by id desc LIMIT ?" );
			$erab->bind_param("i", $kop);
		}else{
			$erab = $mysqli->prepare("SELECT id, username, saila, arduraduna, bidaltzailea, eraikina, pisua, gela, laburpena, data, egoera FROM lanagindua where arduraduna=? order by id desc LIMIT ?" );
			$erab->bind_param("si", $user, $kop);
		}
	}
		$erab->execute();
		$erab->bind_result($id, $user, $saila, $arduraduna, $bidaltzailea, $eraikina, $pisua, $gela, $laburpena, $data, $egoera);
		while ($erab->fetch()) {
			$erantzuna[] = array('id'=> $id, 'username'=> $user, 'saila'=> $saila,'arduraduna'=> $arduraduna, 'bidaltzailea'=> $bidaltzailea, 'eraikina'=> $eraikina, 'pisua'=> $pisua, 'gela'=> $gela, 'laburpena'=> $laburpena, 'data'=> $data, 'egoera'=> $egoera);
		}
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
}
?>