<?php
include("../auth/check_auth.php");

include("../config/db.php");

$id = $_GET['id'];

$rwh = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT * FROM rwh WHERE rwh_id='$id'"
    )
);

if(!$rwh){
    die("RWH Record Not Found");
}
?>

<!DOCTYPE html>
<html>
<head>
<title>View RWH System</title>

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
max-width:1200px;
margin:auto;
}

.header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.title{
font-size:30px;
font-weight:700;
color:#1e293b;
}

.actions{
display:flex;
gap:10px;
}

.btn{
padding:10px 18px;
border-radius:8px;
text-decoration:none;
font-weight:600;
color:white;
}

.back{
background:#64748b;
}

.edit{
background:#f59e0b;
}

.card{
background:white;
border-radius:16px;
padding:30px;
box-shadow:0 5px 20px rgba(0,0,0,.08);
margin-bottom:25px;
}

.section-title{
font-size:20px;
font-weight:700;
color:#2563eb;
margin-bottom:20px;
padding-bottom:10px;
border-bottom:2px solid #e2e8f0;
}

.grid{
display:grid;
grid-template-columns:repeat(2,1fr);
gap:20px;
}

.info-box{
background:#f8fafc;
padding:15px;
border-radius:10px;
border-left:4px solid #2563eb;
}

.label{
font-size:13px;
color:#64748b;
margin-bottom:5px;
}

.value{
font-size:16px;
font-weight:600;
color:#1e293b;
}

.status{
display:inline-block;
padding:8px 14px;
border-radius:20px;
font-size:13px;
font-weight:700;
}

.available{
background:#dcfce7;
color:#166534;
}

.unavailable{
background:#fee2e2;
color:#991b1b;
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
text-align:center;
}

.stat-value{
font-size:28px;
font-weight:700;
color:#2563eb;
}

.stat-title{
margin-top:8px;
color:#64748b;
font-size:14px;
}

@media(max-width:768px){

.grid{
grid-template-columns:1fr;
}

.stats{
grid-template-columns:1fr;
}

}

</style>
</head>

<body>

<div class="container">

<div class="header">

<div class="title">
🌧️ RWH System Details
</div>

<div class="actions">

<a
href="rwh_list.php"
class="btn back">
← Back
</a>

<a
href="edit_rwh.php?id=<?= $rwh['rwh_id'] ?>"
class="btn edit">
✏ Edit
</a>

</div>

</div>

<div class="stats">

<div class="stat-card">
<div class="stat-value">
<?= $rwh['pit_count'] ?>
</div>
<div class="stat-title">
Recharge Pits
</div>
</div>

<div class="stat-card">
<div class="stat-value">
<?= $rwh['total_roof_area_m2'] ?>
</div>
<div class="stat-title">
Roof Area (m²)
</div>
</div>

<div class="stat-card">
<div class="stat-value">
<?= $rwh['pit_capacity_cum'] ?>
</div>
<div class="stat-title">
Pit Capacity
</div>
</div>

<div class="stat-card">
<div class="stat-value">

<?php
echo ($rwh['is_available']==1)
? "✓"
: "✗";
?>

</div>

<div class="stat-title">
System Status
</div>

</div>

</div>

<!-- BASIC INFO -->

<div class="card">

<div class="section-title">
Basic Information
</div>

<div class="grid">

<div class="info-box">
<div class="label">RWH ID</div>
<div class="value"><?= $rwh['rwh_id'] ?></div>
</div>

<div class="info-box">
<div class="label">RWH Code</div>
<div class="value"><?= $rwh['rwh_code'] ?></div>
</div>

<div class="info-box">
<div class="label">Site ID</div>
<div class="value"><?= $rwh['site_id'] ?></div>
</div>

<div class="info-box">
<div class="label">Availability</div>

<div class="value">

<?php if($rwh['is_available']==1){ ?>

<span class="status available">
Available
</span>

<?php } else { ?>

<span class="status unavailable">
Unavailable
</span>

<?php } ?>

</div>

</div>

<div class="info-box">
<div class="label">Line</div>
<div class="value"><?= $rwh['line'] ?></div>
</div>

<div class="info-box">
<div class="label">Station</div>
<div class="value"><?= $rwh['station'] ?></div>
</div>

<div class="info-box">
<div class="label">State</div>
<div class="value"><?= $rwh['state'] ?></div>
</div>

<div class="info-box">
<div class="label">District</div>
<div class="value"><?= $rwh['district'] ?></div>
</div>

</div>

</div>

<!-- RWH DETAILS -->

<div class="card">

<div class="section-title">
Rain Water Harvesting Details
</div>

<div class="grid">

<div class="info-box">
<div class="label">Roof Area</div>
<div class="value">
<?= $rwh['total_roof_area_m2'] ?> m²
</div>
</div>

<div class="info-box">
<div class="label">Pit Count</div>
<div class="value">
<?= $rwh['pit_count'] ?>
</div>
</div>

<div class="info-box">
<div class="label">Pit Capacity</div>
<div class="value">
<?= $rwh['pit_capacity_cum'] ?> Cu.M
</div>
</div>

<div class="info-box">
<div class="label">RWH Location</div>
<div class="value">
<?= $rwh['rwh_location'] ?>
</div>
</div>

</div>

</div>

<!-- LOCATION -->

<div class="card">

<div class="section-title">
Location Coordinates
</div>

<div class="grid">

<div class="info-box">
<div class="label">Latitude</div>
<div class="value">
<?= $rwh['lat'] ?>
</div>
</div>

<div class="info-box">
<div class="label">Longitude</div>
<div class="value">
<?= $rwh['longitude'] ?>
</div>
</div>

<div class="info-box">
<div class="label">Photo</div>
<div class="value">
<?= $rwh['photograph_lat_long'] ?>
</div>
</div>

</div>

</div>

<!-- AUDIT INFO -->

<div class="card">

<div class="section-title">
Audit Information
</div>

<div class="grid">

<div class="info-box">
<div class="label">Created By</div>
<div class="value">
<?= $rwh['createdBy'] ?>
</div>
</div>

<div class="info-box">
<div class="label">Created At</div>
<div class="value">
<?= !empty($rwh['createdAt']) ? date('d-m-Y H:i',$rwh['createdAt']) : '-' ?>
</div>
</div>

<div class="info-box">
<div class="label">Updated By</div>
<div class="value">
<?= $rwh['updatedBy'] ?>
</div>
</div>

<div class="info-box">
<div class="label">Updated At</div>
<div class="value">
<?= !empty($rwh['updatedAt']) ? date('d-m-Y H:i',$rwh['updatedAt']) : '-' ?>
</div>
</div>

<div class="info-box">
<div class="label">IP Address</div>
<div class="value">
<?= $rwh['ip'] ?>
</div>
</div>

</div>

</div>

</div>

</body>
</html>