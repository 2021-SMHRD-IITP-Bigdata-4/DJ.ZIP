drop table board cascade constraints;
drop table member cascade constraints;
drop table mixset_board cascade constraints;
drop table dj_lesson cascade constraints;
drop table board_list cascade constraints;
drop table mixset_list cascade constraints;
drop table lesson_list cascade constraints;
drop table like_list cascade constraints;
drop table board_reply cascade constraints;
drop table djlesson_reply cascade constraints;
drop table mixset_reply cascade constraints;
drop table url_address cascade constraints;

drop sequence board_seq;
drop sequence mixset_board_seq;
drop sequence dj_lesson_seq;
drop sequence board_list_seq;
drop sequence mixset_list_seq;
drop sequence lesson_list_seq;
drop sequence like_list_seq;
drop sequence board_reply_seq;
drop sequence djlesson_reply_seq;
drop sequence mixset_reply_seq;

/* board table 생성 --*/
create table board(
num number(5),
title varchar2(60) not null, 
content varchar2(500) not null, 
category varchar2(20) not null, 
writer varchar2(20) not null, 
write_date date default sysdate, 
hits number(5),
constraint board_number_pk primary key(num)
);

/* board 시퀀스 생성 */
create sequence board_seq
start with 1
increment by 1
nocache;


/* member table 생성 --*/
create table member(
ID varchar2(20),
PW varchar2(20) not null,
nick_name varchar2(20) not null,
email varchar2(50) not null,
dj_career varchar2(20) not null,
tel varchar2(20) not null,
file_name varchar2(50),
constraint member_id_pk primary key(id)
);

/* mixset_board table 생성 --*/
create table mixset_board(
title varchar2(60) not null,
content varchar2(500) not null, 
write_date date default sysdate,
nick_name varchar2(20) not null,
hits number(5),
num number(5),
file_name varchar2(50) not null,
music_length varchar2(20) not null,
genre_name varchar2(20) not null,
img_name varchar2(50) not null,
constraint mixset_board_number_pk primary key(num)
);

/* mixset_board 시퀀스 생성 */
create sequence mixset_board_seq
start with 1
increment by 1
nocache;

/* dj_lesson table 생성 --*/
create table dj_lesson(
num number(5),
lesson_title varchar2(60) not null,
lesson_dj varchar2(20) not null, 
lesson_info varchar2(500) not null,
write_date date default sysdate,
location_name varchar2(20) not null,
portfolio varchar2(500) not null,
spot varchar2(100) not null,
constraint dj_lesson_number_pk primary key (num)
);

/* dj_lesson 시퀀스 생성 */
create sequence dj_lesson_seq
start with 1
increment by 1
nocache;

/* board_list table 생성 --*/
create table board_list(
serial number(5),
id varchar2(20) not null,
num number(5) not null,
constraint board_list_serial_pk primary key(serial),
constraint board_list_ID_fk foreign key(ID) references member(ID),
constraint board_list_num_fk foreign key(num) references board(num)
);

/* board_list 시퀀스 생성 */
create sequence board_list_seq
start with 1
increment by 1
nocache;

/* mixset_list table 생성 --*/
create table mixset_list(
serial number(5),
id varchar2(20) not null, 
num number(5) not null,
constraint mixset_list_serial_pk primary key(serial),
constraint mixset_list_ID_fk foreign key(ID) references member(ID),
constraint mixset_list_num_fk foreign key(num) references mixset_board(num)
);

/* mixset_list 시퀀스 생성 */
create sequence mixset_list_seq
start with 1
increment by 1
nocache;

/* lesson_list table 생성 --*/
create table lesson_list(
serial number(5),
id varchar2(20) not null,
num number(5) not null,
constraint lesson_list_serial_pk primary key(serial),
constraint lesson_list_ID_fk foreign key(ID) references member(ID),
constraint lesson_list_num_fk foreign key(num) references dj_lesson(num)
);

/* lesson_list 시퀀스 생성 */
create sequence lesson_list_seq
start with 1
increment by 1
nocache;

/* like_list table 생성 --*/
create table like_list(
serial number(5),
id varchar2(20) not null,
num number(5) not null,
f_list number(5),
constraint like_list_serial_pk primary key(serial),
constraint like_list_ID_fk foreign key(ID) references member(ID),
constraint like_list_num_fk foreign key(num) references mixset_board(num)
);

/* like_list 시퀀스 생성 */
create sequence like_list_seq
start with 1
increment by 1
nocache;

/* board_reply table 생성 --*/
create table board_reply(
r_num number(5), 
writer varchar2(20) not null,
write_date date default sysdate,
content varchar2(300) not null,
num number(5) not null,
constraint board_reply_r_num_pk primary key(r_num),
constraint board_reply_num_fk foreign key(num) references board(num)
);

/* board_reply 시퀀스 생성 */
create sequence board_reply_seq
start with 1
increment by 1
nocache;

/* djlesson_reply table 생성 --*/
create table djlesson_reply(
r_num number(5), 
writer varchar2(20) not null,
write_date date default sysdate,
content varchar2(300) not null,
num number(5) not null,
constraint djlesson_reply_r_num_pk primary key(r_num),
constraint djlesson_reply_num_fk foreign key(num) references dj_lesson(num)
);

/* djlesson_reply 시퀀스 생성 */
create sequence djlesson_reply_seq
start with 1
increment by 1
nocache;

/* mixset_reply table 생성 --*/
create table mixset_reply(
r_num number(5), 
writer varchar2(20) not null,
write_date date default sysdate,
content varchar2(300) not null,
num number(5) not null,
constraint mixset_reply_r_num_pk primary key(r_num),
constraint mixset_reply_num_fk foreign key(num) references mixset_board(num)
);

/* mixset_reply 시퀀스 생성 */
create sequence mixset_reply_seq
start with 1
increment by 1
nocache;

/* url_address table 생성 --*/
create table url_address(
serial number(5),
num number(5) not null,
url varchar2(100) not null, 
constraint url_address_serial_pk primary key(serial),
constraint url_address_num_fk foreign key(num) references dj_lesson(num)
);