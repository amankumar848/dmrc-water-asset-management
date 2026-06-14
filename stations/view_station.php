
<?php
include("../auth/check_auth.php");

include("../config/db.php");

if(!isset($_GET['id']))
{
    header("Location:station_list.php");
    exit();
}

$id = (int)$_GET['id'];

$query = mysqli_query(
    $conn,
    "SELECT
        s.*,
        l.Name AS line_name
     FROM station s
     LEFT JOIN line l
     ON s.line_id = l.line_id
     WHERE s.station_id = '$id'"
);

$station = mysqli_fetch_assoc($query);

if(!$station)
{
    header("Location:station_list.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">

<title>View Station</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#f4f7fc;
padding:30px;
}

.container{
max-width:1000px;
margin:auto;
}

.header{
background:linear-gradient(135deg,#2563eb,#1d4ed8);
padding:30px;
border-radius:15px;
color:white;
margin-bottom:25px;
box-shadow:0 10px 25px rgba(0,0,0,.12);
}

.header h1{
font-size:30px;
margin-bottom:5px;
}

.header p{
opacity:.9;
}

.card{
background:white;
border-radius:15px;
padding:30px;
box-shadow:0 5px 20px rgba(0,0,0,.08);
}

.profile{
display:flex;
align-items:center;
gap:20px;
margin-bottom:30px;
padding-bottom:25px;
border-bottom:1px solid #e5e7eb;
}

.avatar{
width:90px;
height:90px;
border-radius:50%;
background:linear-gradient(135deg,#2563eb,#1d4ed8);
display:flex;
align-items:center;
justify-content:center;
font-size:35px;
color:white;
font-weight:700;
}

.profile-info h2{
font-size:26px;
color:#111827;
}

.profile-info p{
color:#6b7280;
margin-top:5px;
}

.section-title{
font-size:20px;
font-weight:600;
margin-bottom:20px;
color:#1e40af;
border-bottom:2px solid #e5e7eb;
padding-bottom:10px;
}

.grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:20px;
}

.info-box{
background:#f8fafc;
padding:18px;
border-radius:12px;
border-left:4px solid #2563eb;
}

.label{
font-size:13px;
color:#6b7280;
margin-bottom:5px;
}

.value{
font-size:16px;
font-weight:600;
color:#111827;
}

.actions{
margin-top:30px;
display:flex;
gap:12px;
flex-wrap:wrap;
}

.btn{
padding:12px 20px;
border:none;
border-radius:10px;
text-decoration:none;
font-weight:600;
transition:.3s;
display:inline-block;
}

.btn-back{
background:#6b7280;
color:white;
}

.btn-edit{
background:#16a34a;
color:white;
}

.btn-delete{
background:#dc2626;
color:white;
}

.btn:hover{
transform:translateY(-2px);
}



@media(max-width:768px){

.profile{
flex-direction:column;
text-align:center;
}

}

</style>

</head>

<body>
 

<div class="container">

<div class="header">
<h1>🚉 Station Details</h1>
<p>DMRC Water Asset Management System</p>
</div>

<div class="card">

<div class="profile">

<div class="avatar">
🚉
</div>

<div class="profile-info">

<h2>
<?= htmlspecialchars($station['name']) ?>
</h2>

<p>
Station ID :
<?= $station['station_id'] ?>
</p>

</div>

</div>

<div class="section-title">
Station Information
</div>

<div class="grid">

<div class="info-box">
<div class="label">Station ID</div>
<div class="value">
<?= $station['station_id'] ?>
</div>
</div>

<div class="info-box">
<div class="label">Station Code</div>
<div class="value">
<?= !empty($station['station_code'])
? $station['station_code']
: 'N/A' ?>
</div>
</div>

<div class="info-box">
<div class="label">Station Name</div>
<div class="value">
<?= htmlspecialchars($station['name']) ?>
</div>
</div>

<div class="info-box">
<div class="label">Metro Line</div>
<div class="value">
<?= htmlspecialchars($station['line_name']) ?>
</div>
</div>

</div>

<div class="actions">

<a
href="station_list.php"
class="btn btn-back">
← Back
</a>

<a
href="edit_station.php?id=<?= $station['station_id'] ?>"
class="btn btn-edit">
✏ Edit Station
</a>

<a
href="delete_station.php?id=<?= $station['station_id'] ?>"
class="btn btn-delete"
onclick="return confirm('Delete this station?')">
🗑 Delete
</a>

</div>

</div>

</div>

</body>
</html>
```
