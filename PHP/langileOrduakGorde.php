<?php
/* user + pass jaso*/
//$user = $_POST['usuario'];
$lanid = $_POST['lanid'];
$lanorduID = $_POST['lanOrduID'];
$langile = $_POST['langile'];
$data = $_POST['data'];
$denborah = $_POST['denborah'];
$denboramin = $_POST['denboramin'];
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
//if(isset($_SESSION['logged']) && $_SESSION['logged'] == true && $user!=""){
	
//if(isset($_POST["submit"]) &&) {
$erantzuna = array(); 
//$erantzuna["log"] = "true";
//echo count($langile);

for($i=0;$i<count($langile);$i++){
	//if($langile[$i]!=""/* && $age[$i]!="" && $job[$i]!=""*/){
		$insert = $mysqli->query( "INSERT INTO langileorduak (lanID, langilea, denborah, denboramin, lanEguna) 
		values ('$lanid','$langile[$i]','$denborah[$i]','$denboramin[$i]','$data[$i]')
		ON DUPLICATE KEY UPDATE  langilea='$langile[$i]', denborah='$denborah[$i]', denboramin='$denboramin[$i]', lanEguna='$data[$i]'" );
    //}else{
		//$erantzuna["mezua"] = "Errorea txertatzean. Datu guztiak bete behar dira.";
    //}
}
$erantzuna[] = "Zuzen txertatu da."; 
$resultadosJson=json_encode( $erantzuna );
//echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
/*}else{
	$erantzuna["mezua"] = "Saioa amaitu da. Logeatu berriro.";
	$erantzuna["log"] = "false";
}*/
//$conn->close();
?>