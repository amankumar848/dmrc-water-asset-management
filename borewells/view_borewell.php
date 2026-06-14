<?php

include("../auth/check_auth.php");

include("../config/db.php");

$id = intval($_GET['id']);

$query = mysqli_query(
    $conn,
    "SELECT
        b.*,
        s.site_id,
        st.name AS station_name,
        l.Name AS line_name,
        a.name AS authority_name,
        n.name AS reason_name
    FROM borewell b

    LEFT JOIN site s
        ON b.site_id = s.site_id

    LEFT JOIN station st
        ON s.station_id = st.station_id

    LEFT JOIN line l
        ON st.line_id = l.line_id

    LEFT JOIN authority a
        ON b.authority_id = a.authority_id

    LEFT JOIN no_permission_reason n
        ON b.no_permission_reason_id = n.reason_id

    WHERE b.borewell_id='$id'"
);

$data = mysqli_fetch_assoc($query);

if(!$data){
    die("Borewell not found");
}

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>View Borewell</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#f1f5f9;
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

.header h1{
font-size:28px;
color:#1e293b;
}

.btn{
padding:12px 20px;
border:none;
border-radius:10px;
cursor:pointer;
text-decoration:none;
font-size:14px;
font-weight:600;
}

.back-btn{
background:#64748b;
color:white;
}

.edit-btn{
background:#2563eb;
color:white;
}

.card{
background:white;
border-radius:18px;
padding:25px;
margin-bottom:25px;
box-shadow:0 5px 20px rgba(0,0,0,0.08);
}

.section-title{
font-size:18px;
font-weight:600;
margin-bottom:20px;
padding-bottom:10px;
border-bottom:2px solid #e2e8f0;
color:#0f172a;
}

.grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
gap:20px;
}

.field{
background:#f8fafc;
padding:15px;
border-radius:12px;
}

.label{
font-size:12px;
font-weight:600;
color:#64748b;
text-transform:uppercase;
margin-bottom:5px;
}

.value{
font-size:15px;
font-weight:500;
color:#0f172a;
word-break:break-word;
}

.status{
display:inline-block;
padding:6px 12px;
border-radius:30px;
font-size:12px;
font-weight:600;
}

.active{
background:#dcfce7;
color:#166534;
}

.inactive{
background:#fee2e2;
color:#991b1b;
}

.photo{
width:100%;
max-width:500px;
border-radius:12px;
border:1px solid #e2e8f0;
}

.top-info{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:20px;
flex-wrap:wrap;
gap:10px;
}

.code-box{
font-size:22px;
font-weight:700;
color:#2563eb;
}



</style>

</head>
<body>
  


<div class="container">

<div class="header">

<h1>View Borewell Details</h1>

<div>

<a href="borewell_list.php" class="btn back-btn">
← Back
</a>

<a href="edit_borewell.php?id=<?= $data['borewell_id'] ?>"
class="btn edit-btn">
✏ Edit
</a>

</div>

</div>

<div class="card">

<div class="top-info">

<div class="code-box">
<?= $data['borewell_code'] ?>
</div>

<div>

<?php if($data['is_available']==1){ ?>

<span class="status active">
Available
</span>

<?php } else { ?>

<span class="status inactive">
Unavailable
</span>

<?php } ?>

</div>

</div>

</div>

<!-- SECTION 1 -->

<div class="card">

<div class="section-title">
Basic Information
</div>

<div class="grid">

<div class="field">
<div class="label">Borewell Number</div>
<div class="value">
<?= $data['borewell_number'] ?>
</div>
</div>

<div class="field">
<div class="label">Line</div>
<div class="value">
<?= $data['line_name'] ?>
</div>
</div>

<div class="field">
<div class="label">Station</div>
<div class="value">
<?= $data['station_name'] ?>
</div>
</div>

<div class="field">
<div class="label">State</div>
<div class="value">
<?= $data['state'] ?>
</div>
</div>

<div class="field">
<div class="label">District</div>
<div class="value">
<?= $data['district'] ?>
</div>
</div>

