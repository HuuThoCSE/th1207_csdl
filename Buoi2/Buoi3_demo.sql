/* DROP DATABASE QLSV */

CREATE DATABASE QLSV

use QLSV

create table KHOA(
		MaK varchar(10),
		TenK nvarchar(200),
		Email varchar(200),
		SDT char(11),
		primary key (MaK)
		
)

select * from KHOA

/* Bai tap 2 */
create table LOP(
		MaL char(8),
		TenL nvarchar(200),
		SoSV int,
		MaK varchar(10),
		NamNhapHoc int,
		NamDuKienRaTruong int,
		NamToiDa int,
		primary key (MaL),
		/* constraint FK_KHOA_LOP FOREIGN KEY (MaK) references KHOA(MaK) */
)
/* Cau lenh lien ket giua 2 ban */

alter table LOP
	add constraint FK_KHOA_LOP FOREIGN KEY (MaK)
		references KHOA(MaK)

create table SINHVIEN(
			MaSV char(8),
			Ho varchar(100),
			Ten varchar(50),
			MaL char(8),
			CONSTRAINT FK_LOP_SV FOREIGN KEY(MaL)
				references LOP(MaL)
)


