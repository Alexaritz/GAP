<?php
include 'dbcon.php';
$target_dir = "../ARGAZKIAK/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
		/*header('Content-Type: application/json');
		echo json_encode(['erantzuna' => "File is an image - " . $check["mime"] . ".", 'ok' => "zuzena"]);*/
        $uploadOk = 1;
    } else {
		header('Content-Type: application/json');
		echo json_encode(['erantzuna' => "File is not an image.", 'ok' => "errorea"]);
        $uploadOk = 0;
    }
}/*
 //Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}*/
// Check file size
if ($_FILES["fileToUpload"]["size"] > 5000000) {
	header('Content-Type: application/json');
	echo json_encode(['erantzuna' => "Sorry, your file is too large.", 'ok' => "errorea"]);
    $uploadOk = 0;
}
// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
	header('Content-Type: application/json');
	echo json_encode(['erantzuna' => "Sorry, only JPG, JPEG, PNG & GIF files are allowed.", 'ok' => "errorea"]);
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {

} else {
	// if everything is ok, try to upload file
	//IZENA LORTU

		$erab = $mysqli->query( "SELECT * FROM lanagindua where  argazkia!=''" );
		$num_rows=mysqli_num_rows($erab);
		$num_rows=$num_rows;
		//IRUDI KONPRIMITUA IZEN BERRIKIN GORDE
		$target_file2= $target_dir . $num_rows;
		if($imageFileType == "jpg" || $imageFileType == "jpeg"){
			$image = imagecreatefromjpeg($_FILES["fileToUpload"]["tmp_name"]);
		}
		if($imageFileType == "png"){
			$image = imagecreatefrompng($_FILES["fileToUpload"]["tmp_name"]);
		}
		if($imageFileType == "gif"){
			$image = imagecreatefromgif($_FILES["fileToUpload"]["tmp_name"]);
		}	
		if (imagejpeg($image, $target_file2 . "argazkia.jpeg", 75)){
			header('Content-Type: application/json');
			echo json_encode(['erantzuna' => "Argazkia erabat igo da.", 'ok' => "zuzena"]);
		}else{
			header('Content-Type: application/json');
			echo json_encode(['erantzuna' => "Argazkia igotzean errorea.", 'ok' => "okerra"]);
		}
}
?>