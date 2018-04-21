set names utf8;
set foreign_key_checks = 0;

drop database if exists listening;
create database if not exists listening;
use listening;

drop table if exists login_user_transaction;
create table login_user_transaction(
	id int not null primary key auto_increment,
	login_id varchar(16) unique,
	user_name varchar(50),
	login_pass varchar(16),
	user_web_address varchar(50),
	user_address varchar(50),
	insert_date datetime,
	updated_date datetime
);

drop table if exists item_info_transaction;
create table item_info_transaction(
	id int not null primary key auto_increment,
	item_name varchar(30),
	item_price int,
	item_stock int,
	insert_date datetime,
	update_date datetime
);

drop table if exists user_buy_item_transaction;
create table user_buy_item_transaction(
	id int not null primary key auto_increment,
	item_transaction_id int,
	total_price int,
	total_count int,
	user_master_id varchar(16),
	pay varchar(30),
	insert_date datetime,
	delete_date datetime
	);

INSERT INTO item_info_transaction(item_name, item_price, item_stock)
	VALUES("ノートBook", 100, 50);

INSERT INTO login_user_transaction(login_id, login_pass, user_name, user_web_address, user_address)
	VALUES("test", "test", "test","test","test");