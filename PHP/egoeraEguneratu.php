<?php
/*datuak jaso*/
$user = $_GET['usuario'];
$lanid = $_GET['lanid'];
$egoera = $_GET['egoera'];
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
//if(isset($_POST["submit"]) &&) {
$erantzuna = array(); 
	if ($lanid!=""){
			$erab = $mysqli->query( "UPDATE lanagindua set egoera='$egoera' where id='$lanid'");
			$erantzuna["mezua"] = "Egoera eguneratu da.";
	}else{
		$erantzuna["mezua"] = "Errorea egoera eguneratzean.";
	}

/*emaitza json formatura bihurtzen da*/
$resultadosJson = json_encode($erantzuna);
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
//$conn->close();
?>