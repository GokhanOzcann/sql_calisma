create DATABASE t_sql 
use t_sql

declare @temsilci VARCHAR(20)
DECLARE @satis VARCHAR(20)

set @temsilci  = 'ahmet günes'
SET @satis = 'coca cola'

print @temsilci + ' ' + @satis + ' '+ 'isimli ürünü satmıştır.'

DECLARE @isim VARCHAR(20)
DECLARE @yas INT 

set @isim = 'Ahmet'
set @yas  = 29

print @isim + ' ' + CONVERT(VARCHAR(20),@yas)  + ' ' + 'yaşındadır.'
SELECT * from urunler
DECLARE @ VARCHAR(20)
SELECT * from stok

DECLARE @birim_fiyat INT 
set @birim_fiyat = (SELECT MAX(ürün_adedi) from stok)
PRINT @birim_fiyat
/* ATANMIŞ DEĞİŞKENLE ATAMA ÖRNEĞİ*/
SELECT * from kitaplar
 DECLARE @sayfasayisi INT
 DECLARE @fiyati INT
 set @sayfasayisi = (select MAX(sayfa) from kitaplar )
 set @fiyati = (SELECT fiyat from kitaplar where sayfa = @sayfasayisi)
 PRINT CONVERT(VARCHAR,@sayfasayisi)  + 'olan kitabın fiyatı'+ convert(varchar,@fiyati)  + 'dır.'
/*PROSEDÜR İLE WHİLE DÖNGÜSÜ*/
 CREATE PROC dongu
 as 
 declare @sayac INT;
 set @sayac = 0 ;
 WHILE(@sayac < 15)
 BEGIN
 set @sayac =@sayac+1;
 print @sayac;
 END

 EXEC dongu
/*IF DÖNGÜSÜ*/
 DECLARE @sayfa INT;
 SELECT @sayfa = AVG(sayfa) from kitaplar;
 IF @sayfa < 300 BEGIN
 PRINT 'ortalama 300ün altında';
 END 
 ELSE BEGIN 
 PRINT 'ortalama 300 ün  üstünde';
END
/*
değişken tanımla, bu değişkene select komutu ile değer ata. ıf komutu ile bir mesaj yazdır. 
*/
select * from bina 
declare @aidat INT;
SELECT @aidat = avg(bina_aidatı) from bina ;
IF @aidat < 3000 BEGIN
PRINT 'ucuz'
END 
ELSE BEGIN
PRINT 'pahalı'
END

select * from yazarlar

SELECT yazar_isim, yas, 
case 
when yas < 30 then 'genç yazar'
when yas > 30 then 'ortayaşlı yazar'
end as Yassinifi
from yazarlar;

select * from kitaplar

SELECT kitap_isim, yil,
case 
when yil < 2000 then 'Milenyum Öncesi '
when yil > 2000 then 'Milenyum Sonrası'
end as YAYINYILI
from kitaplar;

