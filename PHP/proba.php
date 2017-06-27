<?php
// page1.php

session_start();
echo "LALALA";
echo $_SESSION['logged'];
echo $_SESSION['username'] ;
session_unset();
session_destroy();

?>