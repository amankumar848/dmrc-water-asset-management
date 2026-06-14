<?php
include("auth/check_auth.php");
?>
<?php

include("./config/db.php");

/* Stations */

$stationQuery = mysqli_query(
    $conn,
    "SELECT COUNT(*) total
     FROM station"
);

$stationCount =
mysqli_fetch_assoc(
    $stationQuery
)['total'];

/* Borewells */

$borewellQuery = mysqli_query(
    $conn,
    "SELECT COUNT(*) total
     FROM borewell"
);

$borewellCount =
mysqli_fetch_assoc(
    $borewellQuery
)['total'];

/* RWH */

$rwhQuery = mysqli_query(
    $conn,
    "SELECT COUNT(*) total
     FROM rwh"
);

$rwhCount =
mysqli_fetch_assoc(
    $rwhQuery
)['total'];

/* Users */

$userQuery = mysqli_query(
    $conn,
    "SELECT COUNT(*) total
     FROM users"
);

$userCount =
mysqli_fetch_assoc(
    $userQuery
)['total'];

?>

<?php
// DMRC Water Asset Management System - Dashboard
$pageTitle = "DMRC Dashboard";
$userName  = $_SESSION['username'];
$userRole  = "DMRC User";
$userEmail = "";
$today     = date("d F Y, l");

// Stat Cards Data
$stats = [
  [
    "icon"=>"💧",
    "label"=>"Total Borewells",
    "value"=>$borewellCount,
    "sub"=>"Active Assets",
    "trend"=>"up",
    "trendLabel"=>"Live Database Count",
    "accent"=>"#3B82F6"
  ],
  [
    "icon"=>"🚉",
    "label"=>"Active Stations",
    "value"=>$stationCount,
    "sub"=>"Operational",
    "trend"=>"up",
    "trendLabel"=>"Live Database Count",
    "accent"=>"#22C55E"
  ],
  [
    "icon"=>"👤",
    "label"=>"Total Users",
    "value"=>$userCount,
    "sub"=>"Registered Users",
    "trend"=>"up",
    "trendLabel"=>"System Users",
    "accent"=>"#8B5CF6"
  ],
  [
    "icon"=>"🌧️",
    "label"=>"RWH Systems",
    "value"=>$rwhCount,
    "sub"=>"Installed",
    "trend"=>"up",
    "trendLabel"=>"Live Database Count",
    "accent"=>"#F59E0B"
  ]
];

// Activities
$activities = [];

/* Latest Borewells */

