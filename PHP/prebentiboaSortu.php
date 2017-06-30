<?php
include 'dbcon.php';
include_once 'session.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$saila = $_GET['saila'];
$arduraduna = $_GET['arduraduna'];
$bidaltzailea = $_GET['bidaltzailea'];
$eraikina = $_GET['eraikina'];
$pisua = $_GET['solairua'];
$gela = $_GET['gela'];
$lehentasuna = $_GET['lehentasuna'];
$laburpena = $_GET['laburpena'];
$deskribapena = $_GET['deskribapena'];
$datak = $_GET['data'];
$argazkia = $_GET['argazkia'];

if(isset($_SESSION['logged']) && $_SESSION['logged'] == true && $user!=""){
	
//if(isset($_POST["submit"]) &&) {
$erantzuna = array(); 
$erantzuna["log"] = "true";
for($i=0;$i<count($datak);$i++){
	$data=$datak[$i];
	if ($saila!="" && $arduraduna!="" && $eraikina!="" && $pisua!="" && $gela!="" && $lehentasuna!="" && $laburpena!="" && $deskribapena!=""){
		$erab = $mysqli->prepare( "INSERT INTO lanagindua(username, saila, arduraduna, bidaltzailea, eraikina, pisua, gela, lehentasuna, laburpena, deskribapena, data, prebdata, argazkia, egoera) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(),?, ?, ?)" );
		$egoera="prebentiboa";
		if ($argazkia==""){
			$erab->bind_param("sssssssssssss", $user, $saila, $arduraduna, $bidaltzailea, $eraikina, $pisua, $gela, $lehentasuna, $laburpena, $deskribapena, $data, $argazkia, $egoera);
		}else{
			$arg = $mysqli->query( "SELECT * FROM lanagindua where  argazkia!=''" );
			$num_rows=mysqli_num_rows($arg);
			$argazkia=$num_rows . "argazkia.jpeg";
			$erab->bind_param("sssssssssssss", $user, $saila, $arduraduna, $bidaltzailea, $eraikina, $pisua, $gela, $lehentasuna, $laburpena, $deskribapena, $data, $argazkia, $egoera);
		}
		$erab->execute();
		$erantzuna["mezua"] = "Zuzen txertatu da.";
	}else{
		$erantzuna["mezua"] = "Errorea txertatzean. Datu guztiak bete behar dira.";
	}
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