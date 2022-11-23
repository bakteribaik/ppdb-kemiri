<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../assets/css/admindashboard-style/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <title>Admin Dashboard | PPDB SMP Negri 1 Kemiri</title>
</head>
<body>
    <div class="sidebar">
        <div class="sidebar-header">
            <img src="../../assets/images/kemiri_logo.png" alt="kemiri-logo" height="45">
        </div>
        <div class="sidebar-items-container">
            <a href="">
                <div class="items">
                    <span class="material-symbols-outlined" style="font-size:25pt;">home</span>
                </div>
            </a>
            <a href="">
                <div class="items active">
                    <span class="material-symbols-outlined" style="font-size:25pt;">folder_open</span>
                </div>
            </a>
            <a href="">
                <div class="items logout">
                    <span class="material-symbols-outlined" style="font-size:25pt;">power_settings_new</span>
                </div>
            </a>
        </div>
    </div>
    <div class="content-container">
        <div class="content-left">
            <div class="welcome-card">
                <div class="welcome-title">Selamat Datang, Petugas Zul</div>
                <div class="welcome-subtitle">Selamat bertugas, silahkan lihat data pendaftar di bawah ini</div>
            </div>
            <div class="total-container">
                <div class="total-card">
                    <div class="avatar">
                        <span class="material-symbols-outlined">account_circle</span>
                    </div>
                    <div class="total-header">
                        <div class="total-title">200</div>
                        <div class="total-subtitle">Total Pendaftar Calon Siswa</div>
                    </div>
                </div>
                <div class="total-card">
                    <div class="avatar">
                        <span class="material-symbols-outlined">account_circle</span>
                    </div>
                    <div class="total-header">
                        <div class="total-title">200</div>
                        <div class="total-subtitle">Data yang belum divalidasi</div>
                    </div>
                </div>
                <div class="total-card">
                    <div class="avatar">
                        <span class="material-symbols-outlined">account_circle</span>
                    </div>
                    <div class="total-header">
                        <div class="total-title">200</div>
                        <div class="total-subtitle">Data yang sudah tervalidasi</div>
                    </div>
                </div>
            </div>
            <div class="list-container">
                <div class="list-header-container">
                    <div class="list-title">Daftar pendaftar peserta didik baru</div>
                    <div class="tool-container">
                        <input type="text" name="" id="" placeholder="Cari data peserta">
                        <button class="search-btn">Cari</button>
                    </div>
                </div>
                <div class="tabel-container">
                    <table border="0">
                        <tr>
                            <td>No</td>
                            <td>Tanggal daftar</td>
                            <td>NIK</td>
                            <td>Nama siswa</td>
                            <td>Status validasi</td>
                            <td>Keterangan</td>
                            <td>Pengaturan</td>
                        </tr>
                        <?php for($i=1; $i<=15; $i++) : ?>
                            <?php if($i % 2) { ?>
                                <tr style="background-color: #957ac5;">
                            <?php } else { ?>
                                <tr style="background-color: #341a61;">
                            <?php } ?>
                                <td><?= $i ?></td>
                                <td>23/11/2022</td>
                                <td>36740XXXXX0005</td>
                                <td>Zulfikar Alwi</td>
                                <?php if($i % 2) { ?>
                                    <td><div class="valid">🟢 valid</div></td>
                                <?php } else { ?>
                                    <td><div class="valid no">🔴 tidak valid</div></td>
                                <?php } ?>
                                <td>-</td>
                                <td style="display:flex; justify-content: space-around;">
                                    <a href=""><span class="material-symbols-outlined">draw</span></a>
                                    <a href=""><span class="material-symbols-outlined">print</span></a>
                                </td>
                            </tr>
                        <?php endfor; ?>
                    </table>
                </div>
            </div>
        </div>
        <div class="content-right">
            <div class="right-header">
                <div class="right-title">Profile Kamu</div>
                <div class="setting-btn"><span class="material-symbols-outlined">settings</span></div>
            </div>
            <div class="profile-pict-container">
                <div class="profile-pict" style="background-image: url(https://ngonoo.com/engine/wp-content/uploads/2015/02/shutterstock_179216297.jpg);"></div>
            </div>
            <div class="username-container">
                <div class="user-name">Zulfikar Alwi</div>
            </div>
            <div class="edit-profile-btn">
                <button>Edit Profile Kamu</button>
            </div>
            <div class="detail-container">
                Nomor Induk Guru Nasional
                <div class="detail">
                    <span class="material-symbols-outlined">number</span>
                    <div class="detail-title">181011450389</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>