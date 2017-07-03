<?php
include 'dbcon.php';
include_once 'session.php';
/* user + pass jaso*/
$user = $_GET['usuario'];
//
$erantzuna = array();
$datuak = array();
if($_SESSION['logged']){
		$erab = $mysqli->prepare( "SELECT id FROM lanagindua WHERE arduraduna=? and egoera='prebentiboa' and DATE_FORMAT(prebdata,'%m-%d')<=DATE_FORMAT(CURDATE(),'%m-%d')" );
		$erab->bind_param("s", $user );
		$erab->execute();
		$erab->bind_result($id);
		while ($erab->fetch()) {
			$datuak[] = array('id'=> $id);
		}
		$erantzuna=json_encode( $datuak );
}else{
	$erantzuna[]="logout";
}
/*emaitza json formatura bihurtzen da*/
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $erantzuna . ');';
?>