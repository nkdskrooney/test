set names utf8;
set foreign_key_checks = 0;

drop database if exists toolbox;
create database if not exists toolbox;
use toolbox;

drop table if exists user_info;
create table user_info(
	id int not null primary key auto_increment,
	user_id varchar(16) unique,
	password varchar(16),
	user_name varchar(16),
	user_name_kana varchar(32),
	sex int,
	email varchar(50),
	regist_date datetime,
	update_date datetime
);

INSERT INTO user_info(user_id, password, user_name, user_name_kana, sex, email, regist_date, update_date) VALUES("admin","admin","管理者","かんりしゃ",0,"kanrisya@yahoo.com","2018-05-01 00:00:00","2018-05-01 00:00:00");
INSERT INTO user_info(user_id, password, user_name, user_name_kana, sex, email, regist_date, update_date) VALUES("guest","guest","客","きゃく",0,"kanrisya@yahoo.com","2018-05-01 00:00:00","2018-05-01 00:00:00");

drop table if exists item_info;
create table item_info(
	id int not null primary key auto_increment,
	item_id int unique not null,
	item_name varchar(100) not null,
	item_name_kana varchar(100) not null,
	category_id int not null,
	price int ,
	stock int not null,
	image_file_path varchar(50) not null,
	release_date datetime not null,
	regist_date datetime not null,
	update_date datetime
);

INSERT INTO item_info(item_id, item_name, item_name_kana, category_id, price, stock, image_file_path, release_date, regist_date, update_date) VALUES( 1 ,"ハンマー","はんまー", 1 , 850 , 10 , "./img/hammer.png", "2018-05-01 00:00:00", "2018-05-01 00:00:00", "2018-05-01 00:00:00");
INSERT INTO item_info(item_id, item_name, item_name_kana, category_id, price, stock, image_file_path, release_date, regist_date, update_date) VALUES( 2 ,"包丁","ほうちょう", 2 , 1000 , 10 , "./img/houchou.png", "2018-05-01 00:00:00", "2018-05-01 00:00:00", "2018-05-01 00:00:00");
INSERT INTO item_info(item_id, item_name, item_name_kana, category_id, price, stock, image_file_path, release_date, regist_date, update_date) VALUES( 3 ,"杖","つえ", 3 , 5000 , 3 , "./img/tsue.png", "2018-05-01 00:00:00", "2018-05-01 00:00:00", "2018-05-01 00:00:00");
INSERT INTO item_info(item_id, item_name, item_name_kana, category_id, price, stock, image_file_path, release_date, regist_date, update_date) VALUES( 4 ,"ピッケル","ぴっける", 4 , 3000 , 5 , "./img/pickel.png", "2018-05-01 00:00:00", "2018-05-01 00:00:00", "2018-05-01 00:00:00");
INSERT INTO item_info(item_id, item_name, item_name_kana, category_id, price, stock, image_file_path, release_date, regist_date, update_date) VALUES( 5 ,"グルーガン","ぐるーがん", 1 , 500 , 20 , "./img/gluegun.png", "2018-05-01 00:00:00", "2018-05-01 00:00:00", "2018-05-01 00:00:00");

drop table if exists cart_info;
create table cart_info(
	id int not null primary key auto_increment,
	user_id varchar(16),
	temp_user_id varchar(100),
	item_id int,
	count int,
	regist_date datetime,
	delete_date datetime
	);

drop table if exists purchase_info;
create table purchase_info(
	id int not null primary key auto_increment,
	user_id varchar(16),
	item_id int,
	total_price int,
	count int,
	payment int,
	regist_date datetime,
	delete_date datetime
	);

drop table if exists m_category;
create table m_category(
	id int not null primary key auto_increment,
	category_id varchar(16),
	category_name int,
	regist_date datetime,
	delete_date datetime
	);
