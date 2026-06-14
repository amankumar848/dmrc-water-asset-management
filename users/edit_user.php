<?php
include("../auth/check_auth.php");

include("../config/db.php");

$id = $_GET['id'];

$user = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT * FROM users WHERE id='$id'"
    )
);

if(isset($_POST['update']))
{
    $username   = mysqli_real_escape_string($conn,$_POST['username']);
    $email      = mysqli_real_escape_string($conn,$_POST['email']);
    $mobile     = mysqli_real_escape_string($conn,$_POST['mobile']);
    $user_level = $_POST['user_level'];
    $status     = $_POST['isactivated'];

    $image = $user['image'];

    if(!empty($_FILES['image']['name']))
    {
        $image = time()."_".$_FILES['image']['name'];

        move_uploaded_file(
            $_FILES['image']['tmp_name'],
            "../uploads/".$image
        );
    }

    if(!empty($_POST['password']))
    {
        $password_hash = password_hash(
            $_POST['password'],
            PASSWORD_DEFAULT
        );

        mysqli_query(
            $conn,
            "UPDATE users SET
            username='$username',
            email='$email',
            mobile='$mobile',
            user_level='$user_level',
            image='$image',
            password_hash='$password_hash',
            isactivated='$status'
            WHERE id='$id'"
        );
    }
    else
    {
        mysqli_query(
            $conn,
            "UPDATE users SET
            username='$username',
            email='$email',
            mobile='$mobile',
            user_level='$user_level',
            image='$image',
            isactivated='$status'
            WHERE id='$id'"
        );
    }

    header("Location:user_list.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>

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
max-width:900px;
margin:auto;
}

.page-header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.page-title{
font-size:30px;
font-weight:700;
color:#0f172a;
}

.back-btn{
background:#334155;
color:white;
padding:10px 18px;
border-radius:8px;
text-decoration:none;
}

.card{
background:white;
border-radius:16px;
padding:30px;
box-shadow:0 10px 25px rgba(0,0,0,.08);
}

.section-title{
font-size:18px;
font-weight:700;
margin-bottom:20px;
color:#0f172a;
padding-bottom:10px;
border-bottom:2px solid #e2e8f0;
}

.grid{
display:grid;
grid-template-columns:repeat(2,1fr);
gap:20px;
}

.form-group{
display:flex;
flex-direction:column;
}

.form-group label{
margin-bottom:8px;
font-weight:600;
color:#334155;
}

.form-control{
padding:12px;
border:1px solid #cbd5e1;
border-radius:10px;
font-size:14px;
}

.form-control:focus{
outline:none;
border-color:#2563eb;
}

.full{
grid-column:1/3;
}

.image-preview{
width:120px;
height:120px;
border-radius:50%;
object-fit:cover;
border:3px solid #e2e8f0;
margin-bottom:15px;
}

.btn-area{
margin-top:30px;
display:flex;
gap:15px;
}

.save-btn{
background:#2563eb;
color:white;
border:none;
padding:12px 30px;
border-radius:10px;
cursor:pointer;
font-size:15px;
font-weight:600;
}

.cancel-btn{
background:#64748b;
color:white;
padding:12px 30px;
text-decoration:none;
border-radius:10px;
}

.save-btn:hover{
background:#1d4ed8;
}

@media(max-width:768px){

.grid{
grid-template-columns:1fr;
}

.full{
grid-column:auto;
}

}

</style>
</head>

<body>

<div class="container">

<div class="page-header">
<h1 class="page-title">✏️ Edit User</h1>

<a href="user_list.php" class="back-btn">
← Back
</a>
</div>

<form method="POST" enctype="multipart/form-data">

<div class="card">

<div class="section-title">
User Information
</div>

<div class="grid">

<div class="form-group full">

<?php
if(!empty($user['image']))
{
?>
<img
src="../uploads/<?= $user['image'] ?>"
class="image-preview">
<?php
}
?>

<label>Profile Image</label>
<input
type="file"
name="image"
class="form-control">
</div>

<div class="form-group">
<label>Username</label>
<input
type="text"
name="username"
value="<?= $user['username'] ?>"
required
class="form-control">
</div>

<div class="form-group">
<label>Email</label>
<input
type="email"
name="email"
value="<?= $user['email'] ?>"
class="form-control">
</div>

<div class="form-group">
<label>Mobile</label>
<input
type="text"
name="mobile"
value="<?= $user['mobile'] ?>"
class="form-control">
</div>

<div class="form-group">
<label>User Role</label>

<select
name="user_level"
class="form-control">

<option value="3"
<?= ($user['user_level']==3)?'selected':'' ?>>
Admin
</option>

<option value="2"
<?= ($user['user_level']==2)?'selected':'' ?>>
Manager
</option>

<option value="1"
<?= ($user['user_level']==1)?'selected':'' ?>>
Operator
</option>

</select>

</div>

<div class="form-group">
<label>Status</label>

<select
name="isactivated"
class="form-control">

<option value="1"
<?= ($user['isactivated'])?'selected':'' ?>>
Active
</option>

<option value="0"
<?= (!$user['isactivated'])?'selected':'' ?>>
Inactive
</option>

</select>

</div>

<div class="form-group">
<label>New Password</label>

<input
type="password"
name="password"
placeholder="Leave blank to keep existing password"
class="form-control">
</div>

</div>

<div class="btn-area">

<button
type="submit"
name="update"
class="save-btn">
💾 Update User
</button>

<a
href="user_list.php"
class="cancel-btn">
Cancel
</a>

</div>

</div>

</form>

</div>

</body>
</html>