<?php

include("../auth/check_auth.php");

include("../config/db.php");

$id = $_GET['id'];

mysqli_query(
    $conn,
    "DELETE FROM borewell
     WHERE borewell_id='$id'"
);

header("Location:borewell_list.php");
exit();

?>