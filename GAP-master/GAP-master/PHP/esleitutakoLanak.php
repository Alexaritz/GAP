<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$kop = $_GET['kop'];
$kop2 = $_GET['kop2'];
$admin = $_GET['admin'];
$erantzuna = array(); 
	if($kop2!=="") {
		if($admin=="true"){//, data desc
			$erab = $mysqli->query( "SELECT * FROM lanagindua order by id desc LIMIT $kop, $kop2" );
		}else{
		$erab = $mysqli->query( "SELECT * FROM lanagindua where arduraduna='$user' order by id desc LIMIT $kop, $kop2" );
		}
	}else{
		if($admin=="true"){
			$erab = $mysqli->query( "SELECT * FROM lanagindua order by id desc LIMIT $kop" );
		}else{
		$erab = $mysqli->query( "SELECT * FROM lanagindua where arduraduna='$user' order by id desc LIMIT $kop" );
		}
	}
		$num_rows=mysqli_num_rows($erab);
		while($datos=mysqli_fetch_array($erab,MYSQLI_ASSOC)){
			$erantzuna[]=array_map('utf8_encode', $datos);
		}
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>