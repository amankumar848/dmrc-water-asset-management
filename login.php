<?php
session_start();

include("./config/db.php");

if (!$conn) {
    die("Database Connection Failed");
}

$error = "";

if (isset($_POST['login'])) {

    $username = mysqli_real_escape_string(
        $conn,
        trim($_POST['username'])
    );

    $password = trim($_POST['password']);

    $query = mysqli_query(
        $conn,
        "SELECT * FROM users
         WHERE username='$username'
         LIMIT 1"
    );

    if (mysqli_num_rows($query) == 1) {

        $user = mysqli_fetch_assoc($query);

        /*
         * Current database passwords are:
         * borewell -> 1234
         * manager  -> 12345
         * HOD      -> hod@123
         *
         * Stored in password_hash column as plain text.
         */

        if ($password == $user['password_hash']) {

            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $user['username'];
            $_SESSION['user_level'] = $user['user_level'];

            header("Location: dashboard.php");
            exit();
        }
        else {
            $error = "Invalid Password";
        }
    }
    else {
        $error = "Invalid Username";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
    name="viewport"
    content="width=device-width, initial-scale=1.0"
>

<title>DMRC Login</title>

<link href="https://fonts.googleapis.com/css2?family=Sora:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family:'Sora',sans-serif;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:#0f172a;
    overflow:hidden;
}

body::before{
    content:'';
    position:absolute;
    width:500px;
    height:500px;
    background:#6366f1;
    filter:blur(140px);
    opacity:0.25;
    top:-100px;
    left:-100px;
}

body::after{
    content:'';
    position:absolute;
    width:400px;
    height:400px;
    background:#8b5cf6;
    filter:blur(140px);
    opacity:0.20;
    bottom:-100px;
    right:-100px;
}

.login-card{
    position:relative;
    z-index:2;
    width:430px;
    background:rgba(30,41,59,0.92);
    backdrop-filter:blur(20px);
    border-radius:24px;
    padding:40px;
    border:1px solid rgba(255,255,255,0.08);
}

.logo{
    text-align:center;
    margin-bottom:20px;
}

.logo img{
    width:90px;
}

h1{
    color:white;
    text-align:center;
    font-size:26px;
    margin-bottom:8px;
}

.subtitle{
    text-align:center;
    color:#94a3b8;
    margin-bottom:30px;
}

.input-group{
    margin-bottom:18px;
}

.input-group label{
    display:block;
    color:#cbd5e1;
    margin-bottom:8px;
}

.input-group input{
    width:100%;
    padding:14px;
    border-radius:12px;
    border:1px solid #334155;
    background:#0f172a;
    color:white;
    outline:none;
}

.input-group input:focus{
    border-color:#6366f1;
}

.login-btn{
    width:100%;
    padding:14px;
    border:none;
    border-radius:12px;
    background:linear-gradient(
        90deg,
        #6366f1,
        #8b5cf6
    );
    color:white;
    cursor:pointer;
    font-weight:600;
    margin-top:10px;
}

.login-btn:hover{
    opacity:0.95;
}

.error-box{
    background:#7f1d1d;
    color:white;
    padding:12px;
    border-radius:10px;
    margin-bottom:18px;
    text-align:center;
}

.footer{
    margin-top:25px;
    text-align:center;
    color:#64748b;
    font-size:12px;
}

.demo{
    margin-top:15px;
    font-size:12px;
    color:#94a3b8;
    text-align:center;
}

</style>
</head>

<body>

<div class="login-card">

    <div class="logo">
        <img src="logo5.png" alt="DMRC">
    </div>

    <h1>Delhi Metro Rail Corporation</h1>

    <p class="subtitle">
        Water Asset Management System
    </p>

    <?php if($error!=""){ ?>
        <div class="error-box">
            <?php echo $error; ?>
        </div>
    <?php } ?>

    <form method="POST">

        <div class="input-group">
            <label>Username</label>

            <input
                type="text"
                name="username"
                required
                placeholder="Enter Username"
            >
        </div>

        <div class="input-group">
            <label>Password</label>

            <input
                type="password"
                name="password"
                required
                placeholder="Enter Password"
            >
        </div>

        <button
            class="login-btn"
            name="login"
        >
            Login
        </button>

    </form>

    <div class="demo">
        Demo Users:
        <br>
        borewell / 1234
        <br>
        manager / 12345
        <br>
        HOD / hod@123
    </div>

    <div class="footer">
        Delhi Metro Rail Corporation Ltd.
    </div>

</div>

</body>
</html>