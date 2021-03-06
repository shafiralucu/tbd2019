<?php
session_start();
include("koneksi.php");
// $listTandaBahayaUmum = "";
// $idDokter = $_SESSION['idDokter'];
// $idPemeriksaan = $_SESSION['idPemeriksaan'];
// $hasilPenyakit3 = "";
// if (isset($_POST['selanjutnya'])) {
//     $choices = $_POST['check_list'];
//             if (sizeof ($choices) > 0 ) {
//                 for ($i=0; $i<sizeof ($choices);$i++) { 
//                     $listTandaBahayaUmum = $choices[$i];
//                     $query = "CALL anemia ('$listTandaBahayaUmum', '$idPemeriksaan')";
//                     $res = $conn->query($query);
//                     $row = mysqli_fetch_row($res);
//                     $hasilPenyakit3 = $row[0];
//                 }
//             $_SESSION['hasilPenyakit3'] = $hasilPenyakit3;
//             } 
//             header ("Location: hasilPemeriksaan.php");
// } ?>
<!DOCTYPE html>
<html>

<head>
    <title>Hasil Pemeriksaan - Diagnosis Sederhana</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <style>
        .w3-theme-l5 {
            color: #000 !important;
            background-color: #f7fafa !important
        }

        .w3-theme-l4 {
            color: #000 !important;
            background-color: #e3edef !important
        }

        .w3-theme-l3 {
            color: #000 !important;
            background-color: #c8dadf !important
        }

        .w3-theme-l2 {
            color: #000 !important;
            background-color: #acc8ce !important
        }

        .w3-theme-l1 {
            color: #000 !important;
            background-color: #90b6be !important
        }

        .w3-theme-d1 {
            color: #fff !important;
            background-color: #6397a3 !important
        }

        .w3-theme-d2 {
            color: #fff !important;
            background-color: #568793 !important
        }

        .w3-theme-d3 {
            color: #fff !important;
            background-color: #4b7680 !important
        }

        .w3-theme-d4 {
            color: #fff !important;
            background-color: #41666e !important
        }

        .w3-theme-d5 {
            color: #fff !important;
            background-color: #36555c !important
        }

        .w3-theme-light {
            color: #000 !important;
            background-color: #f7fafa !important
        }

        .w3-theme-dark {
            color: #fff !important;
            background-color: #36555c !important
        }

        .w3-theme-action {
            color: #fff !important;
            background-color: #36555c !important
        }

        .w3-theme {
            color: #fff !important;
            background-color: #76a5af !important
        }

        .w3-text-theme {
            color: #76a5af !important
        }

        .w3-border-theme {
            border-color: #76a5af !important
        }

        .w3-hover-theme:hover {
            color: #fff !important;
            background-color: #76a5af !important
        }

        .w3-hover-text-theme:hover {
            color: #76a5af !important
        }

        .w3-hover-border-theme:hover {
            border-color: #76a5af !important
        }

        @font-face {
            font-family: font1;
            src: url("Asap-Medium.otf");
        }

        @font-face {
            font-family: font2;
            src: url("Asap-Regular.otf");
        }

        h1,
        h2 {
            font-family: font1;

        }

        body {
            background-color: #e3edef;
        }


        #boxCekDiagnosis {
            /* font-family: font1; */
            background-color: #76a5af;
            padding-bottom: 30px;
            padding-top: 30px;
            padding-left: 30px;
            padding-bottom: 30px;
            border-radius: 20px;
        }

        #navbarId {
            font-family: font2;
            font-size: 18px;
        }

        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: #41666e;
            color: white;
            text-align: center;
            font-family: font2;
        }

        /* Full-width input fields */
        input[type=text],
        input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        /* Add a background color when the inputs get focus */
        input[type=text]:focus,
        input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        /* The container */
        .container {
            display: block;
            position: relative;
            padding-left: 35px;
            margin-bottom: 12px;
            cursor: pointer;
            font-size: 22px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        /* Hide the browser's default radio button */
        .container input {
            position: absolute;
            opacity: 0;
            cursor: pointer;
        }

        /* Create a custom radio button */
        .checkmark {
            position: absolute;
            top: 0;
            left: 0;
            height: 25px;
            width: 25px;
            background-color: #eee;
            border-radius: 50%;
        }

        /* On mouse-over, add a grey background color */
        .container:hover input~.checkmark {
            background-color: #ccc;
        }

        /* When the radio button is checked, add a blue background */
        .container input:checked~.checkmark {
            background-color: #2196F3;
        }

        /* Create the indicator (the dot/circle - hidden when not checked) */
        .checkmark:after {
            content: "";
            position: absolute;
            display: none;
        }

        /* Show the indicator (dot/circle) when checked */
        .container input:checked~.checkmark:after {
            display: block;
        }

        /* Style the indicator (dot/circle) */
        .container .checkmark:after {
            top: 9px;
            left: 9px;
            width: 8px;
            height: 8px;
            border-radius: 50%;
            background: white;
        }
    </style>


    </style>
</head>

<body>
    <div class="w3-container w3-theme" id="header">
        <img src="cardiogram-small.png" style="float: left; margin-right: 5px; padding: 20px;">
        <h1 style="padding:20px;">Diagnosis Sederhana</h1>
    </div>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top w3-theme-d4" id="navbarId">
        <a class="navbar-brand" href="#">Home</a>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="#">List Pasien</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Edit Penyakit & Gejala</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="medHistory.php">Medical History</a>
            </li>
            <li class="nav-item" style="margin-left: 1450px;">
                <a class="nav-link" href="logout.php">Logout</a>
            </li>
        </ul>
    </nav>

    <div class="w3-container"><br>
        <h2>
        Welcome, Dr. <?php echo $_SESSION['namaDokter']; ?> (<?php echo $_SESSION['email']; ?>)
        </h2>

        <!-- isi data pasien -->
        <div class="w3-container w3-display-middle" id="boxCekDiagnosis" style=";width: 30%; margin-top: 5%; padding-bottom:2%;">
            <center> <h1>Hasil Pemeriksaan Pasien </h1> </center>
             <pre style = "font-family: font1; font-size: 15px;">   
            Nama:   <?php echo $_SESSION['namaPasien']; ?> <br>
            Alamat: <?php echo $_SESSION['alamat']; ?> <br>
            TTL:    <?php echo $_SESSION['tl']; ?> <br>
            No.Hp:  <?php echo $_SESSION['notelp']; ?> <br>
            
            Penyakit: <br>
            1.  <?php echo $_SESSION['hasilPenyakit']; ?> <br>
            2.  <?php echo $_SESSION['hasilPenyakit2']; ?> <br>
            3.  <?php echo $_SESSION['hasilPenyakit3']; ?> <br>
            4.  <?php echo $_SESSION['hasilPenyakit4']; ?>
            </pre>

            <center> <button type="submit" name="selanjutnya" onclick="window.location.href='homeDokter.php'" class="btn btn-primary w3-theme-d4 w3-medium">Kembali Ke Home</button> </center>
        </div>

        </div>

        <div class="footer">
            <p style="margin-top: 1%;"> © 2019 Diagnosis Sederhana - Tugas Akhir TBD</p>
        </div>

</body>

</html>