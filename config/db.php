<?php
$host = "localhost";
$user = "root";
$pass = "root";
$db   = "water_asset_dmrc";

$conn = mysqli_connect($host,$user,$pass,$db);

if(!$conn){
    die("Database Connection Failed");
}
?>
