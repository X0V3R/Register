select * from khachhang;
--Check login name
alter table khachhang
add constraint rf_tenDN check (tenDN <> '');
insert into khachhang (tenDN) values ('');
--check password field
alter table khachhang
add constraint rf_MK check (matkhau <> '');
insert into khachhang (matkhau) values ('123');
alter table khachhang
add constraint rv_ThuNhap check (thunhap >= 1000000 and thunhap <= 50000000);
insert into khachhang (thunhap) values (1000000);
delete from khachhang where id = 1;
DBCC CHECKIDENT (khachhang, RESEED,0);