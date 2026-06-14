
<?php
include("../auth/check_auth.php");

include("../config/db.php");

$search = "";

if(isset($_GET['search']))
{
    $search = mysqli_real_escape_string(
        $conn,
        $_GET['search']
    );
}

$query = "
SELECT
s.*,
l.Name AS line_name
FROM station s
LEFT JOIN line l
ON s.line_id = l.line_id
WHERE
s.name LIKE '%$search%'
OR
s.station_code LIKE '%$search%'
OR
l.Name LIKE '%$search%'
ORDER BY s.station_id DESC
";

$result = mysqli_query(
    $conn,
    $query
);
?>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">

<title>Station List</title>

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
max-width:1400px;
margin:auto;
}

.header{
background:linear-gradient(135deg,#2563eb,#1d4ed8);
padding:25px;
border-radius:15px;
color:white;
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
box-shadow:0 10px 25px rgba(0,0,0,.12);
}

.header h1{
font-size:28px;
}

.btn{
padding:12px 20px;
border:none;
border-radius:10px;
cursor:pointer;
text-decoration:none;
font-weight:600;
transition:.3s;
display:inline-block;
}

.btn-add{
background:white;
color:#2563eb;
}

.btn-add:hover{
transform:translateY(-2px);
}

.card{
background:white;
border-radius:15px;
padding:25px;
box-shadow:0 5px 20px rgba(0,0,0,.08);
}

.search-box{
display:flex;
gap:10px;
margin-bottom:20px;
}

.search-box input{
flex:1;
padding:12px;
border:1px solid #d1d5db;
border-radius:10px;
}

.search-box button{
background:#2563eb;
color:white;
padding:12px 20px;
border:none;
border-radius:10px;
cursor:pointer;
}

.table-responsive{
overflow-x:auto;
}

table{
width:100%;
border-collapse:collapse;
}

table th{
background:#2563eb;
color:white;
padding:14px;
text-align:left;
}

table td{
padding:14px;
border-bottom:1px solid #e5e7eb;
}

tr:hover{
background:#f9fafb;
}

.action-btn{
padding:8px 12px;
border-radius:8px;
text-decoration:none;
font-size:13px;
font-weight:600;
margin-right:5px;
display:inline-block;
}

.view{
background:#dbeafe;
color:#1d4ed8;
}

.edit{
background:#dcfce7;
color:#15803d;
}

.delete{
background:#fee2e2;
color:#dc2626;
}

.count-box{
background:#eff6ff;
padding:12px;
border-radius:10px;
margin-bottom:15px;
font-weight:600;
color:#1e40af;
}

.empty{
padding:40px;
text-align:center;
color:#6b7280;
}


</style>

</head>

<body>
  

</div>

<div class="container">

<div class="header">

<div>
<h1>🚉 Station Management</h1>
<p>Manage Metro Stations</p>
</div>

<a
href="add_station.php"
class="btn btn-add">
➕ Add Station
</a>

</div>

<div class="card">

<form method="GET">

<div class="search-box">

<input
type="text"
name="search"
placeholder="Search station, code or line..."
value="<?= htmlspecialchars($search) ?>"
>

<button type="submit">
🔍 Search
</button>

</div>

</form>

<div class="count-box">

Total Stations :
<?= mysqli_num_rows($result) ?>

</div>

<div class="table-responsive">

<table>

<thead>

<tr>
<th>ID</th>
<th>Station Code</th>
<th>Station Name</th>
<th>Metro Line</th>
<th>Actions</th>
</tr>

</thead>

<tbody>

<?php
if(mysqli_num_rows($result)>0)
{
while($row=mysqli_fetch_assoc($result))
{
?>

<tr>

<td>
<?= $row['station_id'] ?>
</td>

<td>
<?= $row['station_code'] ?>
</td>

<td>
<?= $row['name'] ?>
</td>

<td>
<?= $row['line_name'] ?>
</td>

<td>

<a
href="view_station.php?id=<?= $row['station_id'] ?>"
class="action-btn view">
👁 View
</a>

<a
href="edit_station.php?id=<?= $row['station_id'] ?>"
class="action-btn edit">
✏ Edit
</a>

<a
href="delete_station.php?id=<?= $row['station_id'] ?>"
class="action-btn delete"
onclick="return confirm('Delete this station?')">
🗑 Delete
</a>

</td>

</tr>

<?php
}
}
else
{
?>

<tr>
<td colspan="5">

<div class="empty">

No Station Found

</div>

</td>
</tr>

<?php
}
?>

</tbody>

</table>

</div>

</div>

</div>


</body>
</html>

