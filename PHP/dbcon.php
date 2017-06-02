<?php
header("Content-Type: text/html;charset=utf-8");
session_start();
$servidor = "mysql.hostinger.es";//localhost mysql.hostinger.es
$usuario = "u779484475_alex";//root u779484475_alex
$password = "";//
$sdb = "u779484475_gap";//u779484475_gap

$mysqli =new mysqli ($servidor,$usuario,$password, $sdb);
//$mysqli =new mysqli ("localhost","root","", $sdb);
if ($mysqli->connect_error) {
    printf("Connection failed: " . $mysqli->connect_error);
} 
$tilde = $mysqli->query("SET NAMES 'utf8'");
?>