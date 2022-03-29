use master
drop database QLCTQ
create database QLCTQ
use QLCTQ
create table CONGTRINH(
		MACT char(8),
		TENCT nvarchar(200),
		DIADIEM nvarchar(500),
		NGAYCAPGP date,
		NGAYKC date,
		NGAYHT date,
		primary key(MACT)
)

create table NHANVIEN(
		MANV int identity(0,1) not null,
		HOTEN nvarchar(200),
		NGAYSINH date,
		TUOI int,
		PHAI char(3),
		DIACHI nvarchar(500),
		MAPB char(8),
		primary key (MANV)
)

create table PHONGBAN(
		MAPB char(8),
		TENPB nvarchar(200),
		primary key(MAPB),
		constraint FK_PHONGBAN_NHANVIEN foreign key(MAPB) 
				references PHONGBAN(MAPB)
)

create table PHANCONG(
		MACT char(8),
		MANV int,
		SLNGAYCONG int,
		primary key (MACT),
		constraint FK_CONGTRINH_PHANCONG_MACT foreign key (MACT) 
				references CONGTRINH(MACT),
		constraint FK_CONGTRINH_PHANCONG_MANV foreign key (MANV) 
				references NHANVIEN(MANV)
)

insert into NHANVIEN (HOTEN, TUOI, PHAI, DIACHI, MAPB) values ('Nguyen Huu Tho', 19, 'Nam', 'Phuong 5', 'TT')
insert into NHANVIEN (HOTEN, TUOI, PHAI, DIACHI, MAPB) values ('Le Nguyen Quang Binh', 19, 'Nam', 'Phuong 5', 'TT')

insert into 

insert into PHANCONG(MACT, MANV, SLNGAYCONG) values ('CNT1', 0, 1)
insert into PHANCONG(MACT, MANV, SLNGAYCONG) values ('CNT1', 1, 2)

select * from NHANVIEN

SELECT NHANVIEN.MANV, NHANVIEN.HOTEN, PHANCONG.SLNGAYCONG
	from NHANVIEN, PHANCONG
	where NHANVIEN.MANV=PHANCONG.MANV
	ORDER BY MANV asc