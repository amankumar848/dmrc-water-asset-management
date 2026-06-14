<?php
session_start();
session_destroy();
header("Location: /water_asset_dmrc/login.php");
exit();
?>
