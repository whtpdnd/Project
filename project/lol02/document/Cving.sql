create database Cving;
use Cving

create table movie_info
(
	mcode varchar(50) primary key comment '��ȭ�ڵ�',
	title varchar(50) comment '��ȭ����',
	making_year varchar(50) comment '���۳⵵',
	release_year varchar(50) comment '�����⵵',
	score varchar(50) comment '����',
	genre varchar(50) comment '�帣',
 	running_time varchar(50) comment '����Ÿ��',
	age_list varchar(50) comment '���ɴ�',
	poster varchar(50) comment 'ǥ���̹���',
	gen_m varchar(50) comment '����',
	gen_w varchar(50) comment '����',
	age_10 varchar(50) comment '10��',
	age_20 varchar(50) comment '20��',
	age_30 varchar(50) comment '30��',
	age_40 varchar(50) comment '40��',
	age_50 varchar(50) comment '50��',
	summary text comment '�ٰŸ�'
);