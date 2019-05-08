<?php
include("koneksi.php");
session_start();

$query= "SELECT * FROM pasien";

//tanggal
date_default_timezone_set("Asia/Bangkok");
$my_date = date("Y-m-d H:i:s");

echo $email;
echo $my_date;

	// if(isSet($_GET['simpan']))
	// {

	// 	$query2 = "SELECT idDokter FROM dokter WHERE email = '$email'";
	// 	$res1 = $conn->query($query2);
	// 	$resIdDokter = "";
	// 	while ($row=mysqli_fetch_row($res1))
	// 	{
	// 		$resIdDokter = $row[0];
	// 	}


	// 	$nama    = $_GET['nama'];
	// 	$alamat  = $_GET['alamat'];
	// 	$tl     = $_GET['tl'];
	// 	$notelp = $_GET['notelp'];

	// 	if ( isSet($nama) && $nama != "" && isSet($alamat) && $alamat != "" && isSet($tl) && $tl != "" && isSet($notelp) && $notelp != "" ) {
			
	// 		$query = "INSERT INTO pasien(namaPasien,alamat,tanggalLahir,noTelp) VALUES ('$nama','$alamat','$tl','$notelp')";
	// 		$res = $conn->query($query);

	// 		//memasukkan data ke tabel pemeriksaan (idPemeriksaan, idDokter, waktu, idPasien, idGejala (harusnya gakusah))
	// 		//query untuk get idPasien
	// 		$queryGet = "SELECT idPasien FROM pasien";
    //         $res2 = $conn->query($queryGet);
    //         $resIdPasien="";
    //           while ($row=mysqli_fetch_row($res2))
    //           {
    //               $resIdPasien = $row[0];
    //           }

    //         // $queryGet2 = "SELECT idDokter FROM dokter WHERE nama = '$nama'";
    //         // $resultIdPelanggan = $db->executeNonSelectedQuery($queryGet2);
    //         // $res2="";
    //         // while ($row=mysqli_fetch_row($resultIdPelanggan))
    //         // {
    //         //     $res2 = $row[0];
    //         // }

    //         $q = "INSERT INTO pemeriksaan (idDokter, waktu, idPasien) VALUES ('$resIdDokter', '$my_date' , '$resIdPasien')";
    //         $resFinal = $conn->query($q);






	// 		$query = "SELECT * FROM pasien";
	// 		echo "<script>alert('Patient details added to database!');
	// 		document.location.href='tandaBahayaUmum.php'</script>\n";
	// 	} else {
	// 		echo "<script>alert('Failed to insert to database');
	// 		document.location.href='input_pasien.php'</script>\n";
	// 	}
	// }
?>