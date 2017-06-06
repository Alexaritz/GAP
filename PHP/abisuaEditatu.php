<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['id'];
$saila = $_GET['saila'];
$arduraduna = $_GET['arduraduna'];
$bidaltzailea = $_GET['bidaltzailea'];
$eraikina = $_GET['eraikina'];
$pisua = $_GET['pisua'];
$gela = $_GET['gela'];
$lehentasuna = $_GET['lehentasuna'];
$laburpena = $_GET['laburpena'];
$deskribapena = $_GET['deskribapena'];

if(isset($_SESSION['logged']) && $_SESSION['logged'] == true && $user!=""){
	
//if(isset($_POST["submit"]) &&) {
$erantzuna = array(); 
$erantzuna["log"] = "true";
	if ($saila!="" && $arduraduna!="" && $eraikina!="" && $pisua!="" && $gela!="" && $lehentasuna!="" && $laburpena!="" && $deskribapena!=""){
		$erab = $mysqli->prepare("UPDATE lanagindua SET saila=?, arduraduna=?, bidaltzailea=?, eraikina=?, pisua=?, gela=?, lehentasuna=?, laburpena=?, deskribapena=?, egoera=? WHERE id=?" );
		$erab->bind_param("sssssssssss", $saila, $arduraduna, $bidaltzailea, $eraikina, $pisua, $gela, $lehentasuna, $laburpena, $deskribapena, $egoera, $id);
		$erab->execute();
		$erantzuna["mezua"] = "Zuzen eguneratu da.";
	}else{
		$erantzuna["mezua"] = "Errorea txertatzean. Datu guztiak bete behar dira.";
	}
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