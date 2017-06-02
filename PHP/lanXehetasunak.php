<?php
include 'dbcon.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
$id = $_GET['lanid'];

$erantzuna = array();
//arduraduna='$user' and
		$erab = $mysqli->query( "SELECT * FROM lanagindua where  id='$id'" );
		$num_rows=mysqli_num_rows($erab);
		if ($num_rows> 0){
			while($datos=mysqli_fetch_array($erab,MYSQLI_ASSOC)){
				$erantzuna[]=array_map(null, $datos);
			}
		}
		$resultadosJson=json_encode( $erantzuna );
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
?>