
<?php

include("../auth/check_auth.php");

include("../config/db.php");

/* Total Stations */

$totalStations = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT COUNT(*) total FROM station"
    )
)['total'];

/* Total Lines */

$totalLines = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT COUNT(*) total FROM line"
    )
)['total'];

/* Total Sites */

$totalSites = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT COUNT(*) total FROM site"
    )
)['total'];

/* Station List */

$stations = mysqli_query(
    $conn,
    "SELECT
        s.station_id,
        s.name AS station_name,
        s.station_code,
        l.Name AS line_name
     FROM station s
     LEFT JOIN line l
     ON s.line_id = l.line_id
     ORDER BY s.station_id DESC"
);

?>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Station Report</title>

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

.header{
background:linear-gradient(135deg,#16a34a,#15803d);
color:white;
padding:30px;
border-radius:15px;
margin-bottom:25px;
box-shadow:0 10px 25px rgba(0,0,0,.08);
}

.header h1{
font-size:32px;
font-weight:700;
}

.header p{
opacity:.9;
margin-top:8px;
}

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

.stat-card h3{
color:#64748b;
font-size:14px;
margin-bottom:10px;
}

.stat-card h2{
font-size:32px;
color:#1e293b;
}

.report-card{
background:white;
padding:25px;
border-radius:15px;
box-shadow:0 5px 20px rgba(0,0,0,.08);
margin-bottom:25px;
}

.card-title{
font-size:22px;
font-weight:600;
margin-bottom:20px;
color:#1e293b;
}

.search-box{
margin-bottom:20px;
}

.search-box input{
width:100%;
padding:12px;
border:1px solid #dbeafe;
border-radius:10px;
font-size:14px;
}

.table-responsive{
overflow:auto;
}

table{
width:100%;
border-collapse:collapse;
}

table th{
background:#16a34a;
color:white;
padding:12px;
text-align:left;
}

table td{
padding:12px;
border-bottom:1px solid #e2e8f0;
}

tr:hover{
background:#f8fafc;
}

.action-bar{
display:flex;
gap:10px;
margin-bottom:20px;
flex-wrap:wrap;
}

.btn{
padding:12px 18px;
border:none;
border-radius:10px;
cursor:pointer;
font-weight:600;
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

.footer{
margin-top:25px;
text-align:center;
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

<h1>🚉 Station Report</h1>

<p>
DMRC Water Asset Management System
</p>

</div>

<div class="stats">

<div class="stat-card">
<h3>Total Stations</h3>
<h2><?= $totalStations ?></h2>
</div>

<div class="stat-card">
<h3>Total Metro Lines</h3>
<h2><?= $totalLines ?></h2>
</div>

<div class="stat-card">
<h3>Total Sites</h3>
<h2><?= $totalSites ?></h2>
</div>

</div>

<div class="report-card">

<div class="action-bar">

<button
class="btn print-btn"
onclick="window.print()">
🖨 Print Report
</button>

<button
class="btn export-btn"
onclick="exportTableToCSV()">
📊 Export CSV
</button>

<a
href="index.php"
class="btn back-btn">
← Back
</a>

</div>

<h2 class="card-title">
Station Details Report
</h2>

<div class="search-box">

<input
type="text"
id="searchInput"
placeholder="Search Station..."
onkeyup="searchTable()">

</div>

<div class="table-responsive">

<table id="stationTable">

<thead>
<tr>
<th>ID</th>
<th>Station Name</th>
<th>Station Code</th>
<th>Metro Line</th>
</tr>
</thead>

<tbody>

<?php while($row=mysqli_fetch_assoc($stations)){ ?>

<tr>

<td><?= $row['station_id'] ?></td>

<td><?= $row['station_name'] ?></td>

<td><?= $row['station_code'] ?></td>

<td><?= $row['line_name'] ?></td>

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
document.getElementById("stationTable");

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

function exportTableToCSV(){

let csv=[];

let rows=
document.querySelectorAll("table tr");

for(let row of rows){

let cols=
row.querySelectorAll("td,th");

let data=[];

for(let col of cols){
data.push(col.innerText);
}

csv.push(data.join(","));

}

let csvFile=
new Blob([csv.join("\n")]);

let downloadLink=
document.createElement("a");

downloadLink.download=
"station_report.csv";

downloadLink.href=
window.URL.createObjectURL(csvFile);

downloadLink.click();

}

</script>

</body>
</html>
```
