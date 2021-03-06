set names utf8;
set foreign_key_checks = 0;

drop database if exists test;
create database if not exists test;
use test;

drop table if exists user_info;
create table user_info(
	id int not null primary key auto_increment,
	user_id varchar(16) unique,
	password varchar(16),
	family_name varchar(32),
	first_name varchar(32),
	family_name_kana varchar(32),
	first_name_kana varchar(32),
	sex int,
	email varchar(32),
	status int,
	logined int,
	secret_question varchar(32),
	secret_answer varchar(32),
	regist_date datetime,
	updated_date datetime
);

drop table if exists product_info;
create table product_info(
	id int not null primary key auto_increment,
	product_id int,
	product_name varchar(100),
	product_name_kana varchar(100),
	product_description varchar(255),
	category_id int,
	price int,
	image_file_path varchar(100),
	image_file_name varchar(50),
	release_date datetime,
	release_company varchar(50),
	insert_date datetime,
	update_date datetime
);


INSERT INTO user_info(user_id, password, family_name, first_name, family_name_kana, first_name_kana, sex, email, status, logined,secret_question,secret_answer,regist_date,updated_date)
	VALUES("test", "test", "te", "st", "te", "st", 0, "testaddress", 0, 0,"好きな動物は","犬",'1000-01-01 00:00:00','1000-01-01 00:00:00');

INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price, image_file_path, image_file_name, release_date, release_company)
	VALUES("1", "rega", "rega", "市川まさみ", 11, 1000, "./img/rega.jpg", "regajacket", '1000-01-01 00:00:00' ,"itunes");
