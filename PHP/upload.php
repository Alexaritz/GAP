<?php
$target_dir = "../ARGAZKIAK/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
}
/* Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}*/
// Check file size
if ($_FILES["fileToUpload"]["size"] > 5000000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}
// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
	
//IZENA LORTU
					session_start();
					$servidor = "mysql.hostinger.es";//localhost mysql.hostinger.es
					$usuario = "u199017461_sgta";//root u199017461_sgta
					$password = "n1fXhn9qyo";//n1fXhn9qyo
					$sdb = "mantentzeDB";//u199017461_sgta

					//$mysqli =new mysqli ($servidor,$usuario,$password, $sdb);
					$mysqli =new mysqli ("localhost","root","", $sdb);
					if ($mysqli->connect_error) {
						printf("Connection failed: " . $mysqli->connect_error);
					} 

						$erab = $mysqli->query( "SELECT * FROM lanagindua where  argazkia!=''" );
						$num_rows=mysqli_num_rows($erab);
						$num_rows=$num_rows-1;
					//IRUDI KONPRIMITUA IZEN BERRIKIN GORDE
					$target_file2= $target_dir . $num_rows;
					//$target_file3=
					$image = imagecreatefromjpeg($_FILES["fileToUpload"]["tmp_name"]);
					imagejpeg($image, $target_file2 . "argazkia.jpeg", 75);
					echo "Argazkia zuzen igo da.";
					/*$erantzuna = array(); 
					$erantzuna["mezua"] = "Datu zuzenak.";
					$resultadosJson = json_encode($erantzuna);*/
    /*if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
		
					
        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }*/
}
?>