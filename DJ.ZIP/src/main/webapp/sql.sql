create table member(
ID varchar2(20),
PW varchar2(20) not null,
nick_name varchar2(20) not null,
email varchar2(50) not null,
dj_career number(5),
tel varchar2(20) not null,
file_name varchar2(50),
constraint member_id_pk primary key(id)
);

drop table member cascade constraints;


insert into member values('song','5462','mush','song2319','1','4478','cat');

select * from member;
select * from mixset;

select * from (select * from board order by hits desc) where rownum <=5;