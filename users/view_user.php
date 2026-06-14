<?php

include("../auth/check_auth.php");

include("../config/db.php");

$id = $_GET['id'];

$user = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT *
         FROM users
         WHERE id='$id'"
    )
);

if(!$user)
{
    die("User Not Found");
}

function getRole($level)
{
    if($level == -1) return "Super Admin";
    if($level == 3) return "Admin";
    if($level == 2) return "Manager";

    return "User";
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>View User</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{
background:#f1f5f9;
padding:30px;
}

.container{
max-width:1100px;
margin:auto;
}

.page-title{
font-size:30px;
font-weight:700;
color:#0f172a;
margin-bottom:25px;
}

.card{
background:white;
border-radius:20px;
overflow:hidden;
box-shadow:0 8px 25px rgba(0,0,0,.08);
}

.profile-header{
background:linear-gradient(135deg,#2563eb,#1e40af);
padding:40px;
text-align:center;
color:white;
}

.profile-image{
width:140px;
height:140px;
border-radius:50%;
object-fit:cover;
border:5px solid white;
background:white;
}

.avatar{
width:140px;
height:140px;
border-radius:50%;
background:white;
color:#2563eb;
font-size:60px;
font-weight:bold;
display:flex;
align-items:center;
justify-content:center;
margin:auto;
border:5px solid white;
}

.username{
font-size:28px;
font-weight:700;
margin-top:15px;
}

.role{
display:inline-block;
margin-top:10px;
padding:8px 15px;
border-radius:25px;
background:rgba(255,255,255,.2);
font-size:13px;
font-weight:600;
}

.content{
padding:30px;
}

.section{
margin-bottom:30px;
}

.section-title{
font-size:18px;
font-weight:700;
margin-bottom:15px;
padding-bottom:10px;
border-bottom:2px solid #e2e8f0;
color:#2563eb;
}

.grid{
display:grid;
grid-template-columns:1fr 1fr;
gap:20px;
}

.info-box{
background:#f8fafc;
padding:18px;
border-radius:12px;
}

.label{
font-size:13px;
color:#64748b;
margin-bottom:5px;
}

.value{
font-size:16px;
font-weight:600;
color:#0f172a;
}

.status-active{
display:inline-block;
padding:8px 14px;
border-radius:20px;
background:#dcfce7;
color:#15803d;
font-weight:600;
}

.status-inactive{
display:inline-block;
padding:8px 14px;
border-radius:20px;
background:#fee2e2;
color:#dc2626;
font-weight:600;
}

.profile-box{
background:#f8fafc;
padding:20px;
border-radius:12px;
line-height:1.7;
color:#334155;
}

.actions{
margin-top:30px;
display:flex;
gap:10px;
}

.btn{
padding:12px 20px;
border-radius:10px;
text-decoration:none;
font-weight:600;
color:white;
}

.edit-btn{
background:#f59e0b;
}

.back-btn{
background:#64748b;
}

.edit-btn:hover{
background:#d97706;
}

.back-btn:hover{
background:#475569;
}

@media(max-width:768px){

.grid{
grid-template-columns:1fr;
}

}

</style>
</head>
<body>

<div class="container">

<div class="page-title">
👤 User Details
</div>

<div class="card">

<div class="profile-header">

<?php if(!empty($user['image'])) { ?>

<img
src="uploads/<?= $user['image'] ?>"
class="profile-image">

<?php } else { ?>

<div class="avatar">
<?= strtoupper(substr($user['username'],0,1)) ?>
</div>

<?php } ?>

<div class="username">
<?= $user['username'] ?>
</div>

<div class="role">
<?= getRole($user['user_level']) ?>
</div>

</div>

<div class="content">

<div class="section">

<div class="section-title">
📋 User Information
</div>

<div class="grid">

<div class="info-box">
<div class="label">User ID</div>
<div class="value">
<?= $user['id'] ?>
</div>
</div>

<div class="info-box">
<div class="label">Username</div>
<div class="value">
<?= $user['username'] ?>
</div>
</div>

<div class="info-box">
<div class="label">Email Address</div>
<div class="value">
<?= $user['email'] ?: 'N/A' ?>
</div>
</div>

<div class="info-box">
<div class="label">Mobile Number</div>
<div class="value">
<?= $user['mobile'] ?: 'N/A' ?>
</div>
</div>

<div class="info-box">
<div class="label">Role</div>
<div class="value">
<?= getRole($user['user_level']) ?>
</div>
</div>

<div class="info-box">
<div class="label">Account Status</div>

<?php if($user['isactivated']) { ?>

<span class="status-active">
Active
</span>

<?php } else { ?>

<span class="status-inactive">
Inactive
</span>

<?php } ?>

</div>

</div>

</div>

<div class="section">

<div class="section-title">
📝 Profile Description
</div>

<div class="profile-box">

<?= !empty($user['profile'])
? nl2br($user['profile'])
: "No profile description available."; ?>

</div>

</div>

<div class="actions">

<a
href="edit_user.php?id=<?= $user['id'] ?>"
class="btn edit-btn">
✏️ Edit User
</a>

<a
href="user_list.php"
class="btn back-btn">
← Back to Users
</a>

</div>

</div>

</div>

</div>

</body>
</html>