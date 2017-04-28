<?php
$host = 'localhost';
$user = 'root';
$pass = ' ';



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

/*mysql_connect($host, $user, $pass);*/

/*mysql_select_db('demo');*/
$user="proba";
//$select_path="select * from image_table";
$erab = $mysqli->query( "SELECT * FROM lanagindua WHERE laburpena=('Proba pc')" );
$result=mysqli_fetch_array($erab);
echo '<dt><strong>Technician Image:</strong></dt><dd>'
     . '<img src="data:image/jpeg;base64,' . base64_encode($result['argazkia']) . '" width="290" height="290">'
     . '</dd>';
echo '<img src="data:image/jpeg;base64,'.base64_encode( $erab ).'"/>';
echo '<img src="data:image/jpeg;base64,'.base64_encode( $result['argazkia']->load()) .'" />';
/*
while($row=mysql_fetch_array($var))
{
 $image_name=$row["imagename"];
 $image_path=$row["imagepath"];
 echo "img src=".$image_path."/".$image_name." width=100 height=100";
}*/
?>