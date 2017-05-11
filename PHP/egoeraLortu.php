<?php
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['lanid'];
//session_start();
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
		$erab = $mysqli->query( "SELECT * FROM lanegoera" );
		$num_rows=mysqli_num_rows($erab);
		$int=0;
		while($datos=mysqli_fetch_array($erab,MYSQLI_ASSOC)){
			$erantzuna[$int]=array_map('utf8_encode', $datos);
			$int=$int+1;
		}
		$erab = $mysqli->query( "SELECT * FROM lanAgindua where id='$id'" );
		$row = mysqli_fetch_array($erab, MYSQLI_ASSOC);
		$erantzuna[$int]=$row["egoera"];
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>