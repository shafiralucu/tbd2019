<!DOCTYPE html>
<html>

<head>
    <title>Isi Data Pasien - Diagnosis Sederhana</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

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
            <li class="nav-item" style="margin-left: 1450px;">
                <a class="nav-link" href="#">Logout</a>
            </li>
        </ul>
    </nav>

    <div class="w3-container"><br>
        <h2>
            Welcome, Dr. Firzan! (firzanviolant@gmail.com)
        </h2>

        <!-- isi data pasien -->
        <div class="w3-container w3-display-middle" id="boxCekDiagnosis" style="width: 30%; margin-top: 4%;">
            <center style="font-family: font2;">
                <h1>Daftar Pasien</h1>
                <hr>
                <input type="text" placeholder="Nama Pasien" name="nama" required> <br>
                <input type="text" placeholder="Alamat" name="alamat" required> <br>
                <input type="text" placeholder="No. Handphone" name="nohp" required> <br>
                <input type="text" placeholder="Umur" name="umur" required> <br>



                <button type="button" class="btn btn-primary w3-theme-d4">Daftar</button>
            </center>
        </div>

        <div class="footer">
            <p style="margin-top: 1%;"> © 2019 Diagnosis Sederhana - Tugas Akhir TBD</p>
        </div>

        <script>
        </script>
</body>

</html>