drop database cving;
create database cving;
use cving;

create table user
(
	uno int primary key AUTO_INCREMENT comment 'ȸ����ȣ',
	uid varchar(100) comment '���̵�',
	upw varchar(100) comment '��й�ȣ',
	uname varchar(100) comment 'ȸ���̸�',
	ubirth varchar(50) comment '�������',
	ugender varchar(5) comment 'ȸ������'
);

create table movie
(
	mcode  varchar(50) primary key comment '��ȭ�ڵ�',
	mtitle varchar(255) comment '��ȭ�̸�',
	mhobby varchar(100) comment '�帣',
	mscore decimal(5,2) comment '����',
	mtime varchar(100) comment '����Ÿ��',
	openyear varchar(20) comment '�����⵵',
	makingyear varchar(20) comment '���۳⵵',
	male int comment '������ȣ��',
	female int comment '������ȣ��',
	teenage int comment '10�� ��ȣ��',
	twenty int comment '20�� ��ȣ��',
	thirty int comment '30�� ��ȣ��',
	forty int comment '40�� ��ȣ��',
	fifty int comment '50�� ��ȣ��',
	mstory TEXT comment '��ȭ���丮',
	mposter varchar(300) comment '��ȭ������',
	mimg varchar(300) comment '��ȭ�̹���',
	used varchar(2) default 'Y' comment '��뿩��'
);

create table hobby
(
	uno int comment 'ȸ����ȣ',
	hobby varchar(50) comment '�帣��',
	foreign key (uno) references user(uno)
	
);

create table genre
(
	mcode  varchar(50) comment '��ȭ�ڵ�',
	mhobby varchar(100) comment '��ȭ�帣',
	foreign key (mcode) references movie(mcode)
);