<?php
/* user + pass jaso*/
$user = $_GET['usuario'];
$saila = $_GET['saila'];
$arduraduna = $_GET['arduraduna'];
$eraikina = $_GET['eraikina'];
$pisua = $_GET['pisua'];
$gela = $_GET['gela'];
$lehentasuna = $_GET['lehentasuna'];
$laburpena = $_GET['laburpena'];
$deskribapena = $_GET['deskribapena'];
$argazkia = $_GET['argazkia'];

session_start();
$servidor = "mysql.hostinger.es";//localhost mysql.hostinger.es
$usuario = "u199017461_sgta";//root u199017461_sgta
$password = "n1fXhn9qyo";//n1fXhn9qyo
$sdb = "mantentzeDB";//u199017461_sgta

//$mysqli =new mysqli ($servidor,$usuario,$password, $sdb);
$mysqli =new mysqli ("localhost","root","", $sdb);
if ($mysqli->connect_error) {
    printf("Connection failed: " . $mysqli->connect_error);
} 
if(isset($_SESSION['logged']) && $_SESSION['logged'] == true && $user!=""){
	
//if(isset($_POST["submit"]) &&) {
$erantzuna = array(); 
$erantzuna["log"] = "true";
	if ($saila!="" && $arduraduna!="" && $eraikina!="" && $pisua!="" && $gela!="" && $lehentasuna!="" && $laburpena!="" && $deskribapena!=""){
		if ($argazkia==""){
			$insert = $mysqli->query( "INSERT INTO lanagindua(username, saila, arduraduna, eraikina, pisua, gela, lehentasuna, laburpena, deskribapena, data, argazkia, egoera) VALUES ('$user', '$saila', '$arduraduna', '$eraikina', '$pisua', '$gela', '$lehentasuna', '$laburpena', '$deskribapena', now(), '', 'berria')" );
		}else{
			$erab = $mysqli->query( "SELECT * FROM lanagindua where  argazkia!=''" );
			$num_rows=mysqli_num_rows($erab);
			$argazkia=$num_rows . "argazkia.jpeg";
			$insert = $mysqli->query( "INSERT INTO lanagindua(username, saila, arduraduna, eraikina, pisua, gela, lehentasuna, laburpena, deskribapena, data, argazkia, egoera) VALUES ('$user', '$saila', '$arduraduna', '$eraikina', '$pisua', '$gela', '$lehentasuna', '$laburpena', '$deskribapena', now(), '$argazkia', 'berria')" );
		}
		$erantzuna["mezua"] = "Zuzen txertatu da.";
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