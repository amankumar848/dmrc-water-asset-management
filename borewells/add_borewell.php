<?php
include("../auth/check_auth.php");

include("../config/db.php");

if(!$conn){
    die("Database Connection Failed");
}

/* Save Record */

if(isset($_POST['save']))
{
    $borewell_code = $_POST['borewell_code'];
$site_id = $_POST['site_id'];
$borewell_number = $_POST['borewell_number'];

$is_available = $_POST['is_available'];

$distance_m = $_POST['distance_m'];
$location = $_POST['location'];

$latitude = $_POST['latitude'];
$longitude = $_POST['longitude'];

$diameter_m = $_POST['diameter_m'];
$depth_m = $_POST['depth_m'];

$permission_valid = $_POST['permission_valid'];

$authority_id = $_POST['authority_id'];
$approval_date = $_POST['approval_date'];

$validity_years = $_POST['validity_years'];

$reason_id = $_POST['reason_id'];

$extraction_cum_per_day =
$_POST['extraction_cum_per_day'];

$state = $_POST['state'];
$district = $_POST['district'];

$line = $_POST['line'];
$station = $_POST['station'];

$meter_installed =
$_POST['meter_installed'];

$meter_functional =
$_POST['meter_functional'];

$calibration_meter_date =
$_POST['calibration_meter_date'];

$water_extraction_record =
$_POST['water_extraction_record'];

$area_feed_borewell =
$_POST['area_feed_borewell'];

$near_piezometer =
$_POST['near_piezometer'];

$photograph_lat_long =
$_POST['photograph_lat_long'];

$createdAt = time();

$createdBy =
$_SESSION['username'];

 mysqli_query($conn,"
INSERT INTO borewell
(
borewell_code,
site_id,
borewell_number,
is_available,
distance_m,
location,
latitude,
longitude,
diameter_m,
depth_m,
permission_valid,
authority_id,
approval_date,
validity_years,
no_permission_reason_id,
extraction_cum_per_day,
state,
district,
line,
station,
meter_installed,
meter_functional,
calibration_meter_date,
water_extraction_record,
area_feed_borewell,
near_piezometer,
photograph_lat_long,
createdAt,
createdBy
)
VALUES
(
'$borewell_code',
'$site_id',
'$borewell_number',
'$is_available',
'$distance_m',
'$location',
'$latitude',
'$longitude',
'$diameter_m',
'$depth_m',
'$permission_valid',
'$authority_id',
'$approval_date',
'$validity_years',
'$reason_id',
'$extraction_cum_per_day',
'$state',
'$district',
'$line',
'$station',
'$meter_installed',
'$meter_functional',
'$calibration_meter_date',
'$water_extraction_record',
'$area_feed_borewell',
'$near_piezometer',
'$photograph_lat_long',
'$createdAt',
'$createdBy'
)
");

    header("Location:borewell_list.php");
    exit();
}

/* Dropdown Data */
$sites = mysqli_query($conn,"
SELECT site_id
FROM site
ORDER BY site_id
");

$states = mysqli_query($conn,"
SELECT state_id,name
FROM state
ORDER BY name
");

$lines = mysqli_query($conn,"
SELECT line_id,Name
FROM line
ORDER BY Name
");

$stations = mysqli_query($conn,"
SELECT station_id,name
FROM station
ORDER BY name
");

$authorities = mysqli_query($conn,"
SELECT authority_id,name
FROM authority
ORDER BY name
");

$reasons = mysqli_query($conn,"
SELECT reason_id,name
FROM no_permission_reason
ORDER BY name
");


?>

<!DOCTYPE html>
<html>
<head>

<title>Add Borewell</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family:'Segoe UI',sans-serif;
    background:#f1f5f9;
    padding:30px;
}


.container{
    max-width:1300px;
    margin:auto;
}

h1{
    margin-bottom:25px;
    color:#0f172a;
}

.section-card{
    background:#fff;
    border-radius:15px;
    padding:25px;
    margin-bottom:25px;
    box-shadow:0 5px 15px rgba(0,0,0,.08);
}

.section-card h2{
    margin-bottom:25px;
    color:#2563eb;
    font-size:22px;
    border-left:5px solid #2563eb;
    padding-left:12px;
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
    margin-bottom:7px;
    font-weight:600;
    color:#334155;
}

.form-group input,
.form-group select,
.form-group textarea{
    padding:12px;
    border:1px solid #cbd5e1;
    border-radius:8px;
    font-size:14px;
}

.form-group input:focus,
.form-group select:focus,
.form-group textarea:focus{
    outline:none;
    border-color:#2563eb;
    box-shadow:0 0 5px rgba(37,99,235,.3);
}

textarea{
    min-height:100px;
    resize:vertical;
}

.full{
    grid-column:1/3;
}

.submit-area{
    text-align:center;
}

.submit-area button{
    background:#2563eb;
    color:white;
    border:none;
    padding:14px 35px;
    font-size:16px;
    border-radius:8px;
    cursor:pointer;
    font-weight:600;
}

.submit-area button:hover{
    background:#1d4ed8;
}

@media(max-width:768px){

.grid{
    grid-template-columns:1fr;
}

.full{
    grid-column:auto;
}

body{
    padding:15px;
}

}

</style>

</head>

<body>
 

<div class="container">
    

<h1>💧 Add Borewell</h1>

<form method="POST">

<!-- SECTION 1 -->

<div class="section-card">

<h2>Basic Information</h2>

<div class="grid">

<div class="form-group">
<label>Borewell Code *</label>
<input type="text" name="borewell_code" required>
</div>

<div class="form-group">
<label>Borewell Number *</label>
<input type="number" name="borewell_number" required>
</div>

<div class="form-group">
<label>Site *</label>
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
<label>Availability</label>
<select name="is_available">
<option value="1">Available</option>
<option value="0">Unavailable</option>
</select>
</div>

<div class="form-group">
<label>State</label>
<select name="state">

<option value="">
Select State
</option>

<?php while($state=mysqli_fetch_assoc($states)){ ?>

<option value="<?= $state['name'] ?>">
<?= $state['name'] ?>
</option>

<?php } ?>

</select>
</div>

<div class="form-group">
<label>District</label>
<input type="text" name="district">
</div>

<div class="form-group">
<label>Line</label>
<select name="line">

<option value="">
Select Line
</option>

<?php while($line=mysqli_fetch_assoc($lines)){ ?>

<option value="<?= $line['Name'] ?>">
<?= $line['Name'] ?>
</option>

<?php } ?>

</select>
</div>

<div class="form-group">
<label>Station</label>
<select name="station">

<option value="">
Select Station
</option>

<?php while($station=mysqli_fetch_assoc($stations)){ ?>

<option value="<?= $station['name'] ?>">
<?= $station['name'] ?>
</option>

<?php } ?>

</select>
</div>

<div class="form-group full">
<label>Location</label>
<textarea name="location"></textarea>
</div>

<div class="form-group">
<label>Latitude</label>
<input type="text" name="latitude">
</div>

<div class="form-group">
<label>Longitude</label>
<input type="text" name="longitude">
</div>

</div>

</div>

<!-- SECTION 2 -->

<div class="section-card">

<h2>Technical Details</h2>

<div class="grid">

<div class="form-group">
<label>Distance (Meter)</label>
<input type="number" name="distance_m">
</div>

<div class="form-group">
<label>Diameter (Meter)</label>
<input type="number" step="0.01" name="diameter_m">
</div>

<div class="form-group">
<label>Depth (Meter)</label>
<input type="number" step="0.01" name="depth_m">
</div>

<div class="form-group">
<label>Extraction CUM / Day</label>
<input type="number" step="0.01" name="extraction_cum_per_day">
</div>

<div class="form-group">
<label>Meter Installed</label>
<select name="meter_installed">
<option>Yes</option>
<option>No</option>
</select>
</div>

<div class="form-group">
<label>Meter Functional</label>
<select name="meter_functional">
<option>Yes</option>
<option>No</option>
</select>
</div>

<div class="form-group">
<label>Calibration Date</label>
<input type="date" name="calibration_meter_date">
</div>

<div class="form-group">
<label>Water Extraction Record</label>
<select name="water_extraction_record">
<option>Yes</option>
<option>No</option>
</select>
</div>

<div class="form-group">
<label>Area Feed Borewell</label>
<input type="text" name="area_feed_borewell">
</div>

<div class="form-group">
<label>Near Piezometer</label>
<select name="near_piezometer">
<option>Yes</option>
<option>No</option>
</select>
</div>

</div>

</div>

<!-- SECTION 3 -->

<div class="section-card">

<h2>Permission & Approval Details</h2>

<div class="grid">

<div class="form-group">
<label>Permission Valid</label>
<select name="permission_valid">
<option value="1">Yes</option>
<option value="0">No</option>
</select>
</div>

<div class="form-group">
<label>Authority</label>
<select name="authority_id">

<option value="">
Select Authority
</option>

<?php while($auth=mysqli_fetch_assoc($authorities)){ ?>

<option value="<?= $auth['authority_id'] ?>">
<?= $auth['name'] ?>
</option>

<?php } ?>

</select>
</div>

<div class="form-group">
<label>Approval Date</label>
<input type="date" name="approval_date">
</div>

<div class="form-group">
<label>Validity Years</label>
<input type="number" name="validity_years">
</div>

<div class="form-group">
<label>No Permission Reason</label>
<select name="reason_id">

<option value="">
Select Reason
</option>

<?php while($reason=mysqli_fetch_assoc($reasons)){ ?>

<option value="<?= $reason['reason_id'] ?>">
<?= $reason['name'] ?>
</option>

<?php } ?>

</select>
</div>

<div class="form-group">
<label>Photograph Path</label>
<input type="text" name="photograph_lat_long">
</div>

</div>

</div>

<div class="submit-area">
<button type="submit" name="save">
💾 Save Borewell
</button>
</div>

</form>

</div>


</body>
</html>