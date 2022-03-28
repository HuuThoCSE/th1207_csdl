create database QLSV

use QLSV

create table MONHOC(
		MAMH char(8),
		TENMH nvarchar(200),
		SOTC int,
		SOTCLT int,
		SOTCTH int,
		primary key (MAMH)
		)

create table LOPCN(
		MALOPCN CHAR(8),
		TENLOPCN NVARCHAR(200),
		NAMNHAPHOC int,
		MARATRUONG int,
		NAMTOIDA int,
		primary key(MALOPCN)
		)
select * FROM LOPCN