<div class="field">
<div class="label">Site ID</div>
<div class="value">
<?= $data['site_id'] ?>
</div>
</div>

</div>

</div>

<!-- SECTION 2 -->

<div class="card">

<div class="section-title">
Technical Information
</div>

<div class="grid">

<div class="field">
<div class="label">Latitude</div>
<div class="value">
<?= $data['latitude'] ?>
</div>
</div>

<div class="field">
<div class="label">Longitude</div>
<div class="value">
<?= $data['longitude'] ?>
</div>
</div>

<div class="field">
<div class="label">Depth (m)</div>
<div class="value">
<?= $data['depth_m'] ?>
</div>
</div>

<div class="field">
<div class="label">Diameter (m)</div>
<div class="value">
<?= $data['diameter_m'] ?>
</div>
</div>

<div class="field">
<div class="label">Distance (m)</div>
<div class="value">
<?= $data['distance_m'] ?>
</div>
</div>

<div class="field">
<div class="label">Extraction CUM / Day</div>
<div class="value">
<?= $data['extraction_cum_per_day'] ?>
</div>
</div>

<div class="field">
<div class="label">Meter Installed</div>
<div class="value">
<?= $data['meter_installed'] ?>
</div>
</div>

<div class="field">
<div class="label">Meter Functional</div>
<div class="value">
<?= $data['meter_functional'] ?>
</div>
</div>

<div class="field">
<div class="label">Calibration Date</div>
<div class="value">
<?= $data['calibration_meter_date'] ?>
</div>
</div>

</div>

</div>

<!-- SECTION 3 -->

<div class="card">

<div class="section-title">
Permission & Other Details
</div>

<div class="grid">

<div class="field">
<div class="label">Permission Valid</div>
<div class="value">
<?= ($data['permission_valid']==1) ? "Yes" : "No"; ?>
</div>
</div>

<div class="field">
<div class="label">Authority</div>
<div class="value">
<?= $data['authority_name'] ?>
</div>
</div>

<div class="field">
<div class="label">Approval Date</div>
<div class="value">
<?= $data['approval_date'] ?>
</div>
</div>

<div class="field">
<div class="label">Validity Years</div>
<div class="value">
<?= $data['validity_years'] ?>
</div>
</div>

<div class="field">
<div class="label">No Permission Reason</div>
<div class="value">
<?= $data['reason_name'] ?>
</div>
</div>

<div class="field">
<div class="label">Water Extraction Record</div>
<div class="value">
<?= $data['water_extraction_record'] ?>
</div>
</div>

<div class="field">
<div class="label">Area Feed Borewell</div>
<div class="value">
<?= $data['area_feed_borewell'] ?>
</div>
</div>

<div class="field">
<div class="label">Near Piezometer</div>
<div class="value">
<?= $data['near_piezometer'] ?>
</div>
</div>

</div>

</div>

<!-- LOCATION -->

<div class="card">

<div class="section-title">
Location Description
</div>

<div class="field">
<div class="value">
<?= nl2br($data['location']) ?>
</div>
</div>

</div>

<!-- PHOTO -->

<?php if(!empty($data['photograph_lat_long'])){ ?>

<div class="card">

<div class="section-title">
Photograph
</div>

<img
src="../uploads/<?= $data['photograph_lat_long'] ?>"
class="photo">

</div>

<?php } ?>

<!-- AUDIT -->

<div class="card">

<div class="section-title">
Audit Information
</div>

<div class="grid">

<div class="field">
<div class="label">Created By</div>
<div class="value">
<?= $data['createdBy'] ?>
</div>
</div>

<div class="field">
<div class="label">Created At</div>
<div class="value">
<?= date("d-m-Y H:i",$data['createdAt']) ?>
</div>
</div>

<div class="field">
<div class="label">Updated By</div>
<div class="value">
<?= $data['UpdatedBy'] ?>
</div>
</div>

<div class="field">
<div class="label">Updated At</div>
<div class="value">
<?= $data['updatedAt']
? date("d-m-Y H:i",$data['updatedAt'])
: '-'
?>
</div>
</div>

</div>

</div>

</div>

</body>
</html>
