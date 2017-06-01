<?php
session_start();
$servidor = "mysql.hostinger.es";//localhost mysql.hostinger.es
$usuario = "u779484475_alex";//root u779484475_alex
$password = "n1fXhn9qyo";//n1fXhn9qyo
$sdb = "u779484475_gap";//u779484475_gap

$mysqli =new mysqli ($servidor,$usuario,$password, $sdb);
//$mysqli =new mysqli ("localhost","root","", $sdb);
if ($mysqli->connect_error) {
    printf("Connection failed: " . $mysqli->connect_error);
} 
?>