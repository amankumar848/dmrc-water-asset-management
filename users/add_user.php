<?php

include("../auth/check_auth.php");

if(
$_SESSION['user_level'] != 3 &&
$_SESSION['user_level'] != -1
){
die("Access Denied");
}

include("../config/db.php");

if(isset($_POST['save']))
{

$username      = mysqli_real_escape_string($conn,$_POST['username']);
$email         = mysqli_real_escape_string($conn,$_POST['email']);
$mobile        = mysqli_real_escape_string($conn,$_POST['mobile']);
$user_level    = $_POST['user_level'];
$isactivated   = $_POST['isactivated'];
$profile       = mysqli_real_escape_string($conn,$_POST['profile']);

$password_hash =
password_hash(
$_POST['password'],
PASSWORD_DEFAULT
);

$image="";

if(!empty($_FILES['image']['name']))
{

$filename =
time().
"_".
basename($_FILES['image']['name']);

move_uploaded_file(
$_FILES['image']['tmp_name'],
"uploads/".$filename
);

$image = $filename;
}

mysqli_query(
$conn,
"INSERT INTO users
(
username,
password_hash,
image,
email,
mobile,
user_level,
isactivated,
profile
)
VALUES
(
'$username',
'$password_hash',
'$image',
'$email',
'$mobile',
'$user_level',
'$isactivated',
'$profile'
)"
);

header("Location:user_list.php");
exit();
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Add User</title>

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

.form-card{
background:white;
padding:30px;
border-radius:20px;
box-shadow:0 8px 25px rgba(0,0,0,.08);
}

.section{
margin-bottom:30px;
}

.section-title{
font-size:18px;
font-weight:700;
margin-bottom:20px;
padding-bottom:10px;
border-bottom:2px solid #e2e8f0;
color:#2563eb;
}

.grid{
display:grid;
grid-template-columns:1fr 1fr;
gap:20px;
}

.form-group{
display:flex;
flex-direction:column;
}

label{
margin-bottom:8px;
font-weight:600;
color:#334155;
}

input,
select,
textarea{
padding:12px;
border:1px solid #cbd5e1;
border-radius:10px;
font-size:14px;
outline:none;
}

input:focus,
select:focus,
textarea:focus{
border-color:#2563eb;
}

textarea{
height:120px;
resize:none;
}

.full{
grid-column:1 / -1;
}

.btn-row{
display:flex;
gap:10px;
margin-top:20px;
}

.save-btn{
background:#2563eb;
color:white;
border:none;
padding:14px 24px;
border-radius:10px;
cursor:pointer;
font-weight:600;
}

.save-btn:hover{
background:#1d4ed8;
}

.back-btn{
background:#64748b;
color:white;
text-decoration:none;
padding:14px 24px;
border-radius:10px;
font-weight:600;
}

.back-btn:hover{
background:#475569;
}

.preview{
width:120px;
height:120px;
border-radius:50%;
border:3px solid #e2e8f0;
object-fit:cover;
margin-top:10px;
display:none;
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
👤 Add New User
</div>

<form
method="POST"
enctype="multipart/form-data"
class="form-card">

<!-- SECTION 1 -->

<div class="section">

<div class="section-title">
🔐 Login Information
</div>

<div class="grid">

<div class="form-group">
<label>Username *</label>
<input
type="text"
name="username"
required>
</div>

<div class="form-group">
<label>Password *</label>
<input
type="password"
name="password"
required>
</div>

</div>

</div>

<!-- SECTION 2 -->

<div class="section">

<div class="section-title">
👤 Personal Information
</div>

<div class="grid">

<div class="form-group">
<label>Email</label>
<input
type="email"
name="email">
</div>

<div class="form-group">
<label>Mobile</label>
<input
type="text"
name="mobile"
maxlength="10">
</div>

<div class="form-group">
<label>Profile Image</label>
<input
type="file"
name="image"
accept="image/*"
onchange="previewImage(this)">
<img id="preview" class="preview">
</div>

<div class="form-group full">
<label>Profile Description</label>
<textarea
name="profile"></textarea>
</div>

</div>

</div>

<!-- SECTION 3 -->

<div class="section">

<div class="section-title">
⚙️ User Permissions
</div>

<div class="grid">

<div class="form-group">
<label>User Role</label>

<select name="user_level">

<option value="1">
User
</option>

<option value="2">
Manager
</option>

<option value="3">
Admin
</option>

<option value="-1">
Super Admin
</option>

</select>

</div>

<div class="form-group">
<label>Status</label>

<select name="isactivated">

<option value="1">
Active
</option>

<option value="0">
Inactive
</option>

</select>

</div>

</div>

</div>

<div class="btn-row">

<button
type="submit"
name="save"
class="save-btn">
💾 Save User
</button>

<a
href="user_list.php"
class="back-btn">
← Back
</a>

</div>

</form>

</div>

<script>

function previewImage(input)
{
if(input.files && input.files[0])
{
let reader = new FileReader();

reader.onload = function(e)
{
document.getElementById('preview').src =
e.target.result;

document.getElementById('preview').style.display =
'block';
};

reader.readAsDataURL(input.files[0]);
}
}

</script>

</body>
</html>