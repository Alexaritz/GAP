<?php
include 'dbcon.php';
include_once 'session.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['id'];
/*$saila = $_GET['saila'];
$arduraduna = $_GET['arduraduna'];
$bidaltzailea = $_GET['bidaltzailea'];
$eraikina = $_GET['eraikina'];
$pisua = $_GET['pisua'];
$gela = $_GET['gela'];
$lehentasuna = $_GET['lehentasuna'];
$laburpena = $_GET['laburpena'];
$deskribapena = $_GET['deskribapena'];*/

if(isset($_SESSION['logged']) && $_SESSION['logged'] == true && $user!="" && $_SESSION['admin'] == true){
	
//if(isset($_POST["submit"]) &&) {
$erantzuna = array(); 
$erantzuna["log"] = "true";
		/*$erab = $mysqli->prepare( "SELECT id FROM lanagindua WHERE id=?" );
		$erab->bind_param("i", $id);
		$erab->execute();
		$erab->bind_result($id);
		if($erab-> fetch()){*/
		/*OPTIMIZAZIOA FALTA*/
			$erab = $mysqli->prepare( "DELETE FROM lanagindua WHERE lanagindua.id=?" );
			$erab->bind_param("i", $id);
			$erab->execute();
			$erab = $mysqli->prepare( "DELETE FROM lanazalpena WHERE lanazalpena.lanid=?" );
			$erab->bind_param("i", $id);
			$erab->execute();
			$erab = $mysqli->prepare( "DELETE FROM langileorduak WHERE langileorduak.lanID=?" );
			$erab->bind_param("i", $id);
			$erab->execute();
			$erantzuna["mezua"] = "Abisua ezabatu da.";
			$erantzuna["zuzen"] = "ok";
		/*}else{
			$erantzuna["zuzen"] = "error";
			$erantzuna["mezua"] = "Ez da aurkitu id horretako abisurik.";
		}*/
}else{
	$erantzuna["mezua"] = "Saioa amaitu da. Logeatu berriro.";
	$erantzuna["log"] = "false";
}
/*emaitza json formatura bihurtzen da*/
$resultadosJson = json_encode($erantzuna);
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
//$conn->close();
?>