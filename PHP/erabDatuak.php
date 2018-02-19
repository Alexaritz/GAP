<?php
include 'dbcon.php';
include_once 'session.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$userID = $_GET['userID'];
$datuak = array(); 
		$erab = $mysqli->prepare( "SELECT erabiltzailea.id, erabiltzailea.izena, erabiltzailea.abizenak, erabiltzailea.username, erabiltzailea.telefonoa, erabiltzailea.email, erabiltzailea.mota, arduraduna.saila FROM erabiltzailea LEFT JOIN arduraduna on erabiltzailea.username=arduraduna.username where erabiltzailea.id=?" );
		$erab->bind_param("i", $userID );
		$erab->execute();
		$erab->bind_result($id, $izena, $abizenak, $username, $telefonoa, $email, $mota, $saila);
		while ($erab->fetch()) {
			$datuak[] = array('id'=> $id, 'izena'=> $izena, 'abizenak'=> $abizenak, 'username'=> $username, 'telefonoa'=> $telefonoa, 'email'=> $email, 'mota'=> $mota, 'saila'=> $saila);
		}
		$resultadosJson=json_encode( $datuak );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>