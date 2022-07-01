use odev2
create table yazar(
yazarno INT primary key,
yazarad varchar(20),
yazarsoyad varchar(20)
);
create table tur(
turno INT primary key,
turadi varchar(20)
);
create table kitap(
kitapno INT primary key,
isbnno INT,
kitapadi varchar(20),
yazarno INT foreign key references yazar(yazarno),
turno INT foreign key references tur(turno),
sayfasayisi INT,
puan INT
);
create table ogrenci(
ogrno INT primary key ,
ograd varchar(20),
ogrsoyad varchar(20),
cinsiyet varchar(20) ,
dtarih date,
sinif date,
puan INT
);

create table islem(
islemno INT,
ogrno INT foreign key references ogrenci(ogrno),
kitapno INT foreign key references  kitap(kitapno),
atarih date,
vtarih date
);
