create database Music
use Music
create table MusicInfo
(
	mcode varchar(20) not null primary key comment '노래코드', 
	mtitle varchar(100) comment '제목',
	malbum varchar(100) comment '앨범명',
	mrelease date comment '발매일',
	mlyrics text comment '가사',
	mgenre varchar(20) comment '장르',
	mimg text comment '앨범이미지',
	memotion varchar(20) comment '감성'
);
create table User
(
	uno int primary key comment '회원번호',
	uid varchar(20) comment '아이디',
	upw varchar(20) comment '비밀번호',
	ubirth date comment '생년월일',
	ugender varchar(5) comment '성별'
);
create table PlayList
(
	listno int primary key comment '리스트번호',
	uno int  comment '회원번호',
	listname varchar(50) comment '플레이리스트 명',
	foreign key (uno) references User(uno)
);
create table PlayInfo
(
	uno int comment '회원번호',
	listno int comment '리스트번호',
	mcode varchar(20) comment '노래코드',
	pdate date comment '작성일',
	foreign key (uno) references PlayList(uno),
	foreign key (listno) references PlayList(listno),
	foreign key (mcode) references MusicInfo(mcode)
);
