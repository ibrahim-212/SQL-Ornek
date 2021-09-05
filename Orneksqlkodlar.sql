
--****************************--https://www.yazilimkodlama.com/sql-server-2/sql-trigger-tetikleyici-nedir-trigger-ornekleri/**********************

--Create Table Ogrenci
--(
--Og_id int IDENTITY (1,1) Not Null,
--Og_no int Primary key Not Null,
--Og_ad nvarchar(50) Not Null,
--Og_soyad nvarchar(50) Not Null,
--)
--Insert Into Ogrenci (Og_no,Og_ad,Og_soyad) Values (12,'AL�','Ada')
--Insert Into Ogrenci (Og_no,Og_ad,Og_soyad) Values (15,'CAN','G�R')
--Insert Into Ogrenci (Og_no,Og_ad,Og_soyad) Values (22,'CEM','ADA')
--Insert Into Ogrenci (Og_no,Og_ad,Og_soyad) Values (13,'ALP','�AN')
--Insert Into Ogrenci (Og_no,Og_ad,Og_soyad) Values (14,'OYA','�EN')

--Create Table Hoca
--(
--H_id int IDENTITY (1,1) Not Null,
--H_no int Primary Key Not Null,
--H_ad nvarchar(50) Not Null,
--H_soyad nvarchar(50) Not Null,
--)

--insert into Hoca (H_no,H_ad,H_soyad) VALUES (101,'Ece', 'Ay')
--insert into Hoca (H_no,H_ad,H_soyad) VALUES (13, 'Efe', 'Kel')
--insert into Hoca (H_no,H_ad,H_soyad) VALUES (19, 'Zeki', 'Tan')
--insert into Hoca (H_no,H_ad,H_soyad) VALUES (102, 'Nur','Kara')
--insert into Hoca (H_no,H_ad,H_soyad) VALUES (16, 'Nuri', 'Da�')


--Create Table Ders
--(
--D_no int Primary Key Not Null,
--D_adi nvarchar(50) Not Null,
--H_no int Not Null,
--)

--insert into Ders (D_no,D_adi,H_no) VALUES (22,'Matematik',101)
--insert into Ders (D_no,D_adi,H_no) VALUES (23,'Fizik',101)
--insert into Ders (D_no,D_adi,H_no) VALUES (24,'Enformatik',13)
--insert into Ders (D_no,D_adi,H_no) VALUES (25,'Bili�im',19)
--insert into Ders (D_no,D_adi,H_no) VALUES (26,'T�rk Dili',102)
--insert into Ders (D_no,D_adi,H_no) VALUES (72,'Veri Taban�',16)



--Create Table Notlar
--(
--Not_id int identity(1,1) primary key,
--Og_no int Not Null,
--D_no int Not Null,
--Vize int Not Null,
--Final int Not Null,
--)


--insert into Notlar (Og_no,D_no,Vize,Final) VALUES (12,22,45,95)
--insert into Notlar (Og_no,D_no,Vize,Final) VALUES (12,23,58,65)
--insert into Notlar (Og_no,D_no,Vize,Final) VALUES (12,24,65,48)
--insert into Notlar (Og_no,D_no,Vize,Final) VALUES (12,25,59,58)
--insert into Notlar (Og_no,D_no,Vize,Final) VALUES (12,26,87,97)
--insert into Notlar (Og_no,D_no,Vize,Final) VALUES (15,22,45,25)
--insert into Notlar (Og_no,D_no,Vize,Final) VALUES (15,23,15,57)
--insert into Notlar (Og_no,D_no,Vize,Final) VALUES (15,24,69,48)
--insert into Notlar (Og_no,D_no,Vize,Final) VALUES (22,72,35,68)
--insert into Notlar (Og_no,D_no,Vize,Final) VALUES (13,72,68,35)
--insert into Notlar (Og_no,D_no,Vize,Final) VALUES (14,72,85,100)



--Select * from Ogrenci
--Select * from Hoca
--Select * from Ders
--Select * from Notlar

--select * from ogrenci
--select Og_no,Og_soyad from Ogrenci
--select Og_no AS '��renci No', Og_ad + ' ' + Og_soyad AS 'Ad� Soyad�' from Ogrenci

