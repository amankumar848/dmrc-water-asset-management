<?php
session_start();
if(!isset($_SESSION['user_id'])){
    header("Location: /water_asset_dmrc/login.php");
    exit();
}
?>
