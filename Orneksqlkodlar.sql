
--****************************--https://www.yazilimkodlama.com/sql-server-2/sql-trigger-tetikleyici-nedir-trigger-ornekleri/**********************

--Create Table Ogrenci
--(
--Og_id int IDENTITY (1,1) Not Null,
--Og_no int Primary key Not Null,
--Og_ad nvarchar(50) Not Null,
--Og_soyad nvarchar(50) Not Null,
--)
--Insert Into Ogrenci (Og_no,Og_ad,Og_soyad) Values (12,'ALÝ','Ada')
--Insert Into Ogrenci (Og_no,Og_ad,Og_soyad) Values (15,'CAN','GÜR')
--Insert Into Ogrenci (Og_no,Og_ad,Og_soyad) Values (22,'CEM','ADA')
--Insert Into Ogrenci (Og_no,Og_ad,Og_soyad) Values (13,'ALP','ÞAN')
--Insert Into Ogrenci (Og_no,Og_ad,Og_soyad) Values (14,'OYA','ÞEN')

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
--insert into Hoca (H_no,H_ad,H_soyad) VALUES (16, 'Nuri', 'Dað')


--Create Table Ders
--(
--D_no int Primary Key Not Null,
--D_adi nvarchar(50) Not Null,
--H_no int Not Null,
--)

--insert into Ders (D_no,D_adi,H_no) VALUES (22,'Matematik',101)
--insert into Ders (D_no,D_adi,H_no) VALUES (23,'Fizik',101)
--insert into Ders (D_no,D_adi,H_no) VALUES (24,'Enformatik',13)
--insert into Ders (D_no,D_adi,H_no) VALUES (25,'Biliþim',19)
--insert into Ders (D_no,D_adi,H_no) VALUES (26,'Türk Dili',102)
--insert into Ders (D_no,D_adi,H_no) VALUES (72,'Veri Tabaný',16)



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
--select Og_no AS 'Öðrenci No', Og_ad + ' ' + Og_soyad AS 'Adý Soyadý' from Ogrenci

--select * from Notlar
--select TOP 3 * from Notlar																			------------//// TOP 3 TABLONUN ÝLK 3 DEÐERÝNÝ ALIR
--select TOP 3 * from notlar Order by Final ASC															------------//// ORDER BY SIRALAMA ÝÇÝN KULLANILIR ASC KÜÇÜKTEN BÜYÜÐE 
--select TOP 3 * from Notlar Order by Final DESC														-----------///// DESC BÜYÜKTEN KÜÇÜÐE SIRALAR
--select Top 2 Og_ad + ' ' + Og_soyad AS 'Adý Soyadý' from Ogrenci Order by NEWID()						-----------///// NEWID() RASGELE VERÝ ALMA 
--Select top 100 Percent * from TBLOGRENCILER															----------//// TOP 10 PERCENT YÜZDE ONLUK KISMINI GETÝRÝR

--select  DISTINCT Og_no from Notlar																		------------//// DISTINCT TEKÝLLEÞTÝRME ANLAMINDA KULLANILIR 

--select * from Notlar where Not_id=1																		-------------//// WHERE ÞARTLAR ÝÇÝN KULLANILIR

--select * from Notlar where Not_id<3 AND Not_id>1														------------///// AND VE ANLAMINA GELÝR 
--select * from Notlar where Not_id<3 OR Not_id>1

--select * from Notlar where vize<=50 or Vize>=80														------------////// OR VEYA ANLAMINA GELÝR 

--select * from Notlar where Og_no!=12																	--------------//// != EÞÝT DEÐÝLSE ANLAMINA GELÝR


--select * from Notlar where Not_id IN (1,3,5,7)															--------------///// IN  ÝÇÝNDE ANLAMINDA KULLANILIR (TABLODAN 1 DEN FAZLA DEGER ALINCAGI ZAMANLARDA KULLANILIR)
----select * from Ogrenci where Og_ad IN ('ali', 'alp')

----select * from Notlar where vize BETWEEN 58 and 69														-----------------//// BETWEEN ARASINDA ANLAMINA GELÝR 
----select * from Notlar where Vize>=58 AND Vize<=69

--select * from Ogrenci where Og_ad LIKE 'ali'															----------------//// LIKE TABLODA VERÝ SORGULARKEN KULLANILIR 

--select * from Ogrenci where Og_ad LIKE 'a%'																-------------//////// LIKE ÝÇÝNDE % KULLANA BÝLÝRÝZ A ÝLE BAÞLAYAN 
--select * from Ogrenci where Og_ad LIKE 'al%'
--select * from Ogrenci where Og_ad LIKE '%a%'															-------------/////// ÝÇÝNDE A GEÇENLERÝ GETÝR
--select * from Ogrenci where Og_ad LIKE '%i'																-------------////  Ý ÝLE BÝTEN VERÝLERÝ GETÝR
--Select * From TBLOGRENCILER  where OGRSEHIR LIKE '[A,B]%'													-------------////  LIKE []% KULLANIM ÞEKLÝ HEM A HEMDE B ÝLE BAÞLAYAN ANLAMINDA
-- öðrenci adý ve soyadýný ayný sütunda gösteren, oðrenci numarasý büyükten küçüðe
-- doðru sýralý þekilde ve öðrenci id'si 7'den küçük olanlarý gösteren sorguyu
-- ms-sql dilinde kodlayýnýz.

