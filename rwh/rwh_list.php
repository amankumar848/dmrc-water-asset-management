<?php
include("../auth/check_auth.php");

include("../config/db.php");

$result = mysqli_query($conn,"
SELECT *
FROM rwh
ORDER BY rwh_id DESC
");
?>

<!DOCTYPE html>
<html>
<head>
<title>RWH Systems</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{
background:#f4f7fc;
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
color:#1e293b;
}

.add-btn{
background:#2563eb;
color:white;
padding:12px 20px;
text-decoration:none;
border-radius:8px;
font-weight:600;
}

.add-btn:hover{
background:#1d4ed8;
}

.card{
background:white;
padding:25px;
border-radius:15px;
box-shadow:0 5px 20px rgba(0,0,0,.08);
}

table{
width:100%;
border-collapse:collapse;
}

th{
background:#1e293b;
color:white;
padding:14px;
text-align:left;
}

td{
padding:14px;
border-bottom:1px solid #e5e7eb;
}

tr:hover{
background:#f8fafc;
}

.badge-active{
background:#dcfce7;
color:#166534;
padding:5px 10px;
border-radius:20px;
font-size:12px;
font-weight:600;
}

.badge-inactive{
background:#fee2e2;
color:#991b1b;
padding:5px 10px;
border-radius:20px;
font-size:12px;
font-weight:600;
}

.action{
padding:8px 12px;
border-radius:6px;
text-decoration:none;
font-size:13px;
font-weight:600;
margin-right:5px;
}

.view{
background:#dbeafe;
color:#1d4ed8;
}

.edit{
background:#fef3c7;
color:#92400e;
}

.delete{
background:#fee2e2;
color:#dc2626;
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
border-radius:15px;
box-shadow:0 5px 15px rgba(0,0,0,.08);
}

.stat-title{
color:#64748b;
font-size:14px;
margin-bottom:8px;
}

.stat-value{
font-size:30px;
font-weight:700;
color:#1e293b;
}

@media(max-width:900px){

.stats{
grid-template-columns:1fr;
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

<div class="header">

<div class="title">
🌧️ Rain Water Harvesting Systems
</div>

<a href="add_rwh.php" class="add-btn">
+ Add RWH System
</a>

</div>

<?php

$total = mysqli_fetch_assoc(
mysqli_query($conn,"
SELECT COUNT(*) total
FROM rwh
"))['total'];

$active = mysqli_fetch_assoc(
mysqli_query($conn,"
SELECT COUNT(*) total
FROM rwh
WHERE is_available=1
"))['total'];

$inactive = mysqli_fetch_assoc(
mysqli_query($conn,"
SELECT COUNT(*) total
FROM rwh
WHERE is_available=0
"))['total'];

?>

<div class="stats">

<div class="stat-card">
<div class="stat-title">Total Systems</div>
<div class="stat-value"><?= $total ?></div>
</div>

<div class="stat-card">
<div class="stat-title">Active Systems</div>
<div class="stat-value"><?= $active ?></div>
</div>

<div class="stat-card">
<div class="stat-title">Inactive Systems</div>
<div class="stat-value"><?= $inactive ?></div>
</div>

<div class="stat-card">
<div class="stat-title">Coverage</div>
<div class="stat-value">
<?= $total > 0 ? round(($active/$total)*100) : 0 ?>%
</div>
</div>

</div>

<div class="card">

<table>

<tr>
<th>ID</th>
<th>Code</th>
<th>Station</th>
<th>State</th>
<th>District</th>
<th>Status</th>
<th>Roof Area</th>
<th>Pits</th>
<th>Actions</th>
</tr>

<?php while($row=mysqli_fetch_assoc($result)){ ?>

<tr>

<td><?= $row['rwh_id'] ?></td>

<td>
<?= $row['rwh_code'] ?>
</td>

<td>
<?= $row['station'] ?>
</td>

<td>
<?= $row['state'] ?>
</td>

<td>
<?= $row['district'] ?>
</td>

<td>

<?php if($row['is_available']==1){ ?>

<span class="badge-active">
Available
</span>

<?php } else { ?>

<span class="badge-inactive">
Unavailable
</span>

<?php } ?>

</td>

<td>
<?= $row['total_roof_area_m2'] ?> m²
</td>

<td>
<?= $row['pit_count'] ?>
</td>

<td>

<a
class="action view"
href="view_rwh.php?id=<?= $row['rwh_id'] ?>">
View
</a>

<a
class="action edit"
href="edit_rwh.php?id=<?= $row['rwh_id'] ?>">
Edit
</a>

<a
class="action delete"
onclick="return confirm('Delete RWH System?')"
href="delete_rwh.php?id=<?= $row['rwh_id'] ?>">
Delete
</a>

</td>

</tr>

<?php } ?>

</table>

</div>

</div>

</body>
</html>