$borewellActivity = mysqli_query($conn,"
SELECT
borewell_id,
borewell_number,
createdAt
FROM borewell
ORDER BY borewell_id DESC
LIMIT 5
");

while($row = mysqli_fetch_assoc($borewellActivity))
{
    $activities[] = [
        "icon"  => "💧",
        "title" => "New Borewell Added",
        "sub"   => "Borewell No. ".$row['borewell_number'],
        "time"  => date("d M Y"),
        "color" => "#3B82F6"
    ];
}

/* Latest RWH */

$rwhActivity = mysqli_query($conn,"
SELECT
rwh_id,
rwh_code
FROM rwh
ORDER BY rwh_id DESC
LIMIT 5
");

while($row = mysqli_fetch_assoc($rwhActivity))
{
    $activities[] = [
        "icon"  => "🌧️",
        "title" => "RWH System Added",
        "sub"   => $row['rwh_code'],
        "time"  => date("d M Y"),
        "color" => "#8B5CF6"
    ];
}

/* Latest Users */

$userActivity = mysqli_query($conn,"
SELECT
username
FROM users
ORDER BY id DESC
LIMIT 5
");

while($row = mysqli_fetch_assoc($userActivity))
{
    $activities[] = [
        "icon"  => "👤",
        "title" => "New User Registered",
        "sub"   => $row['username'],
        "time"  => date("d M Y"),
        "color" => "#22C55E"
    ];
}

/* Sort & Limit */

$activities = array_slice(
    array_reverse($activities),
    0,
    10
);

// Nav items
$navItems = [];

$navItems[] = [
    "icon"=>"🏠",
    "label"=>"Dashboard",
    "link"=>"dashboard.php"
];

$navItems[] = [
    "icon"=>"💧",
    "label"=>"Borewells",
    "link"=>"borewells/borewell_list.php"
];

$navItems[] = [
    "icon"=>"🚉",
    "label"=>"Stations",
    "link"=>"stations/station_list.php"
];

$navItems[] = [
    "icon"=>"🌧️",
    "label"=>"RWH Systems",
    "link"=>"rwh/rwh_list.php"
];

if(
$_SESSION['user_level']==-1 ||
$_SESSION['user_level']==3
)
{
    $navItems[] = [
        "icon"=>"👥",
        "label"=>"Users & Roles",
        "link"=>"users/user_list.php"
    ];
}

$navItems[] = [
    "icon"=>"📊",
    "label"=>"Reports",
    "link"=>"reports/index.php"
];

$navItems[] = [
    "icon"=>"🚪",
    "label"=>"Logout",
    "link"=>"auth/logout.php"
];

$stationNames = [];
$stationCounts = [];

$result = mysqli_query($conn,"
SELECT s.name, COUNT(b.borewell_id) total
FROM borewell b
LEFT JOIN site st ON b.site_id = st.site_id
LEFT JOIN station s ON st.station_id = s.station_id
GROUP BY s.station_id
ORDER BY total DESC
LIMIT 5
");

while($row = mysqli_fetch_assoc($result)){
    $stationNames[] = $row['name'];
    $stationCounts[] = (int)$row['total'];
}

$availableBorewells = mysqli_fetch_assoc(
    mysqli_query($conn,"SELECT COUNT(*) total FROM borewell WHERE is_available=1")
)['total'];

$unavailableBorewells = mysqli_fetch_assoc(
    mysqli_query($conn,"SELECT COUNT(*) total FROM borewell WHERE is_available=0")
)['total'];


?>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title><?= $pageTitle ?></title>
<link href="https://fonts.googleapis.com/css2?family=Sora:wght@400;500;600;700;800&display=swap" rel="stylesheet"/>
<style>
  *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
  :root {
    --bg:      #F1F5F9;
    --card:    #FFFFFF;
    --text:    #0F172A;
    --muted:   #64748B;
    --border:  #E2E8F0;
    --sidebar: #1E293B;
  }
  body.dark {
    --bg:      #0F172A;
    --card:    #1E293B;
    --text:    #F1F5F9;
    --muted:   #94A3B8;
    --border:  #334155;
    --sidebar: #0B1222;
  }
  body { font-family: 'Sora', 'Segoe UI', sans-serif; background: var(--bg); color: var(--text); transition: background .3s, color .3s; }

  /* ── Layout ── */
  .layout { display: flex; min-height: 100vh; }
  aside { width: 220px; background: var(--sidebar); color: #F1F5F9; display: flex; flex-direction: column;
          padding: 12px 0; position: fixed; top: 0; bottom: 0; left: 0; z-index: 100;
          box-shadow: 2px 0 12px rgba(0,0,0,.15); }
  main  { margin-left: 220px; flex: 1; display: flex; flex-direction: column; }

  .card:hover{
    transform:translateY(-3px);
    transition:.3s;
}
.stat-card{
    box-shadow:0 10px 25px rgba(0,0,0,.08);
}

  /* ── Sidebar logo ── */
.logo {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 8px 0 18px 0;
    margin-bottom: 8px;
}

.logo-icon {
    width: 150px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.logo-icon img {
    width: 100%;
    height: auto;
    object-fit: contain;
    transform: scale(1.25);
}
  .logo-name  { font-size:15px;font-weight:800;letter-spacing:1px; }
  .logo-sub   { font-size:9px;color:#94A3B8;line-height:1.3;letter-spacing:.5px; }

  /* ── Nav ── */
  nav { flex:1; padding:0 12px; display:flex; flex-direction:column; gap:4px; }
  .nav-btn { display:flex;align-items:center;gap:10px;padding:10px 14px;border-radius:10px;
             border:none;cursor:pointer;background:transparent;color:#94A3B8;font-weight:400;
             font-size:13px;font-family:inherit;transition:all .2s;text-align:left;width:100%; }
  .nav-btn:hover { background:rgba(255,255,255,.07); color:#fff; }
  .nav-btn.active { background:linear-gradient(90deg,#6366F1,#8B5CF6);color:#fff;font-weight:700; }

  /* ── Dark toggle ── */
  .dark-btn { margin:12px 20px 20px;padding:10px 14px;border-radius:10px;border:1px solid #334155;
              background:transparent;color:#94A3B8;cursor:pointer;font-size:12px;font-weight:600;
              font-family:inherit;display:flex;align-items:center;gap:8px;width:calc(100% - 40px);
              transition:background .2s; }
  .dark-btn:hover { background:#334155; }

  /* ── Sidebar user ── */
  .sidebar-user { margin:0 12px;padding:10px 12px;border-radius:10px;background:#334155;
                  display:flex;align-items:center;gap:10px; }
  .avatar { width:36px;height:36px;border-radius:50%;background:linear-gradient(135deg,#6366F1,#8B5CF6);
            display:flex;align-items:center;justify-content:center;color:#fff;font-weight:700;font-size:14px;flex-shrink:0; }
  .avatar-lg { width:42px;height:42px;font-size:16px; }
  .u-name  { font-size:12px;font-weight:700;color:#F1F5F9; }
  .u-role  { font-size:10px;color:#94A3B8; }

  /* ── Top Bar ── */
  header { background:var(--card);border-bottom:1px solid var(--border);padding:14px 28px;
           display:flex;align-items:center;gap:16px;position:sticky;top:0;z-index:50; }
  .menu-icon { font-size:20px;color:var(--muted);cursor:pointer; }
  .search-box { flex:1;max-width:400px;background:var(--bg);border-radius:10px;border:1px solid var(--border);
                display:flex;align-items:center;gap:10px;padding:8px 14px; }
  .search-box input { border:none;background:transparent;outline:none;flex:1;font-size:13px;color:var(--text);font-family:inherit; }
  .header-right { margin-left:auto;display:flex;align-items:center;gap:16px; }

  /* ── Notification bell ── */
  .bell-wrap { position:relative;cursor:pointer;font-size:20px; }
  .badge { position:absolute;top:-4px;right:-4px;background:#3B82F6;color:#fff;border-radius:50%;
           width:16px;height:16px;font-size:9px;font-weight:700;display:flex;align-items:center;justify-content:center; }

  /* ── Profile dropdown ── */
  .profile-wrap { position:relative; }
  .profile-trigger { display:flex;align-items:center;gap:8px;cursor:pointer;user-select:none; }
  .profile-trigger .p-name { font-size:12px;font-weight:700; }
  .profile-trigger .p-role { font-size:10px;color:var(--muted); }
  .arrow { color:var(--muted);font-size:11px;display:inline-block;transition:transform .2s; }
  .arrow.open { transform:rotate(180deg); }

  .dropdown { display:none;position:absolute;top:calc(100% + 10px);right:0;background:var(--card);
              border:1px solid var(--border);border-radius:14px;
              box-shadow:0 8px 30px rgba(0,0,0,.13);min-width:210px;z-index:200;overflow:hidden;
              animation:fadeDown .18s ease; }
  .dropdown.open { display:block; }
  @keyframes fadeDown { from{opacity:0;transform:translateY(-6px)} to{opacity:1;transform:translateY(0)} }

  .dp-head { padding:16px 16px 12px;border-bottom:1px solid var(--border);display:flex;align-items:center;gap:10px; }
  .dp-email { font-size:11px;color:var(--muted); }
  .role-badge { margin-top:3px;display:inline-block;background:#EEF2FF;color:#6366F1;
                font-size:10px;font-weight:600;border-radius:6px;padding:1px 7px; }
  .dp-item {
    display:flex;
    align-items:center;
    gap:12px;
    padding:12px 16px;
    text-decoration:none;
    color:var(--text);
    width:100%;
    transition:.2s;

    border:none;
    outline:none;
    background:transparent;
}
	.dp-item:visited,
.dp-item:active,
.dp-item:focus {
    color:var(--text);
    background:transparent;
    outline:none;
}
  .dp-item:hover { background:var(--bg); }
  .dp-item .di-icon { font-size:17px;width:24px;text-align:center; }
  .dp-item .di-label { font-size:13px;font-weight:600; }
  .dp-item .di-desc  { font-size:11px;color:var(--muted); }
  .dp-divider { border-top:1px solid var(--border);margin:4px 0; }
  .dp-logout { color:#EF4444 !important; }
  .dp-logout:hover { background:#FEF2F2 !important; }
  .dp-logout .di-desc { color:#FCA5A5 !important; }

  /* ── Page body ── */
  .page { padding:28px; flex:1; }
  .welcome-row { display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:24px;flex-wrap:wrap;gap:12px; }
  .welcome-row h1 { font-size:26px;font-weight:800; }
  .welcome-row p  { margin-top:4px;color:var(--muted);font-size:13px; }
  .date-chip { display:flex;align-items:center;gap:8px;background:var(--card);border:1px solid var(--border);
               border-radius:10px;padding:8px 14px;font-size:12px;color:var(--muted); }

  /* ── Stat Cards ── */
  .stat-grid { display:flex;gap:16px;flex-wrap:wrap;margin-bottom:24px; }
  .stat-card { background:var(--card);border-radius:16px;padding:20px 22px;flex:1 1 160px;min-width:140px;
               box-shadow:0 1px 4px rgba(0,0,0,.07);display:flex;flex-direction:column;gap:6px;
               border:1px solid var(--border); }
  .stat-icon-row { display:flex;align-items:center;gap:10px; }
  .stat-icon { width:40px;height:40px;border-radius:10px;display:flex;align-items:center;
               justify-content:center;font-size:20px; }
  .stat-label { font-size:12px;color:var(--muted);font-weight:500; }
  .stat-value { font-size:30px;font-weight:700;line-height:1.1; }
  .stat-sub   { font-size:11px;color:var(--muted); }
  .stat-trend { font-size:11px;font-weight:500; }
  .trend-up   { color:#22C55E; }
  .trend-down { color:#EF4444; }

  /* ── Row 2 ── */
  .row2 { display:flex;gap:16px;flex-wrap:wrap;margin-bottom:24px; }
  .card { background:var(--card);border-radius:16px;padding:22px;border:1px solid var(--border);
          box-shadow:0 1px 4px rgba(0,0,0,.06); }
  .card h3 { font-size:15px;font-weight:700;margin-bottom:14px; }
  .chart-card   { flex:2 1 340px; }
  .donut-card   { flex:1 1 240px; }
  .actions-card { flex:1 1 180px;display:flex;flex-direction:column;gap:10px; }
  .chart-card canvas,
.donut-card canvas{
    width:100% !important;
    height:300px !important;
}

  /* ── Area Chart (canvas) ── */
  .chart-head { display:flex;justify-content:space-between;align-items:center;margin-bottom:16px; }
  .chart-head h3 { margin:0; }
  .chart-select { background:var(--bg);border:1px solid var(--border);border-radius:8px;
                  padding:4px 10px;font-size:12px;color:var(--text);cursor:pointer;font-family:inherit; }
  #borewellChart { width:100%!important;height:200px!important; }

  /* ── Donut ── */
  .donut-wrap { display:flex;flex-direction:column;align-items:center; }
  #donutCanvas { width:180px!important;height:180px!important; }
  

  /* ── Quick Actions ── */
  .qa-btn { display:flex;align-items:center;gap:10px;padding:11px 14px;border-radius:10px;border:none;
            cursor:pointer;font-weight:600;font-size:13px;font-family:inherit;text-align:left;
            transition:transform .15s,box-shadow .15s;width:100%; }
  .qa-btn:hover { transform:translateY(-1px);box-shadow:0 4px 12px rgba(0,0,0,.1); }

  /* ── Row 3 ── */
  .row3 { display:flex;gap:16px;flex-wrap:wrap; }
  .activities-card { flex:1 1 340px; }
  .map-card        { flex:1.2 1 340px; }

  /* ── Activities ── */
  .activity-list { display:flex;flex-direction:column;gap:14px; }
  .activity-item { display:flex;align-items:flex-start;gap:12px; }
  .activity-icon { width:36px;height:36px;border-radius:10px;flex-shrink:0;
                   display:flex;align-items:center;justify-content:center;font-size:18px; }
  .activity-body { flex:1; }
  .activity-title { font-size:13px;font-weight:600; }
  .activity-sub   { font-size:11px;color:var(--muted); }
  .activity-time  { font-size:11px;color:var(--muted);white-space:nowrap; }
  .view-all { margin-top:18px;width:100%;background:transparent;border:none;color:#6366F1;
              font-weight:600;font-size:13px;cursor:pointer;text-align:right;font-family:inherit; }
  .view-all:hover { text-decoration:underline; }

  /* ── Metro Map SVG ── */
  .map-inner { display:flex;gap:12px; }
  body.dark .metro-svg { background:#1a2744; }
  .map-legend-row { display:flex;align-items:center;gap:8px; }

  /* ── Map Controls ── */
  .map-ctrl-btn { background:var(--card);border:1px solid var(--border);border-radius:7px;
                  width:30px;height:30px;cursor:pointer;font-size:15px;color:var(--text);
                  display:flex;align-items:center;justify-content:center;transition:background .15s;
                  font-family:inherit; }
  .map-ctrl-btn:hover { background:var(--bg); }
  #mapViewport:active { cursor:grabbing; }
  #mapViewport.fs-mode { position:fixed!important;top:0;left:0;width:100vw!important;height:100vh!important;
                         z-index:9999;border-radius:0!important;border:none!important; }


  #backdrop { display:none;position:fixed;inset:0;z-index:190; }
  #backdrop.on { display:block; }
</style>
</head>
<body>


<div class="layout">

  <!-- ════════ SIDEBAR ════════ -->
  <aside>
    <div class="logo">
      <div class="logo-icon">
		<img src="logo3.png"></div>
      <div>
        <!--<div class="logo-name">DMRC</div>
        <div class="logo-sub">WATER ASSET<br>MANAGEMENT SYSTEM</div>-->
      </div>
    </div>

    <nav>
 
    <?php foreach($navItems as $nav): ?>

<a
href="<?= $nav['link'] ?>"
class="nav-btn <?= ($nav['link']=='dashboard.php') ? 'active' : '' ?>"
style="text-decoration:none;">

    <span><?= $nav['icon'] ?></span>
    <span><?= $nav['label'] ?></span>

</a>

<?php endforeach; ?>


    </nav>

    <button class="dark-btn" onclick="toggleDark()" id="darkBtn">🌙 Dark Mode</button>

    <div class="sidebar-user">
     <div class="avatar">
<?= strtoupper(substr($_SESSION['username'],0,1)); ?>
</div>
      <div>
        <div class="u-name"><?= $userName ?></div>
        <div class="u-role"><?= $userRole ?></div>
        
      </div>
      <div style="margin-left:auto;color:#94A3B8;cursor:pointer;font-size:16px;">⋮</div>
    </div>
  </aside>

  <!-- ════════ MAIN ════════ -->
  <main>

    <!-- ── Top Bar ── -->
    <header>
      <div class="menu-icon">☰</div>
      <div class="search-box">
        <span style="color:var(--muted)">🔍</span>
        <input placeholder="Search for stations, borewells..."/>
      </div>
      <div class="header-right">

        <!-- Bell -->
        <div class="bell-wrap">
          <span class="badge">
<?= count($activities) ?>
</span>
        </div>

        <!-- Profile -->
        <div class="profile-wrap">
          <div class="profile-trigger" onclick="toggleProfile()">
            <div class="avatar">
<?= strtoupper(substr($_SESSION['username'],0,1)); ?>
</div>
            <div>
              <div class="p-name"><?= $userName ?></div>
              <div class="p-role"><?= $userRole ?></div>
            </div>
            <span class="arrow" id="profileArrow">▼</span>
          </div>

          <!-- Dropdown -->
          <div class="dropdown" id="profileDropdown">
            <div class="dp-head">
              <div class="avatar">
<?= strtoupper(substr($_SESSION['username'],0,1)); ?>
</div>
              <div>
                <div style="font-size:13px;font-weight:700"><?= $userName ?></div>
                <div class="dp-email"><?= $userEmail ?></div>
                <div class="role-badge"><?= $userRole ?></div>
              </div>
            </div>

            <button class="dp-item" onclick="closeProfile()">
              <span class="di-icon">👤</span>
              <div><div class="di-label">My Profile</div><div class="di-desc"></div></div>
            </button>
            <button class="dp-item" onclick="closeProfile()">
              <span class="di-icon">⚙️</span>
              <div><div class="di-label">Account Settings</div><div class="di-desc"></div></div>
            </button>
            <!--<button class="dp-item" onclick="closeProfile()">
              <span class="di-icon">🔔</span>
              <div><div class="di-label">Notifications</div><div class="di-desc">Manage alerts</div></div>
            </button>-->
            <!--<button class="dp-item" onclick="toggleDark();closeProfile()">
              <div><div class="di-label" id="themeLabel">Dark Mode</div><div class="di-desc">Toggle appearance</div></div>
              <span class="di-icon" id="themeIcon">🌙</span>
            </button>-->

            <div class="dp-divider"></div>

          <a href="auth/logout.php" class="dp-item dp-logout">
    <span class="di-icon">🚪</span>
    <div>
        <div class="di-label">Logout</div>
    </div>
</a>
          </div>
        </div>

      </div>
    </header>

    <!-- ── Page Content ── -->
    <div class="page">

      <!-- Welcome -->
      <div class="welcome-row">
        <div>
           <h1>Welcome back, <?= $_SESSION['username']; ?>! 👋</h1>
          <p>Here's what's happening with DMRC Water Assets today.</p>
        </div>
        <div class="date-chip">📅 <?= $today ?></div>
      </div>

      <!-- Stat Cards -->
      <div class="stat-grid">
        <?php foreach($stats as $s): ?>
        <div class="stat-card">
          <div class="stat-icon-row">
            <div class="stat-icon" style="background:<?= $s['accent'] ?>18"><?= $s['icon'] ?></div>
            <span class="stat-label"><?= $s['label'] ?></span>
          </div>
          <div class="stat-value"><?= $s['value'] ?></div>
          <div class="stat-sub"><?= $s['sub'] ?></div>
          <div class="stat-trend <?= $s['trend']==='up'?'trend-up':'trend-down' ?>">
            <?= $s['trend']==='up'?'↗':'↘' ?> <?= $s['trendLabel'] ?>
          </div>
        </div>
        <?php endforeach; ?>
      </div>

      <!-- Row 2 -->
      <div class="row2">

        <!-- Area Chart -->
        <!-- Borewell by Station -->
<div class="card chart-card">
    <div class="chart-head">
        <h3>Top Stations by Borewell Count</h3>
    </div>

    <div style="height:300px;">
        <canvas id="stationChart"></canvas>
    </div>
</div>

<!-- Borewell Status -->
<div class="card donut-card">
    <h3>Borewell Availability</h3>

    <div style="height:300px;">
        <canvas id="statusChart"></canvas>
    </div>
</div>

        <!-- Quick Actions -->
        <div class="card actions-card">
          <h3 style="margin-bottom:4px">Quick Actions</h3>
   <button
class="qa-btn"
onclick="window.location='borewells/add_borewell.php'">
➕ Add Borewell
</button>

<button
class="qa-btn"
onclick="window.location='borewells/borewell_list.php'">
💧 Manage Borewells
</button>

<button
class="qa-btn"
onclick="window.location='stations/add_station.php'">
➕ Add Station
</button>

<button
class="qa-btn"
onclick="window.location='stations/station_list.php'">
🚉 Manage Stations
</button>
      </div>

      <!-- Row 3 -->
      <div class="row3">

        <!-- Activities -->
        <div class="card activities-card">
          <h3>Recent Activities</h3>
          <div class="activity-list">
            <?php foreach($activities as $a): ?>
            <div class="activity-item">
              <div class="activity-icon" style="background:<?= $a['color'] ?>18"><?= $a['icon'] ?></div>
              <div class="activity-body">
                <div class="activity-title"><?= $a['title'] ?></div>
                <div class="activity-sub"><?= $a['sub'] ?></div>
              </div>
              <div class="activity-time"><?= $a['time'] ?></div>
            </div>
            <?php endforeach; ?>
          </div>
          <button class="view-all">View All Activities →</button>
        </div>

        <!-- Metro Map -->
        <div class="card map-card" style="flex:1.4 1 400px;">
          <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:12px;flex-wrap:wrap;gap:8px;">
            <h3 style="margin:0;">Stations Map Overview</h3>
            <div style="display:flex;align-items:center;gap:6px;">
              <button class="map-ctrl-btn" onclick="mapZoom(0.25)" title="Zoom In">＋</button>
              <button class="map-ctrl-btn" onclick="mapZoom(-0.25)" title="Zoom Out">－</button>
              <button class="map-ctrl-btn" onclick="mapReset()" title="Reset">⟳</button>
              <button class="map-ctrl-btn" onclick="mapFullscreen()" title="Fullscreen" id="fsBtn">⛶</button>
              <span id="zoomLabel" style="font-size:11px;color:var(--muted);min-width:36px;text-align:right;">100%</span>
            </div>
          </div>

          <!-- Map viewport -->
          <div id="mapViewport" style="overflow:hidden;border-radius:10px;background:#f0f4ff;
               border:1px solid var(--border);cursor:grab;user-select:none;position:relative;height:380px;">
            <div id="mapCanvas" style="transform-origin:0 0;will-change:transform;display:inline-block;">
              <img id="metroImg"
			  src="metro map.jpg"
			  onerror="this.onerror=null;loadMapFallback()"
			  style="
			  display:block;
			  width:100%;
			  height:100%;
       object-fit:contain;
       object-position:center;     "     alt="DMRC Metro Network Map"/>
            </div>

            <!-- Zoom hint -->
            <div id="mapHint" style="position:absolute;bottom:10px;left:50%;transform:translateX(-50%);
                 background:rgba(0,0,0,0.55);color:#fff;font-size:11px;padding:4px 10px;
                 border-radius:20px;pointer-events:none;transition:opacity .4s;">
              🖱 Scroll to zoom · Drag to pan
            </div>
          </div>

          <!-- Line legend -->
          <div style="display:flex;flex-wrap:wrap;gap:6px 14px;margin-top:12px;">
            <?php
            $lines=[
              ["#EF4444","Red Line"],["#F5D000","Yellow Line"],["#3B82F6","Blue Line"],
              ["#22C55E","Green Line"],["#8B00FF","Violet Line"],["#F97316","Pink Line"],
              ["#E91E8C","Magenta Line"],["#888","Grey Line"],["#FF8C00","Orange (Airport)"],
            ];
            foreach($lines as $l): ?>
            <div style="display:flex;align-items:center;gap:5px;font-size:11px;">
              <div style="width:22px;height:4px;border-radius:2px;background:<?=$l[0]?>"></div>
              <span style="color:var(--muted)"><?=$l[1]?></span>
            </div>
            <?php endforeach; ?>
          </div>
        </div>

      </div><!-- /row3 -->
    </div><!-- /page -->
  </main>
</div>

<script>
// ── Dark Mode ──────────────────────────────────────────────────────────────
function toggleDark() {

    document.body.classList.toggle('dark');

    const dark =
        document.body.classList.contains('dark');

    document.getElementById('darkBtn').innerHTML =
        dark
        ? '☀️ Light Mode'
        : '🌙 Dark Mode';

    localStorage.setItem(
        'darkMode',
        dark
    );
}

window.onload = function(){

    if(localStorage.getItem('darkMode') === 'true'){

        document.body.classList.add('dark');

        document.getElementById('darkBtn').innerHTML =
            '☀️ Light Mode';
    }
};

// ── Nav ────────────────────────────────────────────────────────────────────
function setNav(el, label) {
  document.querySelectorAll('.nav-btn').forEach(b => b.classList.remove('active'));
  el.classList.add('active');
}

// ── Profile Dropdown ───────────────────────────────────────────────────────
function toggleProfile() {
    const dropdown = document.getElementById("profileDropdown");
    const arrow = document.getElementById("profileArrow");

    dropdown.classList.toggle("open");
    arrow.classList.toggle("open");
}

window.addEventListener("click", function(e) {

    if (!e.target.closest(".profile-wrap")) {

        document
            .getElementById("profileDropdown")
            .classList.remove("open");

        document
            .getElementById("profileArrow")
            .classList.remove("open");
    }
});

// ══════════════════════════════════════════════════════
//  AREA CHART  –  animated + interactive hover tooltip
// ══════════════════════════════════════════════════════



// ══════════════════════════════════════════════════════
//  METRO MAP  –  zoom, pan, scroll, fullscreen
// ══════════════════════════════════════════════════════
(function(){
  let scale=1, tx=0, ty=0;
  let dragging=false, startX=0, startY=0, startTx=0, startTy=0;
  const MIN=0.3, MAX=5;

  const vp  = document.getElementById('mapViewport');
  const cvs = document.getElementById('mapCanvas');
  const lbl = document.getElementById('zoomLabel');
  const hint= document.getElementById('mapHint');

  // Fallback: if PDF can't be shown as img, use an iframe
  window.loadMapFallback = function(){
    const img = document.getElementById('metroImg');
    const frame = document.createElement('iframe');
    frame.src = 'DMRC-Network-Map-Hindi-English-VA-23032026.00317293_page-0001.jpg';
    frame.style.cssText = 'width:900px;height:600px;border:none;display:block;';
    frame.title = 'DMRC Metro Network Map';
    img.replaceWith(frame);
  };

  function applyTransform(){
    cvs.style.transform = `translate(${tx}px,${ty}px) scale(${scale})`;
    lbl.textContent = Math.round(scale*100)+'%';
  }

  function clampPan(){
    // keep map from going completely out of view
    const vpW=vp.offsetWidth, vpH=vp.offsetHeight;
    const imgW=(cvs.offsetWidth||900)*scale, imgH=(cvs.offsetHeight||600)*scale;
    const minTx=Math.min(0, vpW-imgW), minTy=Math.min(0, vpH-imgH);
    tx=Math.max(minTx, Math.min(0, tx));
    ty=Math.max(minTy, Math.min(0, ty));
  }

  // Scroll wheel zoom centred on cursor
  vp.addEventListener('wheel', e=>{
    e.preventDefault();
    const rect=vp.getBoundingClientRect();
    const mx=e.clientX-rect.left, my=e.clientY-rect.top;
    const delta=e.deltaY<0?0.12:-0.12;
    const newScale=Math.min(MAX,Math.max(MIN,scale+delta));
    const ratio=newScale/scale;
    tx=mx-(mx-tx)*ratio;
    ty=my-(my-ty)*ratio;
    scale=newScale;
    clampPan();
    applyTransform();
    // hide hint after first interaction
    hint.style.opacity='0';
  },{passive:false});

  // Drag to pan
  vp.addEventListener('mousedown',e=>{
    if(e.button!==0) return;
    dragging=true; startX=e.clientX; startY=e.clientY; startTx=tx; startTy=ty;
    vp.style.cursor='grabbing';
  });
  window.addEventListener('mousemove',e=>{
    if(!dragging) return;
    tx=startTx+(e.clientX-startX); ty=startTy+(e.clientY-startY);
    clampPan(); applyTransform();
  });
  window.addEventListener('mouseup',()=>{ dragging=false; vp.style.cursor='grab'; });

  // Touch pan & pinch zoom
  let lastDist=0, lastTouchTx=0, lastTouchTy=0;
  vp.addEventListener('touchstart',e=>{
    if(e.touches.length===1){
      startX=e.touches[0].clientX; startY=e.touches[0].clientY;
      lastTouchTx=tx; lastTouchTy=ty;
    } else if(e.touches.length===2){
      lastDist=Math.hypot(e.touches[0].clientX-e.touches[1].clientX,
                          e.touches[0].clientY-e.touches[1].clientY);
    }
    e.preventDefault();
  },{passive:false});
  vp.addEventListener('touchmove',e=>{
    if(e.touches.length===1){
      tx=lastTouchTx+(e.touches[0].clientX-startX);
      ty=lastTouchTy+(e.touches[0].clientY-startY);
      clampPan(); applyTransform();
    } else if(e.touches.length===2){
      const dist=Math.hypot(e.touches[0].clientX-e.touches[1].clientX,
                            e.touches[0].clientY-e.touches[1].clientY);
      const ratio=dist/lastDist;
      scale=Math.min(MAX,Math.max(MIN,scale*ratio));
      lastDist=dist; clampPan(); applyTransform();
    }
    e.preventDefault();
  },{passive:false});

  // Button controls
  window.mapZoom=function(delta){
    const vpW=vp.offsetWidth, vpH=vp.offsetHeight;
    const newScale=Math.min(MAX,Math.max(MIN,scale+delta));
    const ratio=newScale/scale;
    tx=(vpW/2)-(vpW/2-tx)*ratio;
    ty=(vpH/2)-(vpH/2-ty)*ratio;
    scale=newScale; clampPan(); applyTransform();
  };
  window.mapReset=function(){
    scale=1; tx=0; ty=0; applyTransform();
  };
  window.mapFullscreen=function(){
    const btn=document.getElementById('fsBtn');
    if(!vp.classList.contains('fs-mode')){
      vp.classList.add('fs-mode');
      btn.textContent='✕';
      btn.title='Exit Fullscreen';
      // re-set height for fullscreen
      vp.style.height='100vh';
    } else {
      vp.classList.remove('fs-mode');
      btn.textContent='⛶';
      btn.title='Fullscreen';
      vp.style.height='380px';
    }
  };

  // Keyboard shortcuts when map is focused
  vp.setAttribute('tabindex','0');
  vp.addEventListener('keydown',e=>{
    const step=40;
    if(e.key==='+') mapZoom(0.25);
    if(e.key==='-') mapZoom(-0.25);
    if(e.key==='0') mapReset();
    if(e.key==='ArrowLeft')  { tx+=step; clampPan(); applyTransform(); }
    if(e.key==='ArrowRight') { tx-=step; clampPan(); applyTransform(); }
    if(e.key==='ArrowUp')    { ty+=step; clampPan(); applyTransform(); }
    if(e.key==='ArrowDown')  { ty-=step; clampPan(); applyTransform(); }
  });

  // Hide hint after 4s
  setTimeout(()=>{ hint.style.opacity='0'; }, 4000);

  applyTransform();
})();

function updateClock(){
  const now=new Date();
  const opts={day:'2-digit',month:'long',year:'numeric',weekday:'long'};
  const el=document.querySelector('.date-chip');
  if(el) el.textContent='📅 '+now.toLocaleDateString('en-IN',opts);
}
setInterval(updateClock,60000);

// ── Init ────────────────────────────────────────────────
window.addEventListener('load',()=>{
 
  updateClock();
});
window.addEventListener('resize',()=>{
  drawAreaFrame(document.getElementById('borewellChart').offsetWidth||560, 200, areaProgress, hoverIdx);
});





</script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>

const stationLabels = <?= json_encode($stationNames) ?>;
const stationData   = <?= json_encode($stationCounts) ?>;

new Chart(
    document.getElementById('stationChart'),
    {
        type: 'bar',
        data: {
            labels: stationLabels,
            datasets: [{
                label: 'Borewells',
                data: stationData
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false
        }
    }
);

new Chart(
    document.getElementById('statusChart'),
    {
        type: 'doughnut',
        data: {
            labels: ['Available','Unavailable'],
            datasets: [{
                data: [<?= $availableBorewells ?>, <?= $unavailableBorewells ?>]
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false
        }
    }
);

</script>
</body>
</html>
