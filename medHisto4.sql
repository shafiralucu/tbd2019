CREATE DEFINER=`root`@`localhost` PROCEDURE `medHisto4`()
BEGIN
CREATE TEMPORARY TABLE tblHisto4(
	namaGejala varchar(50),
	jumlahGejala int
);
INSERT INTO tblHisto4

select namaGejala , count(gejala.idGejala) as 'jumlah gejala'
from tercatat join gejala on tercatat.idGejala =Gejala.idGejala
group by namagejala ,gejala.idGejala;

select *
from tblHisto4;


call medHisto4;
END