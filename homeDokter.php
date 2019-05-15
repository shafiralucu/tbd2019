<?php 
    session_start();
    // $_SESSION['email'];
    //  $_SESSION['idDokter'];

?>
<!DOCTYPE html>
<html>
    <head>
            <title>Home - Diagnosis Sederhana</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <style>
            .w3-theme-l5 {color:#000 !important; background-color:#f7fafa !important}
            .w3-theme-l4 {color:#000 !important; background-color:#e3edef !important}
            .w3-theme-l3 {color:#000 !important; background-color:#c8dadf !important}
            .w3-theme-l2 {color:#000 !important; background-color:#acc8ce !important}
            .w3-theme-l1 {color:#000 !important; background-color:#90b6be !important}
            .w3-theme-d1 {color:#fff !important; background-color:#6397a3 !important}
            .w3-theme-d2 {color:#fff !important; background-color:#568793 !important}
            .w3-theme-d3 {color:#fff !important; background-color:#4b7680 !important}
            .w3-theme-d4 {color:#fff !important; background-color:#41666e !important}
            .w3-theme-d5 {color:#fff !important; background-color:#36555c !important}

            .w3-theme-light {color:#000 !important; background-color:#f7fafa !important}
            .w3-theme-dark {color:#fff !important; background-color:#36555c !important}
            .w3-theme-action {color:#fff !important; background-color:#36555c !important}

            .w3-theme {color:#fff !important; background-color:#76a5af !important}
            .w3-text-theme {color:#76a5af !important}
            .w3-border-theme {border-color:#76a5af !important}

            .w3-hover-theme:hover {color:#fff !important; background-color:#76a5af !important}
            .w3-hover-text-theme:hover {color:#76a5af !important}
            .w3-hover-border-theme:hover {border-color:#76a5af !important}

            @font-face {
                font-family: font1;
                src: url("Asap-Medium.otf");
            }

            @font-face {
                font-family: font2;
                src: url("Asap-Regular.otf");
            }

            h1, h2 {
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
</style>


        </style>
    </head>
    <body>
            <div class="w3-container w3-theme" id = "header">
                    <img src="cardiogram-small.png" style = "float: left; margin-right: 5px; padding: 20px;">
                    <h1 style ="padding:20px;">Diagnosis Sederhana</h1>
            </div>
                  
                  <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top w3-theme-d4" id = "navbarId">
                    <a class="navbar-brand" href="homeDokter.php">Home</a>
                    <ul class="navbar-nav">
                      <li class="nav-item">
                        <a class="nav-link" href="#">List Pasien</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Edit Penyakit & Gejala</a>
                      </li>
                      <li class="nav-item" style="margin-left: 1450px;">
                            <a class="nav-link" href="loginDokter.php"><?php session_destroy();?>Logout</a>
                        </li>
                    </ul>
                  </nav>
                
                  <div class="w3-container"><br>
                    <h2>
                        Welcome, <?php echo $_SESSION['namaDokter'];  ?> ( <?php echo $_SESSION['email']; ?> )
                    </h2>
                    <div class = "w3-container w3-display-middle" id = "boxCekDiagnosis" style = "width: 30%; margin-top: 3%;">
                        <center style = "font-family: font2;">
                                <img src = "stethoscope.png">
                                <br> <br> <br>
                                <p> Plug in your symptoms on our app and we'll give you a list of possible conditions. You can then discuss your results directly with a Doctor.
                                        Start with filling your patient's personal data!</p>
                                        <form action = "input_pasien.php">
                   <button type="submit" class="btn btn-primary" name="submit">Submit</button>
        </form>
                                
                        </center> 
                    </div>
                  </div>
				  

                  <div class="footer">
                    <p style = "margin-top: 1%;">  © 2019 Diagnosis Sederhana - Tugas Akhir TBD</p>
                  </div>
                  
        <script>
        </script>
    </body>
</html>
<?php
include("koneksi.php");

$query= "SELECT * FROM pemeriksaan";

	if(isSet($_GET['submit']))
	{
		$today = date("d/m/Y");

		
			$query = "INSERT INTO pemeriksaan(idPemeriksaan,idDokter,waktu,idPasien,idGejala) VALUES('','','$today','','')";
			$res = $conn->query($query);
			
			$query = "SELECT * FROM pemeriksaan";
			echo "<script>alert('data berhasil disimpan');
		    document.location.href='tandaBahayaUmum.php'</script>\n";
		
		}
	
?>
