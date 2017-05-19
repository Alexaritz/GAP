<?php
/* user + pass jaso*/
//$user = $_POST['usuario'];
/*$lanid = $_POST['lanid'];
$langile = $_POST['langile'];
$data = $_POST['data'];
$denborah = $_POST['denborah'];
$denboramin = $_POST['denboramin'];*/

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
$erantzuna["log"] = "true";

$erantzuna["mezua"] = "Zuzen txertatu da."; 
$resultadosJson=json_encode( $erantzuna );
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>