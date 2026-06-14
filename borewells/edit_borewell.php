<?php

include("../auth/check_auth.php");

include("../config/db.php");

$id = intval($_GET['id']);

$borewell = mysqli_query(
    $conn,
    "SELECT * FROM borewell
     WHERE borewell_id='$id'"
);

$data = mysqli_fetch_assoc($borewell);

if(!$data){
    die("Borewell not found");
}

/* Dropdown Data */

$sites = mysqli_query($conn,"SELECT site_id FROM site ORDER BY site_id");

$authorities = mysqli_query(
    $conn,
    "SELECT authority_id,name
     FROM authority
     ORDER BY name"
);

$reasons = mysqli_query(
    $conn,
    "SELECT reason_id,name
     FROM no_permission_reason
     ORDER BY name"
);

if(isset($_POST['update']))
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

    $reason_id = $_POST['no_permission_reason_id'];

    $extraction = $_POST['extraction_cum_per_day'];

    $state = $_POST['state'];
    $district = $_POST['district'];
    $line = $_POST['line'];
    $station = $_POST['station'];

    $meter_installed = $_POST['meter_installed'];
    $meter_functional = $_POST['meter_functional'];

    $calibration_date = $_POST['calibration_meter_date'];

    $water_record = $_POST['water_extraction_record'];
    $area_feed = $_POST['area_feed_borewell'];
    $near_piezometer = $_POST['near_piezometer'];

    mysqli_query(
        $conn,
        "UPDATE borewell SET

        borewell_code='$borewell_code',
        site_id='$site_id',
        borewell_number='$borewell_number',

        is_available='$is_available',

        distance_m='$distance_m',
        location='$location',

        latitude='$latitude',
        longitude='$longitude',

        diameter_m='$diameter_m',
        depth_m='$depth_m',

        permission_valid='$permission_valid',

        authority_id='$authority_id',
        approval_date='$approval_date',

        validity_years='$validity_years',

        no_permission_reason_id='$reason_id',

        extraction_cum_per_day='$extraction',

        state='$state',
        district='$district',
        line='$line',
        station='$station',

        meter_installed='$meter_installed',
        meter_functional='$meter_functional',

        calibration_meter_date='$calibration_date',

        water_extraction_record='$water_record',
        area_feed_borewell='$area_feed',
        near_piezometer='$near_piezometer',

        updatedAt='".time()."',
        UpdatedBy='".$_SESSION['username']."',
        ip='".$_SERVER['REMOTE_ADDR']."'

        WHERE borewell_id='$id'"
    );

    header("Location:borewell_list.php");
    exit();
}

?>

<!DOCTYPE html>
<html>
<head>

<title>Edit Borewell</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Poppins,sans-serif;
}

body{
background:#f1f5f9;
padding:30px;
}

.container{
max-width:1300px;
margin:auto;
}

.header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.card{
background:white;
padding:25px;
border-radius:18px;
box-shadow:0 5px 20px rgba(0,0,0,.08);
margin-bottom:25px;
}

.section-title{
font-size:18px;
font-weight:600;
margin-bottom:20px;
padding-bottom:10px;
border-bottom:2px solid #e2e8f0;
}

.grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:20px;
}

.form-group{
display:flex;
flex-direction:column;
}

label{
font-size:13px;
font-weight:600;
margin-bottom:6px;
}

input,
select,
textarea{
padding:12px;
border:1px solid #cbd5e1;
border-radius:10px;
font-size:14px;
}

textarea{
height:100px;
resize:none;
}

.btn{
background:#2563eb;
color:white;
border:none;
padding:14px 30px;
border-radius:10px;
cursor:pointer;
font-weight:600;
}

.back{
background:#64748b;
text-decoration:none;
padding:14px 25px;
border-radius:10px;
color:white;
margin-right:10px;
}



</style>

</head>

<body>



<div class="container">

<div class="header">
<h1>Edit Borewell</h1>

<div>
<a href="borewell_list.php" class="back">Back</a>
</div>
</div>

<form method="POST">

<!-- SECTION 1 -->

<div class="card">

<div class="section-title">
Basic Information
</div>

