
set names utf8;
set foreign_key_checks = 0;

drop database if exists miamiburger;

create database if not exists miamiburger;
use miamiburger;


drop table if exists user_info;

create table user_info(
id int not null primary key auto_increment,
user_id varchar(16) unique not null,
password varchar(16) not null,
family_name varchar(32) not null,
first_name varchar(32) not null,
family_name_kana varchar(32) not null,
first_name_kana varchar(32) not null,
sex tinyint default 0 not null,
email varchar(32) not null,
secret_question varchar(2) not null,
secret_answer varchar(32) not null,
status tinyint default 0 not null,
logined tinyint default 0 not null,
regist_date datetime not null,
update_date datetime
);



drop table if exists product_info;

create table product_info(
id int not null primary key auto_increment,
product_id int unique not null,
product_name varchar(100) unique not null,
product_name_kana varchar(100) unique not null,
product_description varchar(255) not null,
category_id int not null,
price int,
image_file_path varchar(100),
image_file_name varchar(50),
release_date datetime not null,
status tinyint default 0 not null,
regist_date datetime not null,
update_date datetime,
foreign key(category_id) references m_category(category_id)

);

drop table if exists cart_info;

create table cart_info(
id int not null primary key auto_increment,
user_id varchar(16),
temp_user_id varchar(128) not null,
product_id int not null,
product_count int not null,
price int not null,
regist_date datetime not null,
update_date datetime,
foreign key(user_id) references user_info(user_id),
foreign key(product_id) references product_info(product_id)
);


drop table if exists purchase_history_info;

create table purchase_history_info(
id int not null primary key auto_increment,
user_id varchar(16) not null,
product_id int not null,
product_count int not null,
price int not null,
regist_date datetime not null,
update_date datetime,
foreign key(user_id) references user_info(user_id),
foreign key(product_id) references product_info(product_id)
);



drop table if exists destination_info;

create table destination_info(
id int not null primary key auto_increment,
user_id varchar(16) not null,
family_name varchar(32) not null,
first_name varchar(32) not null,
family_name_kana varchar(32) not null,
first_name_kana varchar(32) not null,
email varchar(32) not null,
tel_number varchar(13) not null,
user_address varchar(50) not null,
regist_date datetime not null,
update_date datetime
);



drop table if exists m_category;

create table m_category(
id int not null primary key auto_increment,
category_id int unique not null,
category_name varchar(20) unique not null,
category_description varchar(100),
insert_date datetime not null,
update_date datetime
);

drop table if exists create_burger;

create table create_burger (
	id int not null primary key auto_increment,
	createUser_id varchar(16),
	price int,
	option1 int,
	option2 int,
	option3 int,
	option4 int,
	option5 int,
	option6 int,
	option7 int,
	option8 int,
	option9 int,
	option10 int,
	regist_date datetime
);

drop table if exists burger_options;

create table burger_options (
	id int not null primary key auto_increment,
	optionName varchar(50),
	optionPrice int,
	imgUrl varchar(255),
	comment varchar(1000)
);

INSERT INTO m_category(category_id, category_name, category_description, insert_date, update_date) VALUES(0,"全検索","全検索","2018-05-01 00:00:00","2018-05-01 00:00:00");
INSERT INTO m_category(category_id, category_name, category_description, insert_date, update_date) VALUES(1,"バーガー","バーガー単品","2018-05-01 00:00:00","2018-05-01 00:00:00");
INSERT INTO m_category(category_id, category_name, category_description, insert_date, update_date) VALUES(2,"飲み物","飲み物短pン","2018-05-01 00:00:00","2018-05-01 00:00:00");
INSERT INTO m_category(category_id, category_name, category_description, insert_date, update_date) VALUES(3,"サイドメニュー","サイドメニュー単品","2018-05-01 00:00:00","2018-05-01 00:00:00");
INSERT INTO m_category(category_id, category_name, category_description, insert_date, update_date) VALUES(4,"セット","セット","2018-05-01 00:00:00","2018-05-01 00:00:00");
INSERT INTO m_category(category_id, category_name, category_description, insert_date, update_date) VALUES(5,"クリエイトバーガー","欠番","2018-05-01 00:00:00","2018-05-01 00:00:00");

INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(1,"商品","しょうひん","いいものです",1,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");
INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(2,"商品一","しょうひんいち","いいものです",2,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");
INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(3,"商品二","しょうひんに","いいものです",2,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");
INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(4,"商品三","しょうひんさん","いいものです",2,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");
INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(5,"商品四","しょうひんよん","いいものです",1,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");
INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(6,"商品五","しょうひんご","いいものです",1,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");
INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(7,"商品六","しょうひんろく","いいものです",1,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");
INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(8,"商品七","しょうひんしち","いいものです",3,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");
INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(9,"商品八","しょうひんはち","いいものです",3,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");
INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(10,"商品九","しょうひんきゅう","いいものです",3,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");
INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(11,"商品十","しょうひんじゅう","いいものです",1,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");
INSERT INTO product_info(product_id, product_name, product_name_kana, product_description, category_id, price,image_file_path  ,release_date ,status ,regist_date) VALUES(12,"商品十一","しょうひんじゅういち","いいものです",3,200,"./images/hunburger1.jpg","2018-05-01 00:00:00",1,"2018-05-01 00:00:00");

INSERT INTO burger_options (optionName,optionPrice,imgUrl,comment) VALUES ("バンズ上",30,"./images/buns_top.png","普通のバンズ。パサパサしている。");
INSERT INTO burger_options (optionName,optionPrice,imgUrl,comment) VALUES ("バンズ下",30,"./images/buns_bottom.png","普通のバンズ。パサパサしている。");
INSERT INTO burger_options (optionName,optionPrice,imgUrl,comment) VALUES ("バンズ中",30,"./images/buns_middle.png","普通のバンズ。パサパサしている。");
INSERT INTO burger_options (optionName,optionPrice,imgUrl,comment) VALUES ("パティ",100,"./images/paty.png","牛肉100％のパティ。肉汁が出てこない。");
INSERT INTO burger_options (optionName,optionPrice,imgUrl,comment) VALUES ("ベーコン",80,"./images/Bacon.png","焼いたベーコン。カリッカリ。");
INSERT INTO burger_options (optionName,optionPrice,imgUrl,comment) VALUES ("ピクルス",20,"./images/pickle.png","ピクルス。好き嫌いが分かれる");
INSERT INTO burger_options (optionName,optionPrice,imgUrl,comment) VALUES ("チーズ",90,"./images/cheese.png","チェダーチーズ。固まっている。");
INSERT INTO burger_options (optionName,optionPrice,imgUrl,comment) VALUES ("トマト",100,"./images/tomato.png","トマト。みずみずしい。");
INSERT INTO burger_options (optionName,optionPrice,imgUrl,comment) VALUES ("レタス",120,"./images/lettuce.png","レタス。みずみずしい。");

INSERT INTO user_info(user_id, password, family_name, first_name, family_name_kana, first_name_kana, sex, email, secret_question, secret_answer, status, logined, regist_date, update_date) VALUES("admin","admin","管理者","ユーザー","かんりしゃ","ゆーざー",0,"kanrisya@yahoo.com","1","いちご",0,0,"2018-05-01 00:00:00","2018-05-01 00:00:00");
INSERT INTO user_info(user_id, password, family_name, first_name, family_name_kana, first_name_kana, sex, email, secret_question, secret_answer, status, logined, regist_date, update_date) VALUES("guest","guest","一般","ユーザー","いっぱん","ゆーざー",0,"user@yahoo.com","1","いちご",0,0,"2018-05-01 00:00:00","2018-05-01 00:00:00");