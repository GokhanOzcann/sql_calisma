CREATE TABLE kitaplar(
    id INT PRIMARY KEY IDENTITY,
    kitap_isim VARCHAR(20),
    yil INT,
    sayfa INT,
    fiyat money,
    yazar_id INT,
    yayinevi_id INT
);
drop table kitaplar
create table yazarlar (
    id INT PRIMARY KEY IDENTITY,
    yazar_isim VARCHAR(20),
    soy_isim VARCHAR(20),
    yas INT
);
INSERT into kitaplar VALUES ('Saklı Ev',1995,255,20,1,2),('son moda', 2002,652,25,0,2)
,('gelecek',2007,214,12,2,1),('bir umut',2008,421,18,3,1)
INSERT Into yazarlar VALUES('ekrem','sever',28),('orhan','erdem',24),('orhan','karasu',34),('isa','bereket',43)
SELECT * FROM kitaplar INNER JOIN yazarlar ON kitaplar.id = yazarlar.id