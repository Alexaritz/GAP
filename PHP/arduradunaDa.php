<?php
/* user jaso*/
$user = $_GET['usuario'];

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

$erantzuna = array(); 

		$erab = $mysqli->query( "SELECT * FROM arduraduna WHERE username=('$user')" );
		$num_rows=mysqli_num_rows($erab);
		if ($num_rows> 0){
			$erantzuna["mezua"] = "Erabiltzailea arduraduna da.";
			$erantzuna["arduraduna"] = "bai";
		}else{
			$erantzuna["mezua"] = "Erabiltzailea ez da arduraduna.";
			$erantzuna["arduraduna"] = "ez";
		}

/*emaitza json formatura bihurtzen da*/
$resultadosJson = json_encode($erantzuna);
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>