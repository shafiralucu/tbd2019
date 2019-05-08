<?php
session_start();
include("koneksi.php");


$query= "SELECT * FROM pasien";

//tanggal
date_default_timezone_set("Asia/Bangkok");
$my_date = date("Y-m-d H:i:s");
$emailDokter = $_SESSION['email'];

	if(isSet($_GET['simpan']))
	{
		

		$nama    = $_GET['nama'];
		$alamat  = $_GET['alamat'];
		$tl     = $_GET['tl'];
		$notelp = $_GET['notelp'];


	 	if ( isSet($nama) && $nama != "" && isSet($alamat) && $alamat != "" && isSet($tl) && $tl != "" && isSet($notelp) && $notelp != "" ) {
			
	 		$query = "INSERT INTO pasien(namaPasien,alamat,tanggalLahir,noTelp) VALUES ('$nama','$alamat','$tl','$notelp')";
	 		$res = $conn->query($query);

	 		//memasukkan data ke tabel pemeriksaan (idPemeriksaan, idDokter, waktu, idPasien, idGejala (harusnya gakusah))
	 		//query untuk get idPasien
	 		$queryGet = "SELECT idPasien FROM pasien WHERE namaPasien = '$nama'";
			$res2 = $conn->query($queryGet);
			$row = mysqli_fetch_row($res2); 
			$resIdPasien = $row[0]; 


            $queryGet2 = "SELECT idDokter FROM dokter WHERE email = '$emailDokter'";
			$res3 = $conn->query($queryGet2);
			$row1 = mysqli_fetch_row($res3); 
			$resIdDokter = $row1[0];

			  
			  $q = "INSERT INTO pemeriksaan (idDokter, waktu, idPasien) VALUES ('$resIdDokter', '$my_date' , '$resIdPasien')";
			  
			  $resFinal = $conn->query($q); 
			  header('Location: tandaBahayaUmum.php');

				
			}
			
	}			
			
?>