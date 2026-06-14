<?php
include("../auth/check_auth.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DMRC Reports Dashboard</title>

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
    min-height:100vh;
}

/* Header */

.header{
    background:linear-gradient(135deg,#1e3c72,#2a5298);
    color:white;
    padding:35px;
    box-shadow:0 5px 20px rgba(0,0,0,.1);
}

.header h1{
    font-size:32px;
    font-weight:700;
}

.header p{
    margin-top:8px;
    opacity:.9;
}

/* Container */

.container{
    width:95%;
    max-width:1300px;
    margin:30px auto;
}

/* Stats */

.stats{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
    gap:20px;
    margin-bottom:30px;
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

.stat-icon{
    font-size:35px;
    margin-bottom:10px;
}

.stat-title{
    color:#64748b;
    font-size:14px;
}

.stat-value{
    font-size:30px;
    font-weight:700;
    color:#1e293b;
}

/* Reports */

.section-title{
    margin-bottom:20px;
    color:#1e293b;
    font-size:24px;
    font-weight:600;
}

.report-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(320px,1fr));
    gap:25px;
}

.report-card{
    background:white;
    border-radius:18px;
    overflow:hidden;
    box-shadow:0 8px 25px rgba(0,0,0,.08);
    transition:.3s;
}

.report-card:hover{
    transform:translateY(-8px);
}

.card-header{
    padding:25px;
    color:white;
}

.borewell{
    background:linear-gradient(135deg,#2563eb,#1d4ed8);
}

.station{
    background:linear-gradient(135deg,#16a34a,#15803d);
}

.rwh{
    background:linear-gradient(135deg,#f59e0b,#d97706);
}

.card-icon{
    font-size:50px;
    margin-bottom:15px;
}

.card-title{
    font-size:24px;
    font-weight:600;
}

.card-body{
    padding:25px;
}

.card-body p{
    color:#64748b;
    line-height:1.7;
    margin-bottom:20px;
}

.features{
    margin-bottom:25px;
}

.features li{
    list-style:none;
    padding:8px 0;
    color:#334155;
}

.features li:before{
    content:"✓";
    color:#22c55e;
    font-weight:bold;
    margin-right:10px;
}

.btn{
    display:block;
    text-align:center;
    text-decoration:none;
    padding:14px;
    border-radius:10px;
    color:white;
    font-weight:600;
    transition:.3s;
}

.btn-blue{
    background:#2563eb;
}

.btn-green{
    background:#16a34a;
}

.btn-orange{
    background:#f59e0b;
}

.btn:hover{
    opacity:.9;
}

/* Quick Actions */

.quick-actions{
    margin-top:40px;
    background:white;
    padding:25px;
    border-radius:15px;
    box-shadow:0 5px 20px rgba(0,0,0,.08);
}

.action-buttons{
    display:flex;
    flex-wrap:wrap;
    gap:15px;
    margin-top:20px;
}

.action-btn{
    text-decoration:none;
    padding:12px 20px;
    border-radius:10px;
    background:#1e3c72;
    color:white;
    font-weight:500;
}

.action-btn:hover{
    background:#16305c;
}

/* Footer */

.footer{
    text-align:center;
    margin-top:40px;
    padding:20px;
    color:#64748b;
}

@media(max-width:768px){

    .header{
        text-align:center;
    }

    .header h1{
        font-size:24px;
    }

}

</style>
</head>

<body>

<!-- Header -->

<div class="header">
    <h1>📊 DMRC Reports Dashboard</h1>
    <p>Water Asset Management System Reporting Center</p>
</div>

<div class="container">

    <!-- Stats -->

    <div class="stats">

        <div class="stat-card">
            <div class="stat-icon">💧</div>
            <div class="stat-title">Borewell Reports</div>
            <div class="stat-value">01</div>
        </div>

        <div class="stat-card">
            <div class="stat-icon">🚉</div>
            <div class="stat-title">Station Reports</div>
            <div class="stat-value">01</div>
        </div>

        <div class="stat-card">
            <div class="stat-icon">🌧️</div>
            <div class="stat-title">RWH Reports</div>
            <div class="stat-value">01</div>
        </div>

        <div class="stat-card">
            <div class="stat-icon">📑</div>
            <div class="stat-title">Total Reports</div>
            <div class="stat-value">03</div>
        </div>

    </div>

    <h2 class="section-title">
        Available Reports
    </h2>

    <div class="report-grid">

        <!-- Borewell -->

        <div class="report-card">

            <div class="card-header borewell">
                <div class="card-icon">💧</div>
                <div class="card-title">Borewell Report</div>
            </div>

            <div class="card-body">

                <p>
                    Generate complete borewell asset reports including
                    availability, permissions, extraction capacity,
                    station details and location data.
                </p>

                <ul class="features">
                    <li>Availability Status</li>
                    <li>Permission Information</li>
                    <li>Location Details</li>
                    <li>Export & Print</li>
                </ul>

                <a href="borewell_report.php"
                   class="btn btn-blue">
                   View Report
                </a>

            </div>

        </div>

        <!-- Station -->

        <div class="report-card">

            <div class="card-header station">
                <div class="card-icon">🚉</div>
                <div class="card-title">Station Report</div>
            </div>

            <div class="card-body">

                <p>
                    View complete station information with connected
                    sites, borewells, structures and metro line details.
                </p>

                <ul class="features">
                    <li>Station Information</li>
                    <li>Metro Line Details</li>
                    <li>Connected Sites</li>
                    <li>Asset Summary</li>
                </ul>

                <a href="station_report.php"
                   class="btn btn-green">
                   View Report
                </a>

            </div>

        </div>

        <!-- RWH -->

        <div class="report-card">

            <div class="card-header rwh">
                <div class="card-icon">🌧️</div>
                <div class="card-title">RWH Report</div>
            </div>

            <div class="card-body">

                <p>
                    Generate Rain Water Harvesting reports including
                    capacity, locations, maintenance and operational status.
                </p>

                <ul class="features">
                    <li>RWH System Details</li>
                    <li>Capacity Tracking</li>
                    <li>Maintenance Records</li>
                    <li>Status Monitoring</li>
                </ul>

                <a href="rwh_report.php"
                   class="btn btn-orange">
                   View Report
                </a>

            </div>

        </div>

    </div>

    <!-- Quick Actions -->

    <div class="quick-actions">

        <h2>⚡ Quick Actions</h2>

        <div class="action-buttons">

            <a href="../dashboard.php"
               class="action-btn">
               🏠 Dashboard
            </a>

            <a href="../borewell/borewell_list.php"
               class="action-btn">
               💧 Borewells
            </a>

            <a href="../stations/station_list.php"
               class="action-btn">
               🚉 Stations
            </a>

            <a href="../rwh/rwh_list.php"
               class="action-btn">
               🌧️ RWH Systems
            </a>

        </div>

    </div>

    <div class="footer">
        © <?= date('Y') ?> DMRC Water Asset Management System
    </div>

</div>

</body>
</html>