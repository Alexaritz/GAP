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

for($i=0;$i<count($langile);$i++){
	$lang=$langile[$i];
	$denbh=$denborah[$i];
	$denbmin=$denboramin[$i];
	$dat=$data[$i];
	$idlo=$id[$i];
	if($id[$i]!=""){
		$erab = $mysqli->prepare("UPDATE langileorduak SET 
		langilea=?,
		denborah=?,
		denboramin=?,
		lanEguna=?
		WHERE id=?");
		$erab->bind_param("siisi", $lang, $denbh, $denbmin,$dat, $idlo);
		$erab->execute();
	
		/*$update = $mysqli->query( "UPDATE langileorduak SET 
		langilea=IF(langilea!='$langile[$i]','$langile[$i]', langilea),
		denborah=IF(denborah!='$denborah[$i]','$denborah[$i]', denborah),
		denboramin=IF(denboramin!='$denboramin[$i]','$denboramin[$i]', denboramin),
		lanEguna=IF(lanEguna!='$data[$i]', '$data[$i]', lanEguna)
		WHERE id='$id[$i]'");*/
		$erantzuna["mezua"] = "Zuzen eguneratu da.";
    }else{
		$erab = $mysqli->prepare("INSERT INTO langileorduak (lanID, langilea, denborah, denboramin, lanEguna) 
		values (?,?,?,?,?)");
		$erab->bind_param("isiis", $lanid, $lang,  $denbh, $denbmin,$dat);
		$erab->execute();
		
		/*
		$insert = $mysqli->query( "INSERT INTO langileorduak (lanID, langilea, denborah, denboramin, lanEguna) 
		values ('$lanid','$langile[$i]','$denborah[$i]','$denboramin[$i]','$data[$i]')");*/
		$erantzuna["mezua"] = "Zuzen txertatu da.";
    }
}

$resultadosJson=json_encode( $erantzuna );
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
/*}else{
	$erantzuna["mezua"] = "Saioa amaitu da. Logeatu berriro.";
	$erantzuna["log"] = "false";
}*/
//$conn->close();
?>