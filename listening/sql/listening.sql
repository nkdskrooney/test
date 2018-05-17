set names utf8;
set foreign_key_checks = 0;

drop database if exists listening;
create database if not exists listening;
use listening;

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
	updated_date datetime
);

drop table if exists item_info;
create table item_info(
	id int not null primary key auto_increment,
	item_id varchar(16) unique,
	item_name varchar(100),
	item_name_kana varchar(100),
	category_id int,
	price int,
	stock int,
	image_file_path varchar(50),
	release_date datetime,
	regist_date datetime,
	update_date datetime
);

drop table if exists cart_info;
create table cart_info(
	id int not null primary key auto_increment,
	user_id varchar(16),
	temp_user_id varchar(100),
	item_id int,
	count int,
	image_file_path varchar(100),
	price int,
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
	user_master_id varchar(16),
	pay varchar(30),
	img_address varchar(50),
	regist_date datetime,
	delete_date datetime
	);

INSERT INTO item_info_transaction(item_name, item_price, item_stock, img_address)
	VALUES("nabowa", 1000, 5, "./img/nabowa.jpg");

INSERT INTO item_info_transaction(item_name, item_price, item_stock, img_address)
	VALUES("rega", 1000, 10, "./img/rega.jpg");

INSERT INTO login_user_transaction(login_id, login_pass, user_name, user_web_address, user_address)
	VALUES("test", "test", "test", "test", "test");

INSERT INTO login_user_transaction(login_id, login_pass, user_name, user_web_address, user_address)
	VALUES("root", "root", "root", "root", "root");