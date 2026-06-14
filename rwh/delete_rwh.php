<?php

include("../auth/check_auth.php");

include("../config/db.php");

$id=$_GET['id'];

mysqli_query(
$conn,
"DELETE FROM rwh
WHERE rwh_id='$id'"
);

header("Location:rwh_list.php");
exit();

?>