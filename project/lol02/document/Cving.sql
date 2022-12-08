create database Cving;
use Cving

create table movie_info
(
	mcode varchar(50) primary key comment '영화코드',
	title varchar(50) comment '영화제목',
	making_year varchar(50) comment '제작년도',
	release_year varchar(50) comment '개봉년도',
	score varchar(50) comment '평점',
	genre varchar(50) comment '장르',
 	running_time varchar(50) comment '러닝타임',
	age_list varchar(50) comment '연령대',
	poster varchar(50) comment '표지이미지',
	gen_m varchar(50) comment '남자',
	gen_w varchar(50) comment '여자',
	age_10 varchar(50) comment '10대',
	age_20 varchar(50) comment '20대',
	age_30 varchar(50) comment '30대',
	age_40 varchar(50) comment '40대',
	age_50 varchar(50) comment '50대',
	summary text comment '줄거리'
);