<?php
include("../auth/check_auth.php");

include("../config/db.php");

$users = mysqli_query(
    $conn,
    "SELECT *
     FROM users
     ORDER BY id DESC"
);

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
<title>User Management</title>

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
max-width:1400px;
margin:auto;
}

.header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.title{
font-size:28px;
font-weight:700;
color:#0f172a;
}

.add-btn{
background:#2563eb;
color:white;
padding:12px 20px;
border-radius:10px;
text-decoration:none;
font-weight:600;
}

.add-btn:hover{
background:#1d4ed8;
}

.card{
background:white;
border-radius:20px;
padding:25px;
box-shadow:0 8px 25px rgba(0,0,0,.08);
}

table{
width:100%;
border-collapse:collapse;
}

th{
background:#2563eb;
color:white;
padding:15px;
font-size:14px;
text-align:left;
}

th:first-child{
border-top-left-radius:10px;
}

th:last-child{
border-top-right-radius:10px;
}

td{
padding:14px;
border-bottom:1px solid #e2e8f0;
vertical-align:middle;
}

tr:hover{
background:#f8fafc;
}

.avatar{
width:50px;
height:50px;
border-radius:50%;
object-fit:cover;
border:2px solid #e2e8f0;
}

.avatar-placeholder{
width:50px;
height:50px;
border-radius:50%;
background:#2563eb;
color:white;
display:flex;
align-items:center;
justify-content:center;
font-weight:bold;
font-size:18px;
}

.role{
padding:6px 12px;
border-radius:20px;
font-size:12px;
font-weight:600;
display:inline-block;
}

.role-user{
background:#dbeafe;
color:#1d4ed8;
}

.role-manager{
background:#fef3c7;
color:#d97706;
}

.role-admin{
background:#dcfce7;
color:#15803d;
}

.role-super{
background:#ede9fe;
color:#7c3aed;
}

.active{
background:#dcfce7;
color:#15803d;
padding:6px 12px;
border-radius:20px;
font-size:12px;
font-weight:600;
}

.inactive{
background:#fee2e2;
color:#dc2626;
padding:6px 12px;
border-radius:20px;
font-size:12px;
font-weight:600;
}

.actions{
display:flex;
gap:6px;
}

.btn{
padding:8px 12px;
border-radius:8px;
text-decoration:none;
font-size:13px;
font-weight:600;
color:white;
}

.view{
background:#16a34a;
}

.edit{
background:#f59e0b;
}

.delete{
background:#dc2626;
}

.view:hover{
background:#15803d;
}

.edit:hover{
background:#d97706;
}

.delete:hover{
background:#b91c1c;
}

.no-data{
text-align:center;
padding:30px;
color:#64748b;
}

.stats{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:20px;
margin-bottom:25px;
}

.stat-card{
background:white;
padding:20px;
border-radius:16px;
box-shadow:0 5px 20px rgba(0,0,0,.08);
}

.stat-title{
font-size:13px;
color:#64748b;
margin-bottom:8px;
}

.stat-value{
font-size:28px;
font-weight:700;
color:#0f172a;
}

@media(max-width:900px){

.stats{
grid-template-columns:1fr 1fr;
}

table{
display:block;
overflow-x:auto;
}

}

</style>
</head>

<body>

<div class="container">

<?php

$totalUsers = mysqli_num_rows($users);

$activeUsers = mysqli_fetch_assoc(
mysqli_query(
$conn,
"SELECT COUNT(*) total
FROM users
WHERE isactivated=1"
)
)['total'];

$admins = mysqli_fetch_assoc(
mysqli_query(
$conn,
"SELECT COUNT(*) total
FROM users
WHERE user_level IN(-1,3)"
)
)['total'];

$managers = mysqli_fetch_assoc(
mysqli_query(
$conn,
"SELECT COUNT(*) total
FROM users
WHERE user_level=2"
)
)['total'];

?>

<div class="stats">

<div class="stat-card">
<div class="stat-title">Total Users</div>
<div class="stat-value"><?= $totalUsers ?></div>
</div>

<div class="stat-card">
<div class="stat-title">Active Users</div>
<div class="stat-value"><?= $activeUsers ?></div>
</div>

<div class="stat-card">
<div class="stat-title">Admins</div>
<div class="stat-value"><?= $admins ?></div>
</div>

<div class="stat-card">
<div class="stat-title">Managers</div>
<div class="stat-value"><?= $managers ?></div>
</div>

</div>

<div class="header">

<div class="title">
👥 User Management
</div>

<a href="add_user.php" class="add-btn">
➕ Add User
</a>

</div>

<div class="card">

<table>

<tr>
<th>Photo</th>
<th>Username</th>
<th>Email</th>
<th>Mobile</th>
<th>Role</th>
<th>Status</th>
<th>Actions</th>
</tr>

<?php

mysqli_data_seek($users,0);

if(mysqli_num_rows($users)>0)
{

while($row=mysqli_fetch_assoc($users))
{

$roleClass="role-user";

if($row['user_level']==2)
$roleClass="role-manager";

if($row['user_level']==3)
$roleClass="role-admin";

if($row['user_level']==-1)
$roleClass="role-super";

?>

<tr>

<td>

<?php if(!empty($row['image'])) { ?>

<img
src="uploads/<?= $row['image'] ?>"
class="avatar">

<?php } else { ?>

<div class="avatar-placeholder">
<?= strtoupper(substr($row['username'],0,1)) ?>
</div>

<?php } ?>

</td>

<td>
<b><?= $row['username'] ?></b>
</td>

<td>
<?= $row['email'] ?>
</td>

<td>
<?= $row['mobile'] ?>
</td>

<td>

<span class="role <?= $roleClass ?>">

<?= getRole($row['user_level']) ?>

</span>

</td>

<td>

<?php if($row['isactivated']) { ?>

<span class="active">
Active
</span>

<?php } else { ?>

<span class="inactive">
Inactive
</span>

<?php } ?>

</td>

<td>

<div class="actions">

<a
href="view_user.php?id=<?= $row['id'] ?>"
class="btn view">
View
</a>

<a
href="edit_user.php?id=<?= $row['id'] ?>"
class="btn edit">
Edit
</a>

<a
href="delete_user.php?id=<?= $row['id'] ?>"
class="btn delete"
onclick="return confirm('Delete this user?')">
Delete
</a>

</div>

</td>

</tr>

<?php
}
}
else
{
?>

<tr>
<td colspan="7" class="no-data">
No Users Found
</td>
</tr>

<?php
}
?>

</table>

</div>

</div>

</body>
</html>