--select * from Notlar
--select TOP 3 * from Notlar																			------------//// TOP 3 TABLONUN �LK 3 DE�ER�N� ALIR
--select TOP 3 * from notlar Order by Final ASC															------------//// ORDER BY SIRALAMA ���N KULLANILIR ASC K���KTEN B�Y��E 
--select TOP 3 * from Notlar Order by Final DESC														-----------///// DESC B�Y�KTEN K����E SIRALAR
--select Top 2 Og_ad + ' ' + Og_soyad AS 'Ad� Soyad�' from Ogrenci Order by NEWID()						-----------///// NEWID() RASGELE VER� ALMA 
--Select top 100 Percent * from TBLOGRENCILER															----------//// TOP 10 PERCENT Y�ZDE ONLUK KISMINI GET�R�R

--select  DISTINCT Og_no from Notlar																		------------//// DISTINCT TEK�LLE�T�RME ANLAMINDA KULLANILIR 

--select * from Notlar where Not_id=1																		-------------//// WHERE �ARTLAR ���N KULLANILIR

--select * from Notlar where Not_id<3 AND Not_id>1														------------///// AND VE ANLAMINA GEL�R 
--select * from Notlar where Not_id<3 OR Not_id>1

--select * from Notlar where vize<=50 or Vize>=80														------------////// OR VEYA ANLAMINA GEL�R 

--select * from Notlar where Og_no!=12																	--------------//// != E��T DE��LSE ANLAMINA GEL�R


--select * from Notlar where Not_id IN (1,3,5,7)															--------------///// IN  ���NDE ANLAMINDA KULLANILIR (TABLODAN 1 DEN FAZLA DEGER ALINCAGI ZAMANLARDA KULLANILIR)
----select * from Ogrenci where Og_ad IN ('ali', 'alp')

----select * from Notlar where vize BETWEEN 58 and 69														-----------------//// BETWEEN ARASINDA ANLAMINA GEL�R 
----select * from Notlar where Vize>=58 AND Vize<=69

--select * from Ogrenci where Og_ad LIKE 'ali'															----------------//// LIKE TABLODA VER� SORGULARKEN KULLANILIR 

--select * from Ogrenci where Og_ad LIKE 'a%'																-------------//////// LIKE ���NDE % KULLANA B�L�R�Z A �LE BA�LAYAN 
--select * from Ogrenci where Og_ad LIKE 'al%'
--select * from Ogrenci where Og_ad LIKE '%a%'															-------------/////// ���NDE A GE�ENLER� GET�R
--select * from Ogrenci where Og_ad LIKE '%i'																-------------////  � �LE B�TEN VER�LER� GET�R
--Select * From TBLOGRENCILER  where OGRSEHIR LIKE '[A,B]%'													-------------////  LIKE []% KULLANIM �EKL� HEM A HEMDE B �LE BA�LAYAN ANLAMINDA
-- ��renci ad� ve soyad�n� ayn� s�tunda g�steren, o�renci numaras� b�y�kten k����e
-- do�ru s�ral� �ekilde ve ��renci id'si 7'den k���k olanlar� g�steren sorguyu
-- ms-sql dilinde kodlay�n�z.

--select Og_ad+' '+Og_soyad AS 'Ad� Soyad�' from Ogrenci Where Og_id<7 Order By Og_no DESC


--select COUNT(*) AS '��renci Say�s�' from Ogrenci												----------/////// COUNT () KA� TANE OLDU�UNU G�STER�R
--select COUNT(*) AS '��renci Say�s�' from Ogrenci where Og_no>100

--Select MAX(Og_no) AS 'En B�y�k numaral� ��renci' from Ogrenci									----------///// MAX() MAX�MUM DE�ER
--Select MIN(Og_no) AS 'En K���k numaral� ��renci' from Ogrenci									----------//// M�N() M�N�MUM DEGER 
--Select MAX(Vize) AS 'En B�y�k vize' from Notlar

--select AVG(Final) AS 'Ortalama Final' from Notlar												----------//// AVG() ORTALAMA ALIR					
--select SUM(final) AS 'Finallerin Toplam�' from Notlar											---------///// SUM TOPLAMA YAPAR
--select SUM(final)/COUNT(*) AS 'Finalin ortalamas�' from Notlar

