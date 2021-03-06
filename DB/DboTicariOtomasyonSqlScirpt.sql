USE [master]
GO
/****** Object:  Database [DboTicariOtomasyon]    Script Date: 31.08.2019 00:49:25 ******/
CREATE DATABASE [DboTicariOtomasyon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DboRestorantOtomasyon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL_2014\MSSQL\DATA\DboRestorantOtomasyon.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DboRestorantOtomasyon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL_2014\MSSQL\DATA\DboRestorantOtomasyon_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DboTicariOtomasyon] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DboTicariOtomasyon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DboTicariOtomasyon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET ARITHABORT OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DboTicariOtomasyon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DboTicariOtomasyon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DboTicariOtomasyon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DboTicariOtomasyon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DboTicariOtomasyon] SET  MULTI_USER 
GO
ALTER DATABASE [DboTicariOtomasyon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DboTicariOtomasyon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DboTicariOtomasyon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DboTicariOtomasyon] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DboTicariOtomasyon] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DboTicariOtomasyon]
GO
/****** Object:  Table [dbo].[TBL_ADMIN]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_ADMIN](
	[KullaniciAd] [varchar](20) NULL,
	[KullaniciSifre] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_BANKALAR]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_BANKALAR](
	[BankaID] [smallint] IDENTITY(1,1) NOT NULL,
	[BankaAd] [varchar](40) NULL,
	[BankaSube] [varchar](30) NULL,
	[BankaIBAN] [varchar](40) NULL,
	[BankaHesapNo] [varchar](30) NULL,
	[BankaYetkili] [varchar](30) NULL,
	[BankaTarih] [varchar](20) NULL,
	[BankaHesapTuru] [varchar](20) NULL,
	[FirmaID] [smallint] NULL,
	[BankaIl] [varchar](20) NULL,
	[BankaIlce] [varchar](30) NULL,
	[BankaTelefon] [varchar](15) NULL,
 CONSTRAINT [PK_TBL_BANKALAR] PRIMARY KEY CLUSTERED 
(
	[BankaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_FATURABILGI]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_FATURABILGI](
	[FaturaID] [int] IDENTITY(1,1) NOT NULL,
	[FaturaSeri] [char](10) NULL,
	[FaturaSiraNo] [varchar](10) NULL,
	[FaturaTarih] [varchar](10) NULL,
	[FaturaSaat] [varchar](50) NULL,
	[FaturaVergiDairesi] [varchar](40) NULL,
	[FaturaAlici] [varchar](30) NULL,
	[FaturaTeslimEden] [varchar](30) NULL,
	[FaturaTeslimAlan] [varchar](30) NULL,
 CONSTRAINT [PK_TBL_FATURABILGI] PRIMARY KEY CLUSTERED 
(
	[FaturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_FATURADETAY]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_FATURADETAY](
	[FaturaUrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAd] [varchar](20) NULL,
	[Miktar] [smallint] NULL,
	[Fiyat] [decimal](18, 2) NULL,
	[Tutar] [decimal](18, 2) NULL,
	[FaturaID] [int] NULL,
 CONSTRAINT [PK_TBL_FATURADETAY] PRIMARY KEY CLUSTERED 
(
	[FaturaUrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_FIRMAHAREKETLER]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_FIRMAHAREKETLER](
	[HareketID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[Adet] [tinyint] NULL,
	[PersonelID] [tinyint] NULL,
	[FirmaID] [smallint] NULL,
	[Fiyat] [decimal](18, 2) NULL,
	[Toplam] [decimal](18, 2) NULL,
	[FaturaID] [int] NULL,
	[Tarih] [varchar](10) NULL,
	[Notlar] [varchar](250) NULL,
 CONSTRAINT [PK_TBL_HAREKETLER] PRIMARY KEY CLUSTERED 
(
	[HareketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_FIRMALAR]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_FIRMALAR](
	[FirmaID] [smallint] IDENTITY(1,1) NOT NULL,
	[FirmaAd] [varchar](30) NULL,
	[FirmaYetkiliGorev] [varchar](30) NULL,
	[FirmaYetkiliAdSoyad] [varchar](50) NULL,
	[FirmaYetkiliTC] [char](11) NULL,
	[FirmaSektor] [varchar](20) NULL,
	[FirmaTelefon1] [varchar](15) NULL,
	[FirmaTelefon2] [varchar](15) NULL,
	[FirmaTelefon3] [varchar](15) NULL,
	[FirmaMail] [varchar](40) NULL,
	[FirmaFax] [varchar](15) NULL,
	[FirmaSehir] [varchar](20) NULL,
	[FirmaIlce] [varchar](30) NULL,
	[FirmaAdres] [varchar](100) NULL,
	[FirmaVergiDairesi] [varchar](30) NULL,
	[FirmaOzelKod] [varchar](10) NULL,
	[FirmaOzelKod2] [varchar](10) NULL,
	[FirmaOzelKod3] [varchar](10) NULL,
 CONSTRAINT [PK_TBL_FIRMALAR] PRIMARY KEY CLUSTERED 
(
	[FirmaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_GIDERLER]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_GIDERLER](
	[GiderID] [int] IDENTITY(1,1) NOT NULL,
	[GiderAy] [varchar](7) NULL,
	[GiderYil] [char](4) NULL,
	[GiderElektrik] [decimal](18, 2) NULL,
	[GiderSu] [decimal](18, 2) NULL,
	[GiderDogalgaz] [decimal](18, 2) NULL,
	[GiderInternet] [decimal](18, 2) NULL,
	[GiderMaaslar] [decimal](18, 2) NULL,
	[GiderEkstra] [decimal](18, 2) NULL,
	[GiderNotlar] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_ILCELER]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_ILCELER](
	[ID] [int] NOT NULL,
	[ILCE] [varchar](30) NULL,
	[SEHIR] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ilceler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_ILLER]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_ILLER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SEHIR] [varchar](20) NULL,
 CONSTRAINT [PK_iller] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_KODLAR]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_KODLAR](
	[FIRMAKOD1] [varchar](300) NULL,
	[FIRMAKOD2] [varchar](300) NULL,
	[FIRMAKOD3] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_MUSTERIHAREKETLER]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_MUSTERIHAREKETLER](
	[HareketID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[Adet] [tinyint] NULL,
	[PersonelID] [tinyint] NULL,
	[MusteriID] [smallint] NULL,
	[Fiyat] [decimal](18, 2) NULL,
	[Toplam] [decimal](18, 2) NULL,
	[FaturaID] [int] NULL,
	[Tarih] [varchar](10) NULL,
	[Notlar] [varchar](250) NULL,
 CONSTRAINT [PK_TBL_MUSTERİHAREKETLER] PRIMARY KEY CLUSTERED 
(
	[HareketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_MUSTERILER]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_MUSTERILER](
	[MusteriID] [smallint] IDENTITY(1,1) NOT NULL,
	[MusteriAd] [varchar](20) NULL,
	[MusteriSoyad] [nchar](10) NULL,
	[MusteriTelefon] [varchar](15) NULL,
	[MusteriTelefon2] [varchar](15) NULL,
	[MusteriTC] [char](11) NULL,
	[MusteriMail] [varchar](40) NULL,
	[MusteriSehir] [varchar](20) NULL,
	[MusteriIlce] [varchar](30) NULL,
	[MusteriAdres] [varchar](100) NULL,
	[MusteriVergiDaire] [varchar](30) NULL,
 CONSTRAINT [PK_TBL_MUSTERILER] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_NOTLAR]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_NOTLAR](
	[NotID] [int] IDENTITY(1,1) NOT NULL,
	[NotTarih] [varchar](10) NULL,
	[NotSaat] [varchar](10) NULL,
	[NotBaslik] [varchar](50) NULL,
	[NotDetay] [varchar](250) NULL,
	[NotOlusturan] [varchar](20) NULL,
	[NotHitap] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_PERSONELLER]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_PERSONELLER](
	[PersonelID] [tinyint] IDENTITY(1,1) NOT NULL,
	[PersonelAd] [varchar](25) NULL,
	[PersonelSoyad] [varchar](30) NULL,
	[PersonelTelefon] [varchar](15) NULL,
	[PersonelTC] [char](11) NULL,
	[PersonelMail] [varchar](40) NULL,
	[PersonelSehir] [varchar](20) NULL,
	[PersonelIlce] [varchar](30) NULL,
	[PersonelAdres] [varchar](100) NULL,
	[PersonelGorev] [varchar](20) NULL,
 CONSTRAINT [PK_TBL_PERSONELLER] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_STOKLAR]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_STOKLAR](
	[StokID] [tinyint] IDENTITY(1,1) NOT NULL,
	[StokTur] [varchar](20) NULL,
	[StokAdet] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_URUNLER]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_URUNLER](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAd] [varchar](20) NULL,
	[UrunMarka] [varchar](20) NULL,
	[UrunModel] [varchar](20) NULL,
	[UrunYil] [char](4) NULL,
	[UrunAdet] [smallint] NULL,
	[UrunMaliyet] [decimal](18, 2) NULL,
	[UrunSatisFiyat] [decimal](18, 2) NULL,
	[UrunDetay] [varchar](500) NULL,
 CONSTRAINT [PK_TBL_URUNLER] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[TBL_BANKALAR]  WITH CHECK ADD  CONSTRAINT [FK_TBL_BANKALAR_TBL_FIRMALAR] FOREIGN KEY([FirmaID])
REFERENCES [dbo].[TBL_FIRMALAR] ([FirmaID])
GO
ALTER TABLE [dbo].[TBL_BANKALAR] CHECK CONSTRAINT [FK_TBL_BANKALAR_TBL_FIRMALAR]
GO
ALTER TABLE [dbo].[TBL_FATURADETAY]  WITH CHECK ADD  CONSTRAINT [FK_TBL_FATURADETAY_TBL_FATURABILGI] FOREIGN KEY([FaturaID])
REFERENCES [dbo].[TBL_FATURABILGI] ([FaturaID])
GO
ALTER TABLE [dbo].[TBL_FATURADETAY] CHECK CONSTRAINT [FK_TBL_FATURADETAY_TBL_FATURABILGI]
GO
ALTER TABLE [dbo].[TBL_FIRMAHAREKETLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_HAREKETLER_TBL_FIRMALAR] FOREIGN KEY([FirmaID])
REFERENCES [dbo].[TBL_FIRMALAR] ([FirmaID])
GO
ALTER TABLE [dbo].[TBL_FIRMAHAREKETLER] CHECK CONSTRAINT [FK_TBL_HAREKETLER_TBL_FIRMALAR]
GO
ALTER TABLE [dbo].[TBL_FIRMAHAREKETLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_HAREKETLER_TBL_PERSONELLER] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[TBL_PERSONELLER] ([PersonelID])
GO
ALTER TABLE [dbo].[TBL_FIRMAHAREKETLER] CHECK CONSTRAINT [FK_TBL_HAREKETLER_TBL_PERSONELLER]
GO
ALTER TABLE [dbo].[TBL_FIRMAHAREKETLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_HAREKETLER_TBL_URUNLER] FOREIGN KEY([UrunID])
REFERENCES [dbo].[TBL_URUNLER] ([UrunID])
GO
ALTER TABLE [dbo].[TBL_FIRMAHAREKETLER] CHECK CONSTRAINT [FK_TBL_HAREKETLER_TBL_URUNLER]
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_MUSTERİHAREKETLER_TBL_MUSTERILER] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[TBL_MUSTERILER] ([MusteriID])
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER] CHECK CONSTRAINT [FK_TBL_MUSTERİHAREKETLER_TBL_MUSTERILER]
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_MUSTERİHAREKETLER_TBL_PERSONELLER] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[TBL_PERSONELLER] ([PersonelID])
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER] CHECK CONSTRAINT [FK_TBL_MUSTERİHAREKETLER_TBL_PERSONELLER]
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_MUSTERİHAREKETLER_TBL_URUNLER] FOREIGN KEY([UrunID])
REFERENCES [dbo].[TBL_URUNLER] ([UrunID])
GO
ALTER TABLE [dbo].[TBL_MUSTERIHAREKETLER] CHECK CONSTRAINT [FK_TBL_MUSTERİHAREKETLER_TBL_URUNLER]
GO
/****** Object:  StoredProcedure [dbo].[BankaBilgileri]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BankaBilgileri]
AS
SELECT b.BankaID, b.BankaAd,b.BankaIl,b.BankaIlce,b.BankaYetkili,
b.BankaTelefon,b.BankaTarih,b.BankaHesapNo,b.BankaHesapTuru,
b.BankaSube,b.BankaIBAN,f.FirmaAd,f.FirmaID
FROM TBL_BANKALAR as b
INNER JOIN TBL_FIRMALAR as f 
ON b.FirmaID = f.FirmaID 
GO
/****** Object:  StoredProcedure [dbo].[FirmaHareketler]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FirmaHareketler]
AS
SELECT FH.HareketID,U.UrunAd,FH.Adet,P.PersonelAd,F.FirmaAd,FH.Fiyat,FH.Toplam,FB.FaturaAlici,FH.Tarih,FH.Notlar FROM TBL_FIRMAHAREKETLER AS FH
inner join 
TBL_URUNLER AS U 
ON
FH.UrunID = U.UrunID
inner join
TBL_PERSONELLER as P
ON 
FH.PersonelID = P.PersonelID
inner join 
TBL_FIRMALAR AS F
ON
FH.FirmaID = F.FirmaID
inner join
TBL_FATURABILGI AS FB
ON
FH.FaturaID = FB.FaturaID
GO
/****** Object:  StoredProcedure [dbo].[MusteriHareketler]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MusteriHareketler]
AS
SELECT MH.HareketID,U.UrunAd,MH.Adet,P.PersonelAd,M.MusteriAd,MH.Fiyat,MH.Toplam,FB.FaturaAlici,MH.Tarih,MH.Notlar FROM TBL_MUSTERIHAREKETLER AS MH
inner join 
TBL_URUNLER AS U
ON
MH.UrunID = U.UrunID
inner join
TBL_PERSONELLER AS P
ON
MH.PersonelID = P.PersonelID
inner join
TBL_MUSTERILER AS M
ON 
MH.MusteriID = M.MusteriID
inner join
TBL_FATURABILGI AS FB
ON
MH.FaturaID = FB.FaturaID
GO
/****** Object:  StoredProcedure [dbo].[SonFirmaHareketler]    Script Date: 31.08.2019 00:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SonFirmaHareketler]
AS 
SELECT U.UrunAd,FH.Adet,F.FirmaAd,FH.Fiyat,FH.Toplam FROM TBL_FIRMAHAREKETLER AS FH
inner join 
TBL_URUNLER AS U 
ON
FH.UrunID = U.UrunID
inner join 
TBL_FIRMALAR AS F
ON
FH.FirmaID = F.FirmaID
inner join
TBL_FATURABILGI AS FB
ON
FH.FaturaID = FB.FaturaID
GO
USE [master]
GO
ALTER DATABASE [DboTicariOtomasyon] SET  READ_WRITE 
GO