--select Og_ad+' '+Og_soyad AS 'Adý Soyadý' from Ogrenci Where Og_id<7 Order By Og_no DESC


--select COUNT(*) AS 'Öðrenci Sayýsý' from Ogrenci												----------/////// COUNT () KAÇ TANE OLDUÐUNU GÖSTERÝR
--select COUNT(*) AS 'Öðrenci Sayýsý' from Ogrenci where Og_no>100

--Select MAX(Og_no) AS 'En Büyük numaralý Öðrenci' from Ogrenci									----------///// MAX() MAXÝMUM DEÐER
--Select MIN(Og_no) AS 'En Küçük numaralý Öðrenci' from Ogrenci									----------//// MÝN() MÝNÝMUM DEGER 
--Select MAX(Vize) AS 'En Büyük vize' from Notlar

--select AVG(Final) AS 'Ortalama Final' from Notlar												----------//// AVG() ORTALAMA ALIR					
--select SUM(final) AS 'Finallerin Toplamý' from Notlar											---------///// SUM TOPLAMA YAPAR
--select SUM(final)/COUNT(*) AS 'Finalin ortalamasý' from Notlar

--select Og_soyad from Ogrenci GROUP BY Og_soyad													------//// GROUP BY BELÝRLEÐÝMÝZ SUTUNDA GRUPLANDIRMA YAPAR
--select Og_soyad, COUNT(*) AS 'Kaç Tane' from Ogrenci GROUP BY Og_soyad

--select Og_soyad, COUNT(*) AS 'Kaç Tane' from Ogrenci GROUP BY Og_soyad HAVING COUNT(*)>1			-------/// HAVING GROUP BY KULLANDIGIMIZDA WHERE YERÝNE KULLANILIR

-- Select * ,'ÜSTÜNDE' AS 'Durum2' From notlar where Ortalama>(Select  AVG(Ortalama)From notlar)
-- UNION																											---------/// UNION KODLARI BÝRLEÞTÝRMEYE YARAR
--Select * ,'ALTINDA'  From notlar Where Ortalama<(Select avg(Ortalama) From notlar)


--create trigger TRG_soyad_guncelle
--ON veli
--FOR UPDATE
--AS
--BEGIN
--Declare @soyad nvarchar(50),@veli_no int															----------/// TRÝGGER TETÝKLEYÝ ANLAMINDA KULLANILIR BÝR TABLODA ÝÞLEM GERÇEKLEÞTÝRÝLDÝÐÝNDE OTOMATÝK OLARAK BASKA TABLOLARI GÜNCELLEYE BÝLÝRÝZ
--select @soyad=V_soyad from inserted																---------///  SOL TARAFTAKÝ ÖRNEK UPDATE ÖRNEÐÝDÝR
--select @veli_no=V_no from deleted																	-------/// DELETED ESKÝ VERÝ TABLOSU ANLAMINA GELÝR
--update Ogrenci Set Og_soyad=@soyad where v_no=@veli_no											-------/// ÝNSERTED YENÝ VERÝ TABLOSU ANLAMINDA KULLANILIR
--END
																									------//Enable (Aktifleþtirme): enable trigger trigger_adý On tablo_adý

--create trigger TRG_og_temizle																		----------//Disable (Pasifleþtirme):disable trigger trigger_adý On tablo_adý
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




--Select TBLOGRENCILER.OGRAD,'Düþük' AS 'DURUM5'From notlar Inner Join TBLOGRENCILER
-- on notlar.Ogrenci = TBLOGRENCILER.OGRID 
-- Where TBLOGRENCILER.OGRAD='Ayse'and																					-----------------//// ÝÇ ÝÇE SORGU ÖRNEÐÝDÝR WHEREDEN SONRA ALT SORGU SEKLÝNDE ÝÞLEMLER YAPABÝLÝRÝZ
-- (Select AVG(Sýnav1) from Notlar where Ders=1 ) > (select avg(sýnav1) from notlar Inner Join TBLOGRENCILER 
-- on notlar.Ogrenci=TBLOGRENCILER.OGRID where TBLOGRENCILER.OGRAD='Ayse' and notlar.Ders=1)








