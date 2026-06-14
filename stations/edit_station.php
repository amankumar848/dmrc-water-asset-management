<?php
include("../auth/check_auth.php");

include("../config/db.php");

$id = $_GET['id'];

$station = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT * FROM station
         WHERE station_id='$id'"
    )
);

$lines = mysqli_query(
    $conn,
    "SELECT *
     FROM line
     ORDER BY Name"
);

if(isset($_POST['update']))
{
    $line_id = $_POST['line_id'];
    $name = mysqli_real_escape_string(
        $conn,
        $_POST['name']
    );

    $station_code = mysqli_real_escape_string(
        $conn,
        $_POST['station_code']
    );

    mysqli_query(
        $conn,
        "UPDATE station SET
        line_id='$line_id',
        name='$name',
        station_code='$station_code'
        WHERE station_id='$id'"
    );

    header("Location: station_list.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Station</title>

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
max-width:850px;
margin:auto;
}

.page-header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}

.page-title{
font-size:30px;
font-weight:700;
color:#0f172a;
}

.back-btn{
background:#64748b;
color:white;
text-decoration:none;
padding:10px 18px;
border-radius:8px;
font-size:14px;
}

.back-btn:hover{
background:#475569;
}

.card{
background:white;
border-radius:16px;
padding:30px;
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

.form-grid{
display:grid;
grid-template-columns:1fr 1fr;
gap:20px;
}

.form-group{
display:flex;
flex-direction:column;
}

.form-group label{
font-size:14px;
font-weight:600;
margin-bottom:8px;
color:#334155;
}

.form-group input,
.form-group select{
padding:12px;
border:1px solid #cbd5e1;
border-radius:10px;
font-size:14px;
outline:none;
}

.form-group input:focus,
.form-group select:focus{
border-color:#2563eb;
box-shadow:0 0 0 3px rgba(37,99,235,0.15);
}

.full-width{
grid-column:1/3;
}

.btn-group{
margin-top:30px;
display:flex;
gap:15px;
}

.btn{
border:none;
padding:12px 24px;
border-radius:10px;
font-size:14px;
font-weight:600;
cursor:pointer;
}

.btn-primary{
background:#2563eb;
color:white;
}

.btn-primary:hover{
background:#1d4ed8;
}

.btn-secondary{
background:#e2e8f0;
color:#0f172a;
text-decoration:none;
display:inline-flex;
align-items:center;
}

.btn-secondary:hover{
background:#cbd5e1;
}

.station-info{
background:#eff6ff;
padding:15px;
border-radius:10px;
margin-bottom:25px;
border-left:4px solid #2563eb;
}

.station-info h4{
color:#1e40af;
margin-bottom:5px;
}

.station-info p{
font-size:14px;
color:#475569;
}



@media(max-width:768px){

.form-grid{
grid-template-columns:1fr;
}

.full-width{
grid-column:auto;
}

.page-header{
flex-direction:column;
gap:15px;
align-items:flex-start;
}

}

</style>
</head>

<body>



<div class="container">

<div class="page-header">

<h1 class="page-title">
✏️ Edit Station
</h1>

<a href="station_list.php" class="back-btn">
← Back
</a>

</div>

<div class="card">

<div class="station-info">
<h4>Station ID: <?= $station['station_id']; ?></h4>
<p>Update station details below.</p>
</div>

<form method="POST">

<div class="section-title">
Station Information
</div>

<div class="form-grid">

<div class="form-group">
<label>Metro Line *</label>

<select name="line_id" required>

<?php while($line=mysqli_fetch_assoc($lines)) { ?>

<option
value="<?= $line['line_id']; ?>"
<?= ($station['line_id']==$line['line_id']) ? 'selected' : ''; ?>
>
<?= $line['Name']; ?>
</option>

<?php } ?>

</select>

</div>

<div class="form-group">
<label>Station Code</label>

<input
type="text"
name="station_code"
value="<?= $station['station_code']; ?>"
>

</div>

<div class="form-group full-width">
<label>Station Name *</label>

<input
type="text"
name="name"
required
value="<?= $station['name']; ?>"
>

</div>

</div>

<div class="btn-group">

<button
type="submit"
name="update"
class="btn btn-primary">
💾 Update Station
</button>

<a
href="station_list.php"
class="btn btn-secondary">
Cancel
</a>

</div>

</form>

</div>

</div>

</body>
</html>