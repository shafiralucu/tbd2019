DELIMITER //
CREATE PROCEDURE tandaBahayaUmum (gejalaInput varchar(100))
	BEGIN
	    -- tabel untuk menampung gejala yang dipilih dr choice box --
		CREATE TEMPORARY TABLE  tblGejala
		(gejala VARCHAR(50));
		
        -- insert gejala dr choice box ke temp table gejalaInput --
        INSERT INTO tblGejala VALUES (gejalaInput)
        
        -- join tblGejala dengan tabel Gejala, terdiriDari(relasi gejala dgn penyakit), Penyakit
        SELECT namaPenyakit
        FROM tblGejala INNER JOIN gejala ON tblGejala.gejala = gejala.namaGejala INNER JOIN terdiridari ON gejala.idGejala = terdiridari.idGejala INNER JOIN penyakit ON terdiridari.idPenyakit = penyakit.idPenyakit
        
        -- select from tblGejala --
        
	END //
DELIMITER ;
			