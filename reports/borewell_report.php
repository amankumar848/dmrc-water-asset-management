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

$where = "";

if($search != "")
{
    $where = "
    WHERE
    borewell_code LIKE '%$search%'
    OR station LIKE '%$search%'
    OR state LIKE '%$search%'
    ";
}

$borewellData = mysqli_query(
    $conn,
    "
    SELECT *
    FROM borewell
    $where
    ORDER BY borewell_id DESC
    "
);

$totalBorewells = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT COUNT(*) total FROM borewell"
    )
)['total'];

$available = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT COUNT(*) total
        FROM borewell
        WHERE is_available=1"
    )
)['total'];

$unavailable = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT COUNT(*) total
        FROM borewell
        WHERE is_available=0"
    )
)['total'];

$permission = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT COUNT(*) total
        FROM borewell
        WHERE permission_valid=1"
    )
)['total'];
?>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">

<title>Borewell Report</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#f5f7fb;
padding:30px;
}

.header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.header h1{
color:#1e293b;
font-size:28px;
}

.top-btns{
display:flex;
gap:10px;
}

.btn{
padding:10px 18px;
border:none;
border-radius:8px;
cursor:pointer;
font-weight:600;
text-decoration:none;
}

.btn-back{
background:#64748b;
color:white;
}

.btn-print{
background:#2563eb;
color:white;
}

.cards{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:20px;
margin-bottom:25px;
}

.card{
background:white;
padding:20px;
border-radius:15px;
box-shadow:0 4px 15px rgba(0,0,0,.08);
}

.card h3{
font-size:14px;
color:#64748b;
margin-bottom:8px;
}

.card h1{
font-size:32px;
color:#1e293b;
}

.search-box{
background:white;
padding:20px;
border-radius:15px;
box-shadow:0 4px 15px rgba(0,0,0,.08);
margin-bottom:25px;
}

.search-box form{
display:flex;
gap:10px;
}

.search-box input{
flex:1;
padding:12px;
border:1px solid #dbe2ea;
border-radius:8px;
}

.search-box button{
background:#2563eb;
color:white;
border:none;
padding:12px 25px;
border-radius:8px;
cursor:pointer;
}

.report-box{
background:white;
padding:25px;
border-radius:15px;
box-shadow:0 4px 15px rgba(0,0,0,.08);
}

.report-title{
display:flex;
justify-content:space-between;
margin-bottom:20px;
}

.report-title h2{
color:#1e293b;
}

table{
width:100%;
border-collapse:collapse;
}

th{
background:#2563eb;
color:white;
padding:12px;
font-size:14px;
}

td{
padding:12px;
border-bottom:1px solid #eee;
font-size:14px;
}

tr:hover{
background:#f8fafc;
}

.badge-green{
background:#dcfce7;
color:#166534;
padding:5px 10px;
border-radius:20px;
font-size:12px;
font-weight:600;
}

.badge-red{
background:#fee2e2;
color:#991b1b;
padding:5px 10px;
border-radius:20px;
font-size:12px;
font-weight:600;
}

.footer{
margin-top:20px;
text-align:right;
font-size:13px;
color:#64748b;
}

@media print{

body{
padding:0;
background:white;
}

.header,
.search-box,
.btn-print,
.btn-back{
display:none;
}

.report-box{
box-shadow:none;
}

}

@media(max-width:1000px){

.cards{
grid-template-columns:repeat(2,1fr);
}

}

@media(max-width:600px){

.cards{
grid-template-columns:1fr;
}

.search-box form{
flex-direction:column;
}

}

</style>

</head>

<body>

<div class="header">

<h1>Borewell Report</h1>

<div class="top-btns">

<a href="index.php"
class="btn btn-back">
← Back
</a>

<button
onclick="window.print()"
class="btn btn-print">
🖨 Print Report
</button>

</div>

</div>

<div class="cards">

<div class="card">
<h3>Total Borewells</h3>
<h1><?= $totalBorewells ?></h1>
</div>

<div class="card">
<h3>Available</h3>
<h1><?= $available ?></h1>
</div>

<div class="card">
<h3>Unavailable</h3>
<h1><?= $unavailable ?></h1>
</div>

<div class="card">
<h3>Valid Permission</h3>
<h1><?= $permission ?></h1>
</div>

</div>

<div class="search-box">

<form method="GET">

<input
type="text"
name="search"
placeholder="Search by code, station, state..."
value="<?= $search ?>"
>

<button type="submit">
Search
</button>

</form>

</div>

<div class="report-box">

<div class="report-title">

<h2>DMRC Borewell Summary Report</h2>

<div>
Generated :
<?= date("d M Y h:i A") ?>
</div>

</div>

<table>

<tr>

<th>ID</th>
<th>Code</th>
<th>Station</th>
<th>State</th>
<th>Depth</th>
<th>Diameter</th>
<th>Status</th>
<th>Permission</th>

</tr>

<?php while($row=mysqli_fetch_assoc($borewellData)) { ?>

<tr>

<td><?= $row['borewell_id'] ?></td>

<td><?= $row['borewell_code'] ?></td>

<td><?= $row['station'] ?></td>

<td><?= $row['state'] ?></td>

<td><?= $row['depth_m'] ?> m</td>

<td><?= $row['diameter_m'] ?> m</td>

<td>

<?php if($row['is_available']==1){ ?>

<span class="badge-green">
Available
</span>

<?php } else { ?>

<span class="badge-red">
Unavailable
</span>

<?php } ?>

</td>

<td>

<?php if($row['permission_valid']==1){ ?>

<span class="badge-green">
Valid
</span>

<?php } else { ?>

<span class="badge-red">
Not Valid
</span>

<?php } ?>

</td>

</tr>

<?php } ?>

</table>

<div class="footer">

DMRC Water Asset Management System

</div>

</div>

</body>
</html>