<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$kop = $_GET['kop'];
$kop2 = $_GET['kop2'];

if(isset($_SESSION['logged']) && $_SESSION['logged'] == true && $user!=""){
$erantzuna = array(); 
	if($kop2!=="") {
		$erab = $mysqli->query( "SELECT * FROM lanagindua where username='$user' order by id desc, data desc LIMIT $kop, $kop2" );
	}else{
		$erab = $mysqli->query( "SELECT * FROM lanagindua where username='$user' order by id desc, data desc LIMIT $kop" );
	}
	$int=0;
		$num_rows=mysqli_num_rows($erab);
		while($datos=mysqli_fetch_array($erab,MYSQLI_ASSOC)){
			$erantzuna[$int]=array_map('utf8_encode', $datos);
			$int=$int+1;
		}$erantzuna["log"] = "true";
}else{
	$erantzuna["mezua"] = "Saioa amaitu da. Logeatu berriro.";
	$erantzuna["log"] = "false";
}
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>