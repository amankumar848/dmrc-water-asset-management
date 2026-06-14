<?php
include("../auth/check_auth.php");

include("../config/db.php");

if(isset($_POST['save']))
{
    $rwh_code = $_POST['rwh_code'];
    $site_id = $_POST['site_id'];
    $is_available = $_POST['is_available'];
    $line = $_POST['line'];
    $station = $_POST['station'];
    $state = $_POST['state'];
    $district = $_POST['district'];
    $roof_area = $_POST['total_roof_area_m2'];
    $pit_count = $_POST['pit_count'];
    $pit_capacity = $_POST['pit_capacity_cum'];
    $location = $_POST['rwh_location'];
    $lat = $_POST['lat'];
    $longitude = $_POST['longitude'];

    mysqli_query($conn,"
    INSERT INTO rwh
    (
        rwh_code,
        site_id,
        is_available,
        line,
        station,
        state,
        district,
        total_roof_area_m2,
        pit_count,
        pit_capacity_cum,
        rwh_location,
        lat,
        longitude,
        createdAt,
        createdBy,
        ip
    )
    VALUES
    (
        '$rwh_code',
        '$site_id',
        '$is_available',
        '$line',
        '$station',
        '$state',
        '$district',
        '$roof_area',
        '$pit_count',
        '$pit_capacity',
        '$location',
        '$lat',
        '$longitude',
        '".time()."',
        '".$_SESSION['username']."',
        '".$_SERVER['REMOTE_ADDR']."'
    )
    ");

    header("Location:rwh_list.php");
    exit();
}

$sites = mysqli_query($conn,"
SELECT site_id
FROM site
ORDER BY site_id
");
?>

<!DOCTYPE html>
<html>
<head>
<title>Add RWH System</title>

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
max-width:1100px;
margin:auto;
}

.page-header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.page-title{
font-size:28px;
font-weight:700;
color:#1e293b;
}

.back-btn{
background:#64748b;
color:white;
padding:10px 18px;
border-radius:8px;
text-decoration:none;
font-weight:600;
}

.card{
background:white;
padding:30px;
border-radius:16px;
box-shadow:0 5px 20px rgba(0,0,0,.08);
margin-bottom:25px;
}

.section-title{
font-size:18px;
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

.form-group{
display:flex;
flex-direction:column;
}

label{
font-size:14px;
font-weight:600;
margin-bottom:8px;
color:#334155;
}

input,
select{
padding:12px;
border:1px solid #cbd5e1;
border-radius:8px;
font-size:14px;
}

input:focus,
select:focus{
outline:none;
border-color:#2563eb;
}

.btn-save{
background:#2563eb;
color:white;
padding:14px 30px;
border:none;
border-radius:8px;
font-size:16px;
font-weight:600;
cursor:pointer;
}

.btn-save:hover{
background:#1d4ed8;
}

.footer{
text-align:center;
margin-top:20px;
}

@media(max-width:768px)
{
.grid{
grid-template-columns:1fr;
}
}

</style>
</head>

<body>

<div class="container">

<div class="page-header">
<div class="page-title">
🌧️ Add RWH System
</div>

<a href="rwh_list.php" class="back-btn">
← Back
</a>
</div>

<form method="POST">

<!-- Section 1 -->

<div class="card">

<div class="section-title">
Basic Information
</div>

<div class="grid">

<div class="form-group">
<label>RWH Code</label>
<input
type="text"
name="rwh_code"
required>
</div>

<div class="form-group">
<label>Site</label>
<select name="site_id" required>

<option value="">
Select Site
</option>

<?php while($site=mysqli_fetch_assoc($sites)){ ?>

<option value="<?= $site['site_id'] ?>">
Site <?= $site['site_id'] ?>
</option>

<?php } ?>

</select>
</div>

<div class="form-group">
<label>Line</label>
<input type="text" name="line">
</div>

<div class="form-group">
<label>Station</label>
<input type="text" name="station">
</div>

<div class="form-group">
<label>State</label>
<input type="text" name="state">
</div>

<div class="form-group">
<label>District</label>
<input type="text" name="district">
</div>

<div class="form-group">
<label>Availability</label>
<select name="is_available">
<option value="1">Available</option>
<option value="0">Unavailable</option>
</select>
</div>

</div>

</div>

<!-- Section 2 -->

<div class="card">

<div class="section-title">
Harvesting Details
</div>

<div class="grid">

<div class="form-group">
<label>Total Roof Area (m²)</label>
<input
type="number"
step="0.01"
name="total_roof_area_m2">
</div>

<div class="form-group">
<label>Pit Count</label>
<input
type="number"
name="pit_count">
</div>

<div class="form-group">
<label>Pit Capacity (Cu.M)</label>
<input
type="number"
step="0.01"
name="pit_capacity_cum">
</div>

<div class="form-group">
<label>RWH Location</label>
<input
type="text"
name="rwh_location">
</div>

</div>

</div>

<!-- Section 3 -->

<div class="card">

<div class="section-title">
Location Coordinates
</div>

<div class="grid">

<div class="form-group">
<label>Latitude</label>
<input
type="text"
name="lat">
</div>

<div class="form-group">
<label>Longitude</label>
<input
type="text"
name="longitude">
</div>

</div>

</div>

<div class="footer">

<button
type="submit"
name="save"
class="btn-save">

💾 Save RWH System

</button>

</div>

</form>

</div>

</body>
</html>