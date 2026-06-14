<?php
include("../auth/check_auth.php");

include("../config/db.php");

$result=mysqli_query($conn,"
SELECT *
FROM borewell
ORDER BY borewell_id DESC
");

$total=mysqli_num_rows($result);
?>

<!DOCTYPE html>
<html>
<head>

<title>Borewell Management</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
}

body{
font-family:'Segoe UI',sans-serif;
background:#f1f5f9;
}

.container{
padding:30px;
}

.header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.page-title{
font-size:28px;
font-weight:700;
color:#0f172a;
}

.add-btn{
background:#2563eb;
color:white;
padding:12px 20px;
border-radius:8px;
text-decoration:none;
font-weight:600;
}

.add-btn:hover{
background:#1d4ed8;
}

.card{
background:white;
border-radius:15px;
padding:25px;
box-shadow:0 5px 15px rgba(0,0,0,.08);
}

.top-bar{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:20px;
flex-wrap:wrap;
gap:10px;
}

.search-box{
padding:10px;
width:300px;
border:1px solid #cbd5e1;
border-radius:8px;
}

.count-box{
background:#eff6ff;
color:#2563eb;
padding:10px 15px;
border-radius:8px;
font-weight:600;
}

table{
width:100%;
border-collapse:collapse;
}

thead{
background:#2563eb;
color:white;
}

th{
padding:14px;
text-align:left;
}

td{
padding:12px;
border-bottom:1px solid #e2e8f0;
}

tr:hover{
background:#f8fafc;
}

.badge-green{
background:#dcfce7;
color:#15803d;
padding:5px 10px;
border-radius:20px;
font-size:12px;
font-weight:600;
}

.badge-red{
background:#fee2e2;
color:#dc2626;
padding:5px 10px;
border-radius:20px;
font-size:12px;
font-weight:600;
}

.action-btn{
padding:7px 12px;
border:none;
border-radius:6px;
cursor:pointer;
color:white;
font-size:13px;
}

.view{
background:#0ea5e9;
}

.edit{
background:#f59e0b;
}

.delete{
background:#ef4444;
}

.action-group{
display:flex;
gap:5px;
}



@media(max-width:900px){

table{
display:block;
overflow-x:auto;
}

.search-box{
width:100%;
}

}

</style>

</head>

<body>
    
</div>



<div class="container">

<div class="header">

<h1 class="page-title">
💧 Borewell Management
</h1>

<a href="add_borewell.php" class="add-btn">
+ Add Borewell
</a>

</div>

<div class="card">

<div class="top-bar">

<input
type="text"
id="searchInput"
class="search-box"
placeholder="Search Borewell...">

<div class="count-box">
Total Records: <?= $total ?>
</div>

</div>

<table id="borewellTable">

<thead>

<tr>

<th>ID</th>
<th>Code</th>
<th>Number</th>
<th>State</th>
<th>District</th>
<th>Station</th>
<th>Depth</th>
<th>Status</th>
<th>Actions</th>

</tr>

</thead>

<tbody>

<?php while($row=mysqli_fetch_assoc($result)){ ?>

<tr>

<td>
<?= $row['borewell_id'] ?>
</td>

<td>
<?= $row['borewell_code'] ?>
</td>

<td>
<?= $row['borewell_number'] ?>
</td>

<td>
<?= $row['state'] ?>
</td>

<td>
<?= $row['district'] ?>
</td>

<td>
<?= $row['station'] ?>
</td>

<td>
<?= $row['depth_m'] ?> m
</td>

<td>

<?php
if($row['is_available']==1)
{
?>
<span class="badge-green">
Available
</span>
<?php
}
else
{
?>
<span class="badge-red">
Unavailable
</span>
<?php
}
?>

</td>

<td>

<div class="action-group">

<a
href="view_borewell.php?id=<?= $row['borewell_id'] ?>"
class="action-btn view"
style="text-decoration:none;">
View
</a>

<a
href="edit_borewell.php?id=<?= $row['borewell_id'] ?>"
class="action-btn edit"
style="text-decoration:none;">
Edit
</a>

<a
href="delete_borewell.php?id=<?= $row['borewell_id'] ?>"
class="action-btn delete"
style="text-decoration:none;"
onclick="return confirm('Delete Borewell?')">
Delete
</a>

</div>

</td>

</tr>

<?php } ?>

</tbody>

</table>

</div>


<script>

document
.getElementById("searchInput")
.addEventListener("keyup",function(){

let value=this.value.toLowerCase();

let rows=
document.querySelectorAll(
"#borewellTable tbody tr"
);

rows.forEach(function(row){

let text=row.innerText.toLowerCase();

row.style.display=
text.includes(value)
?
""
:
"none";

});

});

</script>

</body>
</html>