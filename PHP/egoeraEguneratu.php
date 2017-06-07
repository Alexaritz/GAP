<?php
include 'dbcon.php';
/*datuak jaso*/
//$user = $_GET['usuario'];
$lanid = $_GET['lanid'];
$egoera = $_GET['egoera'];

//if(isset($_POST["submit"]) &&) {
$erantzuna = array(); 
	if ($lanid!=""){
			$erab = $mysqli->prepare( "UPDATE lanagindua SET egoera=? WHERE id=?");
			$erab->bind_param("si", $egoera, $lanid);
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