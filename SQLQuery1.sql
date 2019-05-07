QUERY SEMUA TABEL.txt
Last week
Apr 15

Erdi FajarF uploaded an item
Text
QUERY SEMUA TABEL.txt
USE [i16019]
GO

/****** Object:  Table [dbo].[Dokter]    Script Date: 15/04/2019 14:24:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dokter](
	[IdDokter] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[NamaDokter] [varchar](50) NOT NULL,
	[Alamat] [varchar](50) NOT NULL,
	[NoTelp] [int] NOT NULL,
 CONSTRAINT [PK-idDokter] PRIMARY KEY CLUSTERED 
(
	[IdDokter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [i16019]
GO

/****** Object:  Table [dbo].[gejala]    Script Date: 15/04/2019 14:25:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gejala](
	[IdGejala] [int] NOT NULL,
	[NamaGejala] [varchar](50) NOT NULL,
	[IdPenyakit] [int] NOT NULL,
	[IdPemeriksaan] [int] NOT NULL,
 CONSTRAINT [PK-idGejala] PRIMARY KEY CLUSTERED 
(
	[IdGejala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[gejala]  WITH CHECK ADD  CONSTRAINT [FK_gejala_penyakit] FOREIGN KEY([IdPenyakit])
REFERENCES [dbo].[penyakit] ([IdPenyakit])
GO

ALTER TABLE [dbo].[gejala] CHECK CONSTRAINT [FK_gejala_penyakit]
GO

USE [i16019]
GO

/****** Object:  Table [dbo].[pasien]    Script Date: 15/04/2019 14:25:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[pasien](
	[IdPasien] [int] NOT NULL,
	[NamaPasien] [varchar](50) NOT NULL,
	[Alamat] [varchar](50) NOT NULL,
	[TanggalLahir] [date] NOT NULL,
	[NoTelp] [int] NOT NULL,
 CONSTRAINT [PK-idPasien] PRIMARY KEY CLUSTERED 
(
	[IdPasien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[pasien]  WITH CHECK ADD  CONSTRAINT [FK_pasien_pasien] FOREIGN KEY([IdPasien])
REFERENCES [dbo].[pasien] ([IdPasien])
GO

ALTER TABLE [dbo].[pasien] CHECK CONSTRAINT [FK_pasien_pasien]
GO


USE [i16019]
GO

/****** Object:  Table [dbo].[pemeriksaan]    Script Date: 15/04/2019 14:25:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[pemeriksaan](
	[IdPemeriksaan] [int] NOT NULL,
	[IdDokter] [int] NOT NULL,
	[Waktu] [date] NOT NULL,
	[IdPasien] [int] NOT NULL,
	[IdGejala] [int] NOT NULL,
 CONSTRAINT [PK-idPemeriksaan] PRIMARY KEY CLUSTERED 
(
	[IdPemeriksaan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[pemeriksaan]  WITH CHECK ADD  CONSTRAINT [FK_pemeriksaan_gejala] FOREIGN KEY([IdGejala])
REFERENCES [dbo].[gejala] ([IdGejala])
GO

ALTER TABLE [dbo].[pemeriksaan] CHECK CONSTRAINT [FK_pemeriksaan_gejala]
GO

ALTER TABLE [dbo].[pemeriksaan]  WITH CHECK ADD  CONSTRAINT [FK_pemeriksaan_pasien] FOREIGN KEY([IdPasien])
REFERENCES [dbo].[pasien] ([IdPasien])
GO

ALTER TABLE [dbo].[pemeriksaan] CHECK CONSTRAINT [FK_pemeriksaan_pasien]
GO

USE [i16019]
GO

/****** Object:  Table [dbo].[penyakit]    Script Date: 15/04/2019 14:25:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[penyakit](
	[IdPenyakit] [int] NOT NULL,
	[NamaPenyakit] [varchar](50) NOT NULL,
 CONSTRAINT [PK-idPenyakit] PRIMARY KEY CLUSTERED 
(
	[IdPenyakit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [i16019]
GO

/****** Object:  Table [dbo].[tercatat]    Script Date: 15/04/2019 14:26:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tercatat](
	[IdTercatat] [int] NOT NULL,
	[IdGejala] [int] NOT NULL,
	[IdPemeriksaan] [int] NOT NULL,
 CONSTRAINT [PK-idTercatat] PRIMARY KEY CLUSTERED 
(
	[IdTercatat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tercatat]  WITH CHECK ADD  CONSTRAINT [FK_tercatat_gejala] FOREIGN KEY([IdGejala])
REFERENCES [dbo].[gejala] ([IdGejala])
GO

ALTER TABLE [dbo].[tercatat] CHECK CONSTRAINT [FK_tercatat_gejala]
GO

ALTER TABLE [dbo].[tercatat]  WITH CHECK ADD  CONSTRAINT [FK_tercatat_pemeriksaan] FOREIGN KEY([IdPemeriksaan])
REFERENCES [dbo].[pemeriksaan] ([IdPemeriksaan])
GO

ALTER TABLE [dbo].[tercatat] CHECK CONSTRAINT [FK_tercatat_pemeriksaan]
GO

USE [i16019]
GO

/****** Object:  Table [dbo].[terdiridari]    Script Date: 15/04/2019 14:26:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[terdiridari](
	[IdTerdiriDari] [int] NOT NULL,
	[IdGejala] [int] NOT NULL,
	[IdPenyakit] [int] NOT NULL,
 CONSTRAINT [PK-idTerdiriDari] PRIMARY KEY CLUSTERED 
(
	[IdTerdiriDari] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[terdiridari]  WITH CHECK ADD  CONSTRAINT [FK_terdiridari_gejala] FOREIGN KEY([IdGejala])
REFERENCES [dbo].[gejala] ([IdGejala])
GO

ALTER TABLE [dbo].[terdiridari] CHECK CONSTRAINT [FK_terdiridari_gejala]
GO

ALTER TABLE [dbo].[terdiridari]  WITH CHECK ADD  CONSTRAINT [FK_terdiridari_penyakit] FOREIGN KEY([IdPenyakit])
REFERENCES [dbo].[penyakit] ([IdPenyakit])
GO

ALTER TABLE [dbo].[terdiridari] CHECK CONSTRAINT [FK_terdiridari_penyakit]
GO



