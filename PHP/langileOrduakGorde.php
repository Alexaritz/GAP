<?php
include 'dbcon.php';
/* user + pass jaso*/
//$user = $_POST['usuario'];
$id = $_POST['id'];
$lanid = $_POST['lanid'];
$langile = $_POST['langile'];
$data = $_POST['data'];
$denborah = $_POST['denborah'];
$denboramin = $_POST['denboramin'];

//if(isset($_SESSION['logged']) && $_SESSION['logged'] == true && $user!=""){
	
//if(isset($_POST["submit"]) &&) {
$erantzuna = array(); 
//$erantzuna["log"] = "true";
//echo count($langile);

for($i=0;$i<count($langile);$i++){
	if($id[$i]!=""){
	/*	$insert = $mysqli->query( "INSERT INTO langileorduak (id, lanID, langilea, denborah, denboramin, lanEguna) 
		values ('$id[$i]','$lanid','$langile[$i]','$denborah[$i]','$denboramin[$i]','$data[$i]')
		ON DUPLICATE KEY UPDATE  langilea='$langile[$i]', denborah='$denborah[$i]', denboramin='$denboramin[$i]', lanEguna='$data[$i]'" );*/
		$update = $mysqli->query( "UPDATE langileorduak SET 
		langilea=IF(langilea!='$langile[$i]','$langile[$i]', langilea),
		denborah=IF(denborah!='$denborah[$i]','$denborah[$i]', denborah),
		denboramin=IF(denboramin!='$denboramin[$i]','$denboramin[$i]', denboramin),
		lanEguna=IF(lanEguna!='$data[$i]' , '$data[$i]', lanEguna)
		WHERE id='$id[$i]'");
    }else{
		$insert = $mysqli->query( "INSERT INTO langileorduak (lanID, langilea, denborah, denboramin, lanEguna) 
		values ('$lanid','$langile[$i]','$denborah[$i]','$denboramin[$i]','$data[$i]')");
    }
}
//$erantzuna[] = "Zuzen txertatu da."; 
$resultadosJson=json_encode( $erantzuna );
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
/*}else{
	$erantzuna["mezua"] = "Saioa amaitu da. Logeatu berriro.";
	$erantzuna["log"] = "false";
}*/
//$conn->close();
?>