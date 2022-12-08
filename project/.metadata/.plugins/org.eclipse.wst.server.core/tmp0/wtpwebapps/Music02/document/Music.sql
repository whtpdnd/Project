create database Music
use Music
create table MusicInfo
(
	mcode varchar(20) not null primary key comment '�뷡�ڵ�', 
	mtitle varchar(100) comment '����',
	malbum varchar(100) comment '�ٹ���',
	mrelease date comment '�߸���',
	mlyrics text comment '����',
	mgenre varchar(20) comment '�帣',
	mimg text comment '�ٹ��̹���',
	memotion varchar(20) comment '����'
);
create table User
(
	uno int primary key comment 'ȸ����ȣ',
	uid varchar(20) comment '���̵�',
	upw varchar(20) comment '��й�ȣ',
	ubirth date comment '�������',
	ugender varchar(5) comment '����'
);
create table PlayList
(
	listno int primary key comment '����Ʈ��ȣ',
	uno int  comment 'ȸ����ȣ',
	listname varchar(50) comment '�÷��̸���Ʈ ��',
	foreign key (uno) references User(uno)
);
create table PlayInfo
(
	uno int comment 'ȸ����ȣ',
	listno int comment '����Ʈ��ȣ',
	mcode varchar(20) comment '�뷡�ڵ�',
	pdate date comment '�ۼ���',
	foreign key (uno) references PlayList(uno),
	foreign key (listno) references PlayList(listno),
	foreign key (mcode) references MusicInfo(mcode)
);