--select Og_soyad from Ogrenci GROUP BY Og_soyad													------//// GROUP BY BEL�RLE��M�Z SUTUNDA GRUPLANDIRMA YAPAR
--select Og_soyad, COUNT(*) AS 'Ka� Tane' from Ogrenci GROUP BY Og_soyad

--select Og_soyad, COUNT(*) AS 'Ka� Tane' from Ogrenci GROUP BY Og_soyad HAVING COUNT(*)>1			-------/// HAVING GROUP BY KULLANDIGIMIZDA WHERE YER�NE KULLANILIR

-- Select * ,'�ST�NDE' AS 'Durum2' From notlar where Ortalama>(Select  AVG(Ortalama)From notlar)
-- UNION																											---------/// UNION KODLARI B�RLE�T�RMEYE YARAR
--Select * ,'ALTINDA'  From notlar Where Ortalama<(Select avg(Ortalama) From notlar)


--create trigger TRG_soyad_guncelle
--ON veli
--FOR UPDATE
--AS
--BEGIN
--Declare @soyad nvarchar(50),@veli_no int															----------/// TR�GGER TET�KLEY� ANLAMINDA KULLANILIR B�R TABLODA ��LEM GER�EKLE�T�R�LD���NDE OTOMAT�K OLARAK BASKA TABLOLARI G�NCELLEYE B�L�R�Z
--select @soyad=V_soyad from inserted																---------///  SOL TARAFTAK� �RNEK UPDATE �RNE��D�R
--select @veli_no=V_no from deleted																	-------/// DELETED ESK� VER� TABLOSU ANLAMINA GEL�R
--update Ogrenci Set Og_soyad=@soyad where v_no=@veli_no											-------/// �NSERTED YEN� VER� TABLOSU ANLAMINDA KULLANILIR
--END
																									------//Enable (Aktifle�tirme): enable trigger trigger_ad� On tablo_ad�

--create trigger TRG_og_temizle																		----------//Disable (Pasifle�tirme):disable trigger trigger_ad� On tablo_ad�
--ON Ogrenci
--FOR DELETE																			
--AS
--BEGIN
--Declare @og_no int
--select @og_no=og_no from deleted
--delete from devamsizlik where og_no=@og_no
--delete from Og_kulup where og_no=@og_no
--END



--Create trigger TRG_devamsizlik
--ON Ogrenci
--FOR INSERT --INSERTEDXXXXX
--AS
--BEGIN
--Declare @og_no int
--Select @og_no=Og_no from inserted
--Insert Into devamsizlik (og_no,d_sayisi) VALUES (@og_no,0)
--END




--Select TBLOGRENCILER.OGRAD,'D���k' AS 'DURUM5'From notlar Inner Join TBLOGRENCILER
-- on notlar.Ogrenci = TBLOGRENCILER.OGRID 
-- Where TBLOGRENCILER.OGRAD='Ayse'and																					-----------------//// �� ��E SORGU �RNE��D�R WHEREDEN SONRA ALT SORGU SEKL�NDE ��LEMLER YAPAB�L�R�Z
-- (Select AVG(S�nav1) from Notlar where Ders=1 ) > (select avg(s�nav1) from notlar Inner Join TBLOGRENCILER 
-- on notlar.Ogrenci=TBLOGRENCILER.OGRID where TBLOGRENCILER.OGRAD='Ayse' and notlar.Ders=1)








--Select Left(DERSAD,3), Format( AVG (ortalama),'N2') From notlar
-- Inner Join TBLDERSLER
-- on notlar.Ders= TBLDERSLER.DERSID																							------------------/// LEFT(DERS,3) VER�N�N �LK 3 HARF�N� AL ANLAMINA GEL�R
-- Group By Dersad																												------------------//// FORMAT(AVG(ORTALAMA),'N2') , DEN SONRA KA� BASAMAK G�STER�CE�� ANLAMINA GEL�R


--select REPLACE(OGRAD,'a','k') from TBLOGRENCILER																				--------------//// RELACE(AD , 'A','K') A DEGER�N� K �LE DE���T�RME ANLAMINA GEL�R




