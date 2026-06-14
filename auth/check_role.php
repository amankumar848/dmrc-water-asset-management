<?php

if(!isset($_SESSION))
{
    session_start();
}

if(!isset($_SESSION['user_level']))
{
    header("Location: ../login.php");
    exit();
}

function allowRoles($roles)
{
    if(!in_array($_SESSION['user_level'], $roles))
    {
        die("
        <h2>Access Denied</h2>
        <p>You do not have permission to access this page.</p>
        ");
    }
}
?>