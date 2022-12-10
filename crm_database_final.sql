create database crm_2;
use crm_2;
insert into role values (0,"member","");
insert into role values (1,"member","");
insert into role values (2,"member","");
create table role(
	id_role int primary key,
    id_name text,
    mota text
);
drop table role;
insert into nhanvien values (123,"minhtri.cm2001@gmail.com","123456","Nguyen Minh Tri","Can tho","0943221490","2");
create table nhanvien(
	id_NV int auto_increment primary key,
	email varchar(255),
    matKhau varchar(255),
	hoTen varchar(255),
    diaChi varchar(255),
    sdt varchar(12),
    id_role int,
    foreign key (id_role) references role(id_role)
);

create table duan(
	id_DuAn int primary key auto_increment,
    tenDuAn varchar(255),
	tenTrangThai text,
    ngayBatDau text,
    ngayKetThuc text
);
drop table duan;

-- create table member(
-- 	id_Member int auto_increment primary key,
-- 	id_NV int,
-- 	id_DuAn int,
--     id_vitri int,
--     foreign key (id_vitri) references vitri(id_vitri),
--     foreign key (id_NV) references nhanvien(id_NV),
--     foreign key (id_DuAn) references duan(id_DuAn)
-- );
-- drop table member;

create table vitri(
	id_vitri int primary key,
    tenVaiTro varchar(255)
);
drop table vitri;

create table task(
	id_task int auto_increment primary key,
	id_NV int,
    id_DuAn int,
    tenDuAn text,
	tentrangThai text,
    ngayBatDau text,
	ngayKetThuc text,
    foreign key (id_NV) references nhanvien(id_NV),
    foreign key (id_DuAn) references duan(id_DuAn)
);
drop table task;
insert into task values ("1","9","3","phân tích hệ thống","chưa hoành thành","22/8/2022","22/9/2022");


select * from nhanvien;
select * from role;
select * from task;
select * from duan;

select nv.hoTen from task t join nhanvien nv on nv.id_NV=t.id_NV and t.id_NV = '9';