<div class="grid">

<div class="form-group">
<label>Borewell Code</label>
<input type="text"
name="borewell_code"
value="<?= $data['borewell_code'] ?>">
</div>

<div class="form-group">
<label>Site</label>

<select name="site_id">

<?php while($s=mysqli_fetch_assoc($sites)){ ?>

<option
value="<?= $s['site_id'] ?>"
<?= ($s['site_id']==$data['site_id'])?'selected':'' ?>>

Site <?= $s['site_id'] ?>

</option>

<?php } ?>

</select>

</div>

<div class="form-group">
<label>Borewell Number</label>
<input type="number"
name="borewell_number"
value="<?= $data['borewell_number'] ?>">
</div>

<div class="form-group">
<label>State</label>
<input type="text"
name="state"
value="<?= $data['state'] ?>">
</div>

<div class="form-group">
<label>District</label>
<input type="text"
name="district"
value="<?= $data['district'] ?>">
</div>

<div class="form-group">
<label>Station</label>
<input type="text"
name="station"
value="<?= $data['station'] ?>">
</div>

</div>

</div>

<!-- SECTION 2 -->

<div class="card">

<div class="section-title">
Technical Details
</div>

<div class="grid">

<div class="form-group">
<label>Availability</label>

<select name="is_available">
<option value="1" <?= $data['is_available']==1?'selected':'' ?>>
Available
</option>

<option value="0" <?= $data['is_available']==0?'selected':'' ?>>
Unavailable
</option>
</select>

</div>

<div class="form-group">
<label>Latitude</label>
<input type="text"
name="latitude"
value="<?= $data['latitude'] ?>">
</div>

<div class="form-group">
<label>Longitude</label>
<input type="text"
name="longitude"
value="<?= $data['longitude'] ?>">
</div>

<div class="form-group">
<label>Diameter (m)</label>
<input type="text"
name="diameter_m"
value="<?= $data['diameter_m'] ?>">
</div>

<div class="form-group">
<label>Depth (m)</label>
<input type="text"
name="depth_m"
value="<?= $data['depth_m'] ?>">
</div>

<div class="form-group">
<label>Distance (m)</label>
<input type="text"
name="distance_m"
value="<?= $data['distance_m'] ?>">
</div>

</div>

</div>

<!-- SECTION 3 -->

<div class="card">

<div class="section-title">
Permission Details
</div>

<div class="grid">

<div class="form-group">
<label>Permission Valid</label>

<select name="permission_valid">

<option value="1"
<?= $data['permission_valid']==1?'selected':'' ?>>
Yes
</option>

<option value="0"
<?= $data['permission_valid']==0?'selected':'' ?>>
No
</option>

</select>

</div>

<div class="form-group">
<label>Authority</label>

<select name="authority_id">

<option value="">Select</option>

<?php while($a=mysqli_fetch_assoc($authorities)){ ?>

<option
value="<?= $a['authority_id'] ?>"
<?= ($a['authority_id']==$data['authority_id'])?'selected':'' ?>>

<?= $a['name'] ?>

</option>

<?php } ?>

</select>

</div>

<div class="form-group">
<label>Approval Date</label>
<input
type="date"
name="approval_date"
value="<?= $data['approval_date'] ?>">
</div>

<div class="form-group">
<label>Validity Years</label>
<input
type="number"
name="validity_years"
value="<?= $data['validity_years'] ?>">
</div>

<div class="form-group">
<label>No Permission Reason</label>

<select name="no_permission_reason_id">

<option value="">Select</option>

<?php while($r=mysqli_fetch_assoc($reasons)){ ?>

<option
value="<?= $r['reason_id'] ?>"
<?= ($r['reason_id']==$data['no_permission_reason_id'])?'selected':'' ?>>

<?= $r['name'] ?>

</option>

<?php } ?>

</select>

</div>

</div>

</div>

<div class="card">

<div class="section-title">
Location Description
</div>

<textarea
name="location"><?= $data['location'] ?></textarea>

</div>

<div style="text-align:center">
<button
type="submit"
name="update"
class="btn">

Update Borewell

</button>
</div>

</form>

</div>

</body>
</html>