<?php

include("../auth/check_auth.php");

include("../config/db.php");

$id = $_GET['id'];

mysqli_query(
    $conn,
    "DELETE FROM station
     WHERE station_id='$id'"
);

header("Location: station_list.php");
exit();

?>