--Select Left(DERSAD,3), Format( AVG (ortalama),'N2') From notlar
-- Inner Join TBLDERSLER
-- on notlar.Ders= TBLDERSLER.DERSID																							------------------/// LEFT(DERS,3) VERÝNÝN ÝLK 3 HARFÝNÝ AL ANLAMINA GELÝR
-- Group By Dersad																												------------------//// FORMAT(AVG(ORTALAMA),'N2') , DEN SONRA KAÇ BASAMAK GÖSTERÝCEÐÝ ANLAMINA GELÝR


--select REPLACE(OGRAD,'a','k') from TBLOGRENCILER																				--------------//// RELACE(AD , 'A','K') A DEGERÝNÝ K ÝLE DEÐÝÞTÝRME ANLAMINA GELÝR




--	Alter procedure stoksorgu
--	@stok int = 1
--	As 
--	Select ürünad,ürünstok,ürünmarka From ürünler															----------------//// PROCEDURELER SÜREKLÝ KULLANÐIMIZ SORGULARI ÝÇÝNDE BARINDIRAN BÝR YAPIDIR
--	Where ürünstok>@stok																					--------------//// @STOK DIÞARDAN ALINAN GEÐER ANLAMINA GELÝR
	
--	exec stoksorgu @stok=15																					-----------//// EXEC STOKSORGULA @STOK=X DIÞARDAN ALINAN DEÐERE GÖRE ÝÞLEM YAPTIRMA 





--select * From hareket Where DATEPART(DAY,tarih) Between 3 and 4 and müsteri=2                       --------------//// DATEPART(DAY,TARÝH) DATEPART TARÝHÝ ÝSTEÐÝN ÞEKÝLDE PARÇALARA AYIRIR

--Select * From hareket 
--	Inner join müsteri
--	on hareket.müsteri=müsteri.müsteriid																-----------------/// iÇ ÝÇE SORGULARDA ÝN KULLANIMI ÖNEMLÝDÝR SÝVAS SEHRÝNDE 1 DEN FAZLA DEGER DÖNDÜRDÜGÜNDE = KULLANIRSAK HATA ALIRIZ BU DURUMLARDA ÝN KULLANIRSAK BÝRDEN FAZLA DEÐER ALABÝRÝRÝZ
--	 Where DATEPART(day, tarih) Between 1 and 8 and
--	  müsteri IN (select müsteriid from müsteri Where müsterisehir='Sivas')

--Select DATEDIFF(DAY,tarih,GETDATE()) From hareket where hareketid=1										-------------/// DATEDIFF TARÝHLER ARASI FARK ALMADIR GETDATE BUGÜNÜN TARÝHÝ


--Begin Transaction 
--insert into ürünler(ürünad,ürünstok) Values('Halý', 50),('Top','dsadsa')									--------------/// TRANSACTÝON GERÝ ALMA KOMUTUDUR.COMmÝT EÐER YAPILAN TÜM ÝÞLEMLER DOÐRU ÝSE ÝÞLEMÝ GERÇEKLEÞTÝRÝR AMA ÝÇLERÝNDEN BÝRÝNDE BÝL HATA VARSA TÜM ÝÞLEMLERÝ ÝPTAL EDER
--Commit


--begin Transaction 
--insert into ürünler (ürünad,ürünstok) Values('Halý', 50), ('Top' ,100)										-------------------// ROLLBACK ÝSE YAPILAN TÜM ÝÞEMLERÝ GERÝ ALIR
--Rollback






--Create function karekök(@kare decimal(18,2))
--Returns decimal(18,2)
--AS
--Begin																										-----------------------///// FUNCTION MAX() , SUM GÝBÝ FOKSÝYONLARDAN KENDÝMÝZDE OLUÞTURA BÝLÝYORUZ KULLANIMI YANDADIR
--Return Sqrt(@kare)*3
--End												

--Select ürünad,ürünstok,DBO.karekök(ürünstok)  From ürünler												----------------------/// FOKSÝYONU ÇAÐIRIRKEN DBO. KULLANMALIYIZ




--Create Function stoksayýsý(@stk int)
--Returns table
--as
--Return Select * From ürünler where ürünstok < @stk

--Select * From DBO.stoksayýsý(15)



--Set Statistics io On																						---------------------//// Verileri ararken kaç tane veri okudunu Gösteren kod
--Set Statistics time on


--Create Clustered index Tablokayýt																				----------/// CLUSTERED INDEX Verileri Daha Az Satýr Okuyarak Getirmesi Ýçin Kullanýlýr. Fakat Clustered INDEX Sadece Bir Sütünü Gruplandýrýr.							
--on tablo2(ID)	








--Create Table ürünler
--(
--ürünid int Identity (1,1) Primary Key,
--ürünad varchar(50),
--ürünmarka varchar(50),
--Kategori tinyint,					
--ürünalisfiyat decimal(18,2),
--ürünsatisfiyat decimal(18,2),
--ürünstok smallint Check(ürünstok>0),
--üründurum bit default '1'
--)