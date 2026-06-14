
<?php

include("../auth/check_auth.php");

include("../config/db.php");

/* Summary Cards */

$totalRWH = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT COUNT(*) total FROM rwh"
    )
)['total'];

$availableRWH = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT COUNT(*) total
         FROM rwh
         WHERE is_available = 1"
    )
)['total'];

$pitCount = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT SUM(pit_count) total
         FROM rwh"
    )
)['total'];

$totalCapacity = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT SUM(pit_capacity_cum) total
         FROM rwh"
    )
)['total'];

/* RWH Records */

$rwhData = mysqli_query(
    $conn,
    "SELECT *
     FROM rwh
     ORDER BY rwh_id DESC"
);

?>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>RWH Report</title>

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
padding:25px;
}

/* Header */

.header{
background:linear-gradient(135deg,#f59e0b,#d97706);
color:white;
padding:30px;
border-radius:15px;
margin-bottom:25px;
box-shadow:0 8px 20px rgba(0,0,0,.08);
}

.header h1{
font-size:32px;
font-weight:700;
}

.header p{
margin-top:8px;
opacity:.9;
}

/* Stats */

.stats{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:20px;
margin-bottom:25px;
}

.stat-card{
background:white;
padding:25px;
border-radius:15px;
box-shadow:0 5px 20px rgba(0,0,0,.08);
transition:.3s;
}

.stat-card:hover{
transform:translateY(-5px);
}

.stat-title{
font-size:14px;
color:#64748b;
margin-bottom:10px;
}

.stat-value{
font-size:32px;
font-weight:700;
color:#1e293b;
}

/* Report Card */

.report-card{
background:white;
padding:25px;
border-radius:15px;
box-shadow:0 5px 20px rgba(0,0,0,.08);
}

/* Buttons */

.action-bar{
display:flex;
gap:10px;
flex-wrap:wrap;
margin-bottom:20px;
}

.btn{
padding:12px 18px;
border:none;
border-radius:10px;
font-weight:600;
cursor:pointer;
text-decoration:none;
color:white;
}

.print-btn{
background:#2563eb;
}

.export-btn{
background:#f59e0b;
}

.back-btn{
background:#64748b;
}

/* Search */

.search-box{
margin-bottom:20px;
}

.search-box input{
width:100%;
padding:12px;
border:1px solid #ddd;
border-radius:10px;
font-size:14px;
}

/* Table */

.table-responsive{
overflow:auto;
}

table{
width:100%;
border-collapse:collapse;
}

table th{
background:#f59e0b;
color:white;
padding:12px;
text-align:left;
}

table td{
padding:12px;
border-bottom:1px solid #e5e7eb;
}

tr:hover{
background:#f8fafc;
}

/* Footer */

.footer{
text-align:center;
margin-top:20px;
color:#64748b;
}

@media(max-width:768px){

.header h1{
font-size:24px;
}

.stats{
grid-template-columns:1fr;
}

}

</style>

</head>

<body>

<div class="header">

<h1>🌧️ RWH Report</h1>

<p>
DMRC Water Asset Management System
</p>

</div>

<!-- Summary Cards -->

<div class="stats">

<div class="stat-card">
<div class="stat-title">Total RWH Systems</div>
<div class="stat-value">
<?= $totalRWH ?>
</div>
</div>

<div class="stat-card">
<div class="stat-title">Available Systems</div>
<div class="stat-value">
<?= $availableRWH ?>
</div>
</div>

<div class="stat-card">
<div class="stat-title">Total Pits</div>
<div class="stat-value">
<?= $pitCount ?: 0 ?>
</div>
</div>

<div class="stat-card">
<div class="stat-title">Total Capacity (Cum)</div>
<div class="stat-value">
<?= number_format($totalCapacity ?: 0,2) ?>
</div>
</div>

</div>

<!-- Report -->

<div class="report-card">

<div class="action-bar">

<button
class="btn print-btn"
onclick="window.print()">
🖨 Print Report
</button>

<button
class="btn export-btn"
onclick="exportCSV()">
📊 Export CSV
</button>

<a
href="index.php"
class="btn back-btn">
← Back
</a>

</div>

<div class="search-box">

<input
type="text"
id="searchInput"
placeholder="Search RWH System..."
onkeyup="searchTable()">

</div>

<div class="table-responsive">

<table id="rwhTable">

<thead>

<tr>

<th>ID</th>
<th>Code</th>
<th>Line</th>
<th>Station</th>
<th>State</th>
<th>Location</th>
<th>Available</th>
<th>Pits</th>
<th>Capacity</th>
<th>Roof Area</th>

</tr>

</thead>

<tbody>

<?php while($row=mysqli_fetch_assoc($rwhData)){ ?>

<tr>

<td><?= $row['rwh_id'] ?></td>

<td><?= $row['rwh_code'] ?></td>

<td><?= $row['line'] ?></td>

<td><?= $row['station'] ?></td>

<td><?= $row['state'] ?></td>

<td><?= $row['rwh_location'] ?></td>

<td>
<?= $row['is_available']==1
? "Available"
: "Unavailable"; ?>
</td>

<td><?= $row['pit_count'] ?></td>

<td><?= $row['pit_capacity_cum'] ?></td>

<td><?= $row['total_roof_area_m2'] ?></td>

</tr>

<?php } ?>

</tbody>

</table>

</div>

</div>

<div class="footer">

© <?= date('Y') ?>
DMRC Water Asset Management System

</div>

<script>

function searchTable(){

let input =
document.getElementById("searchInput");

let filter =
input.value.toUpperCase();

let table =
document.getElementById("rwhTable");

let tr =
table.getElementsByTagName("tr");

for(let i=1;i<tr.length;i++){

let txt =
tr[i].textContent ||
tr[i].innerText;

tr[i].style.display =
txt.toUpperCase().indexOf(filter)>-1
? ""
: "none";

}

}

function exportCSV(){

let csv = [];

let rows =
document.querySelectorAll("table tr");

for(let row of rows){

let cols =
row.querySelectorAll("td,th");

let data=[];

for(let col of cols){
data.push(col.innerText);
}

csv.push(data.join(","));

}

let csvFile =
new Blob([csv.join("\n")]);

let downloadLink =
document.createElement("a");

downloadLink.download =
"rwh_report.csv";

downloadLink.href =
window.URL.createObjectURL(csvFile);

downloadLink.click();

}

</script>

</body>
</html>
```
