<?php
include("koneksi.php");
$query= "SELECT * FROM pasien";

	if(isSet($_GET['simpan']))
	{
		$nama    = $_GET['nama'];
		
		$alamat  = $_GET['alamat'];
		
		$tl     = $_GET['tl'];

		$notelp = $_GET['notelp'];

		if (isSet($nama) && $nama != "" && isSet($alamat) && $alamat != "" && isSet($tl) && $tl != "" && isSet($notelp) && $notelp != "") {
			$query = "INSERT INTO pasien(namaPasien,alamat,tanggalLahir,noTelp) VALUES ('$nama','$alamat','$tl','$notelp')";
			$res = $conn->query($query);
			//$run=sqlsrv_connect($query,$connectionInfo);
			$query = "SELECT * FROM pasien";
			echo "<script>alert('data berhasil disimpan');
			document.location.href='loginDokter.php'</script>\n";
		} else {
			echo "<script>alert('data gagal disimpan');
			document.location.href='loginDokter.php'</script>\n";
		}
	}
?>