--	Alter procedure stoksorgu
--	@stok int = 1
--	As 
--	Select �r�nad,�r�nstok,�r�nmarka From �r�nler															----------------//// PROCEDURELER S�REKL� KULLAN�IMIZ SORGULARI ���NDE BARINDIRAN B�R YAPIDIR
--	Where �r�nstok>@stok																					--------------//// @STOK DI�ARDAN ALINAN GE�ER ANLAMINA GEL�R
	
--	exec stoksorgu @stok=15																					-----------//// EXEC STOKSORGULA @STOK=X DI�ARDAN ALINAN DE�ERE G�RE ��LEM YAPTIRMA 





--select * From hareket Where DATEPART(DAY,tarih) Between 3 and 4 and m�steri=2                       --------------//// DATEPART(DAY,TAR�H) DATEPART TAR�H� �STE��N �EK�LDE PAR�ALARA AYIRIR

--Select * From hareket 
--	Inner join m�steri
--	on hareket.m�steri=m�steri.m�steriid																-----------------/// i� ��E SORGULARDA �N KULLANIMI �NEML�D�R S�VAS SEHR�NDE 1 DEN FAZLA DEGER D�ND�RD�G�NDE = KULLANIRSAK HATA ALIRIZ BU DURUMLARDA �N KULLANIRSAK B�RDEN FAZLA DE�ER ALAB�R�R�Z
--	 Where DATEPART(day, tarih) Between 1 and 8 and
--	  m�steri IN (select m�steriid from m�steri Where m�sterisehir='Sivas')

--Select DATEDIFF(DAY,tarih,GETDATE()) From hareket where hareketid=1										-------------/// DATEDIFF TAR�HLER ARASI FARK ALMADIR GETDATE BUG�N�N TAR�H�


--Begin Transaction 
--insert into �r�nler(�r�nad,�r�nstok) Values('Hal�', 50),('Top','dsadsa')									--------------/// TRANSACT�ON GER� ALMA KOMUTUDUR.COMm�T E�ER YAPILAN T�M ��LEMLER DO�RU �SE ��LEM� GER�EKLE�T�R�R AMA ��LER�NDEN B�R�NDE B�L HATA VARSA T�M ��LEMLER� �PTAL EDER
--Commit


--begin Transaction 
--insert into �r�nler (�r�nad,�r�nstok) Values('Hal�', 50), ('Top' ,100)										-------------------// ROLLBACK �SE YAPILAN T�M ��EMLER� GER� ALIR
--Rollback






--Create function karek�k(@kare decimal(18,2))
--Returns decimal(18,2)
--AS
--Begin																										-----------------------///// FUNCTION MAX() , SUM G�B� FOKS�YONLARDAN KEND�M�ZDE OLU�TURA B�L�YORUZ KULLANIMI YANDADIR
--Return Sqrt(@kare)*3
--End												

--Select �r�nad,�r�nstok,DBO.karek�k(�r�nstok)  From �r�nler												----------------------/// FOKS�YONU �A�IRIRKEN DBO. KULLANMALIYIZ




--Create Function stoksay�s�(@stk int)
--Returns table
--as
--Return Select * From �r�nler where �r�nstok < @stk

--Select * From DBO.stoksay�s�(15)



--Set Statistics io On																						---------------------//// Verileri ararken ka� tane veri okudunu G�steren kod
--Set Statistics time on


--Create Clustered index Tablokay�t																				----------/// CLUSTERED INDEX Verileri Daha Az Sat�r Okuyarak Getirmesi ��in Kullan�l�r. Fakat Clustered INDEX Sadece Bir S�t�n� Grupland�r�r.							
--on tablo2(ID)	








--Create Table �r�nler
--(
--�r�nid int Identity (1,1) Primary Key,
--�r�nad varchar(50),
--�r�nmarka varchar(50),
--Kategori tinyint,					
--�r�nalisfiyat decimal(18,2),
--�r�nsatisfiyat decimal(18,2),
--�r�nstok smallint Check(�r�nstok>0),
--�r�ndurum bit default '1'
--)