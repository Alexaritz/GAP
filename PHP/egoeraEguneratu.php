<?php
include 'dbcon.php';
/*datuak jaso*/
$user = $_GET['usuario'];
$lanid = $_GET['lanid'];
$azalpena = $_GET['egoAzalpena'];
$egoera = $_GET['egoera'];

//if(isset($_POST["submit"]) &&) {
$erantzuna = array(); 
	if ($lanid!=""){
		$erab = $mysqli->prepare( "UPDATE lanagindua SET azalpena=?, egoera=? WHERE id=?");
		$erab->bind_param("ssi", $azalpena, $egoera, $lanid);
		$erab->execute();
		$erantzuna["mezua"] = "Egoera eguneratu da.";
	}else{
		$erantzuna["mezua"] = "Errorea egoera eguneratzean.";
	}

/*emaitza json formatura bihurtzen da*/
$resultadosJson = json_encode($erantzuna);
/* emaitza erakusten da, nabigatzaileetan errorerik ez emateko moduan */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';
//$conn->close();
?>