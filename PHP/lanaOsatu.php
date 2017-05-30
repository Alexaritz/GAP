<?php
include 'dbcon.php';
/*datuak jaso*/
$user = $_GET['usuario'];
$lanid = $_GET['lanid'];
$azalpena = $_GET['azalpena'];
$materiala = $_GET['materiala'];

//if(isset($_POST["submit"]) &&) {
$erantzuna = array(); 
	if ($user!="" && $lanid!=""){
			$erab = $mysqli->query( "INSERT INTO lanazalpena (lanid, arduraduna, azalpena, materiala, itxiData) 
			VALUES('$lanid', '$user','$azalpena','$materiala',now()) ON DUPLICATE KEY UPDATE    
			azalpena=IF(azalpena!='$azalpena', '$azalpena', azalpena), 
			materiala=IF(materiala!='$materiala', '$materiala', materiala),
			itxiData=IF(itxiData!=now(), now(), itxiData)" );
			$erantzuna["mezua"] = "Zuzen txertatu da.";
	}else{
		$erantzuna["mezua"] = "Errorea txertatzean. Datu guztiak bete behar dira.";
	}
//$erantzuna["mysql"] = mysqli_error($mysqli);
//$erantzuna[] = "fsadgd";
/*emaitza json formatura bihurtzen da*/
$resultadosJson = json_encode($erantzuna);
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
//$conn->close();
?>