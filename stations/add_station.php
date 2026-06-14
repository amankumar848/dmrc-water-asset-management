
<?php
include("../auth/check_auth.php");

include("../config/db.php");

if(isset($_POST['save']))
{
    $line_id      = $_POST['line_id'];
    $name         = mysqli_real_escape_string($conn,$_POST['name']);
    $station_code = mysqli_real_escape_string($conn,$_POST['station_code']);

    mysqli_query(
        $conn,
        "INSERT INTO station
        (
            line_id,
            name,
            station_code
        )
        VALUES
        (
            '$line_id',
            '$name',
            '$station_code'
        )"
    );

    header("Location:station_list.php");
    exit();
}

$lines = mysqli_query(
    $conn,
    "SELECT *
     FROM line
     ORDER BY Name ASC"
);
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Add Station</title>

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
    max-width:1000px;
    margin:auto;
}

.page-header{
    background:linear-gradient(135deg,#2563eb,#1e40af);
    color:white;
    padding:25px;
    border-radius:15px;
    margin-bottom:25px;
    box-shadow:0 10px 25px rgba(0,0,0,.12);
}

.page-header h1{
    font-size:28px;
}

.page-header p{
    opacity:.9;
    margin-top:5px;
}

.form-card{
    background:white;
    border-radius:15px;
    padding:30px;
    box-shadow:0 5px 20px rgba(0,0,0,.08);
}

.section{
    margin-bottom:30px;
}

.section-title{
    font-size:18px;
    font-weight:600;
    color:#1e3a8a;
    margin-bottom:15px;
    padding-bottom:10px;
    border-bottom:2px solid #e5e7eb;
}

.grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(300px,1fr));
    gap:20px;
}

.form-group{
    display:flex;
    flex-direction:column;
}

label{
    margin-bottom:8px;
    font-weight:500;
    color:#374151;
}

input,
select{
    padding:12px;
    border:1px solid #d1d5db;
    border-radius:10px;
    font-size:14px;
    transition:.3s;
}

input:focus,
select:focus{
    outline:none;
    border-color:#2563eb;
    box-shadow:0 0 0 3px rgba(37,99,235,.15);
}

.actions{
    display:flex;
    gap:15px;
    margin-top:20px;
}

.btn{
    padding:12px 25px;
    border:none;
    border-radius:10px;
    cursor:pointer;
    font-size:14px;
    font-weight:600;
    text-decoration:none;
    transition:.3s;
}

.btn-save{
    background:#2563eb;
    color:white;
}

.btn-save:hover{
    background:#1d4ed8;
}

.btn-back{
    background:#6b7280;
    color:white;
}

.btn-back:hover{
    background:#4b5563;
}

.required{
    color:red;
}

.info-box{
    background:#eff6ff;
    border-left:4px solid #2563eb;
    padding:15px;
    border-radius:8px;
    margin-bottom:20px;
}

.info-box strong{
    color:#1e40af;
}


@media(max-width:768px){

    body{
        padding:15px;
    }

    .grid{
        grid-template-columns:1fr;
    }

}

</style>

</head>
<body>
 

<div class="container">

    <div class="page-header">
        <h1>🚉 Add New Station</h1>
        <p>DMRC Water Asset Management System</p>
    </div>

    <div class="form-card">

        <div class="info-box">
            <strong>Note:</strong>
            Fill station details carefully before saving.
        </div>

        <form method="POST">

            <!-- SECTION 1 -->

            <div class="section">

                <div class="section-title">
                    Station Information
                </div>

                <div class="grid">

                    <div class="form-group">
                        <label>
                            Metro Line
                            <span class="required">*</span>
                        </label>

                        <select
                            name="line_id"
                            required
                        >

                            <option value="">
                                Select Line
                            </option>

                            <?php
                            while($line=mysqli_fetch_assoc($lines))
                            {
                            ?>
                            <option value="<?= $line['line_id'] ?>">
                                <?= $line['Name'] ?>
                            </option>
                            <?php
                            }
                            ?>

                        </select>
                    </div>

                    <div class="form-group">
                        <label>
                            Station Code
                        </label>

                        <input
                            type="text"
                            name="station_code"
                            placeholder="Enter Station Code"
                        >
                    </div>

                </div>

            </div>

            <!-- SECTION 2 -->

            <div class="section">

                <div class="section-title">
                    Station Details
                </div>

                <div class="grid">

                    <div class="form-group">
                        <label>
                            Station Name
                            <span class="required">*</span>
                        </label>

                        <input
                            type="text"
                            name="name"
                            required
                            placeholder="Enter Station Name"
                        >
                    </div>

                </div>

            </div>

            <!-- SECTION 3 -->

            <div class="section">

                <div class="section-title">
                    Review & Save
                </div>

                <div class="grid">

                    <div class="form-group">
                        <label>Status</label>
                        <input
                            type="text"
                            value="Ready to Save"
                            readonly
                        >
                    </div>

                </div>

            </div>

            <div class="actions">

                <button
                    type="submit"
                    name="save"
                    class="btn btn-save"
                >
                    💾 Save Station
                </button>

                <a
                    href="station_list.php"
                    class="btn btn-back"
                >
                    ← Back
                </a>

            </div>

        </form>

    </div>

</div>


</body>
</html>
```
