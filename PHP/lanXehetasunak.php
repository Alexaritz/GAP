<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['lanid'];

$erantzuna = array();
//arduraduna='$user' and

		$erab = $mysqli->prepare( "SELECT * FROM lanagindua where  id=?" );
		$erab->bind_param("i", $id );
		$erab->execute();
		$erab->bind_result($id, $user, $saila, $arduraduna, $bidaltzailea, $eraikina, $pisua, $gela, $lehentasuna, $laburpena, $deskribapena, $data, $prebdata, $argazkia, $egoera);
		while ($erab->fetch()) {
			$erantzuna[] = array('id'=> $id, 'username'=> $user, 'saila'=> $saila,'arduraduna'=> $arduraduna, 'bidaltzailea'=> $bidaltzailea, 'eraikina'=> $eraikina, 'pisua'=> $pisua, 'gela'=> $gela, 'lehentasuna'=> $lehentasuna, 'laburpena'=> $laburpena, 'deskribapena'=>$deskribapena, 'data'=> $data, 'prebdata'=> $prebdata, 'argazkia'=>$argazkia, 'egoera'=> $egoera);
		}

/*
		$erab = $mysqli->query( "SELECT * FROM lanagindua where  id='$id'" );
		$num_rows=mysqli_num_rows($erab);
		if ($num_rows> 0){
			while($datos=mysqli_fetch_array($erab,MYSQLI_ASSOC)){
				$erantzuna[]=array_map(null, $datos);
			}
		}*/
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>