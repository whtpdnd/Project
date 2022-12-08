drop database loldb;
create database loldb;
use loldb;

create table user
(
	uno int primary key AUTO_INCREMENT comment 'ȸ����ȣ',
	uid varchar(50) comment '���̵�',
	upw varchar(50) comment '��й�ȣ',
	uname varchar(100) comment '�̸�',
	unickname varchar(100) comment '�г���',
	upnum varchar(100) comment '�޴�����ȣ',
	umail varchar(200) comment '�̸���',
	uretire varchar(5) default 'N' comment 'Ż�𿩺�',
	uadmin varchar(5) default 'N' comment '�������ڵ�',
	udate datetime default now() comment '��������',
	umdate datetime comment '��������',
	umcheck varchar(5) default 'N' comment '���ϵ���',
	umscheck varchar(5) default 'N' comment 'sms����'
);

create table champion
(
	cpno int primary key AUTO_INCREMENT comment 'è�Ǿ��ȣ',
	cpkname varchar(50) comment '�ѱ��̸�',
	cpnickname varchar(100) comment 'Īȣ',
	cpename varchar(100) comment '�����̸�',
	cpbkimg varchar(100) comment '����̹���',
	cpstdimg varchar(100) comment '�⺻�̹���',
	cpinfo text comment '����',
	cpstory text comment '���丮',
	cpdate DATETIME default now() comment '�ۼ�����',
	cpmdate DATETIME comment '��������'
);

create table position
(
	cpno int comment 'è�Ǿ��ȣ',
	pcode varchar(10) comment '�������ڵ�',
	pname varchar(50) comment '�����Ǹ�',
	foreign key (cpno) references champion(cpno)
);

create table review
(
	rno int primary key AUTO_INCREMENT comment '�򰡹�ȣ',
	uno int comment 'ȸ����ȣ',
	cpno int comment 'è�Ǿ��ȣ',
	rnote DATETIME default now() comment '�ۼ���¥',
	rmdate DATETIME comment '������¥',
	rscore int comment 'è�Ǿ�����',
	foreign key (uno) references user(uno),
	foreign key (cpno) references champion(cpno)
);
insert into user(uid,upw,unickname,uname,upnum,umail,umcheck,umscheck)
values('test',md5('1234'),'nickname ','name','010-0000-0000 ','www@www','Y','N');

insert into user(uid,upw,unickname,uname,upnum,umail,umcheck,umscheck,uadmin )
values('admin',md5('admin'),'admin ','admin','010-0000-0000 ','www@www','Y','N','A');