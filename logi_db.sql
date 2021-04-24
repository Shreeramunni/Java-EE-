create database reachyou;
use reachyou;
create table account (user varchar(20),pass varchar(20));
create table logistic (email varchar(25), number double, mode varchar(20), offer varchar(20), source varchar(25), dest varchar(25));
select * from account;
delete from account where user="Shreeram";
create table estimate (source varchar(25), dest varchar(25),mode varchar(20), distance int, price int);
insert into estimate values("kochi","mumbai","road",1425,20000);
insert into estimate values("mumbai","kochi","road",1425,20000);
insert into estimate values("chennai","kochi","road",691,8000);
insert into estimate values("kochi","chennai","road",691,8000);
insert into estimate values("chennai","mumbai","road",1335,18000);
insert into estimate values("mumbai","chennai","road",1335,18000);

insert into estimate values("kochi","mumbai","air",1080,12000);
insert into estimate values("mumbai","kochi","air",1080,12000);
insert into estimate values("chennai","kochi","air",527,9000);
insert into estimate values("kochi","chennai","air",527,9000);
insert into estimate values("chennai","mumbai","air",1003,15000);
insert into estimate values("mumbai","chennai","air",1003,15000);

insert into estimate values("kochi","mumbai","sea",1070,11000);
insert into estimate values("mumbai","kochi","sea",1070,11000);
insert into estimate values("chennai","kochi","sea",561,10000);
insert into estimate values("kochi","chennai","sea",561,10000);
insert into estimate values("chennai","mumbai","sea",1032,15000);
insert into estimate values("mumbai","chennai","sea",1032,15000);