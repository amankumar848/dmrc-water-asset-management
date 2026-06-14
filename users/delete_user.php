<?php
include("../auth/check_auth.php");

include("../config/db.php");


if (!$conn) {
    die("Database Connection Failed");
}

/* Only Admin */

if (
    $_SESSION['user_level'] != -1 &&
    $_SESSION['user_level'] != 3
) {
    die("Access Denied");
}

if (!isset($_GET['id'])) {
    header("Location:user_list.php");
    exit();
}

$id = (int)$_GET['id'];

/* Prevent deleting yourself */

if ($id == $_SESSION['id']) {
    echo "
    <script>
        alert('You cannot delete your own account.');
        window.location='user_list.php';
    </script>";
    exit();
}

/* Check User Exists */

$check = mysqli_query(
    $conn,
    "SELECT *
     FROM users
     WHERE id = $id"
);

if (mysqli_num_rows($check) == 0) {
    header("Location:user_list.php");
    exit();
}

/* Delete User */

mysqli_query(
    $conn,
    "DELETE FROM users
     WHERE id = $id"
);

header("Location:user_list.php?msg=deleted");
exit();
?>