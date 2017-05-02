<?php
$files = glob("../ARGAZKIAK/descarga.jpg");

for ($i=0; $i<count($files); $i++) {
    $image = $files[$i];
    print $image ."<br />";
    echo '<img src="'.$image .'" width="50%" alt="Random image" />'."<br /><br />";
}

?>