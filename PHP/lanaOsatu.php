<?php
/*datuak jaso*/
$user = $_GET['usuario'];
$lanid = $_GET['lanid'];
$denborah = $_GET['denborah'];
$denboramin = $_GET['denboramin'];
$azalpena = $_GET['azalpena'];
$materiala = $_GET['materiala'];

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
	if ($user!="" && $lanid!=""){
			$erab = $mysqli->query( "INSERT INTO lanazalpena (lanid, arduraduna, denborah, denboramin, azalpena, materiala, itxiData) 
			VALUES('$lanid', '$user', '$denborah','$denboramin','$azalpena','$materiala',now()) ON DUPLICATE KEY UPDATE    
			denborah='$denborah', denboramin='$denboramin', azalpena='$azalpena', materiala='$materiala', itxiData=now()" );
			$erantzuna["mezua"] = "Zuzen txertatu da.";
	}else{
		$erantzuna["mezua"] = "Errorea txertatzean. Datu guztiak bete behar dira.";
	}

/*emaitza json formatura bihurtzen da*/
$resultadosJson = json_encode($erantzuna);
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
//$conn->close();
?>