drop database if exists ludus;
create database ludus;
use ludus;

create table genre(
	genre_id int not null auto_increment,
	item_genre varchar(50) not null unique,
	registration_date datetime not null default current_timestamp,
	updated_date datetime not null default current_timestamp,
	primary key(genre_id)
);

create table item(
	item_id int auto_increment,
	item_name varchar(100) not null,
	item_genre varchar(50) not null,
	item_feature int default 0,
	price decimal not null,
	item_catch varchar(100),
	item_detail varchar(255),
	item_img01 varchar(255) not null default 'img/Product/0default.jpg',
	item_img02 varchar(255),
	item_img03 varchar(255),
	stock int not null,
	delete_flg boolean not null default FALSE,
	registration_date datetime not null default current_timestamp,
	updated_date datetime not null default current_timestamp on update current_timestamp,
	primary key(item_id),
	foreign key(item_genre) references genre(item_genre)
);

create table users (
	user_id int primary key not null auto_increment comment 'ユーザーID',
	password varchar(255)  comment 'パスワード',
	name_kanji varchar(50) not null comment '名前(漢字)',
	name_hira varchar(50) not null comment '名前(ふりがな)',
	postal varchar(255) comment '郵便番号',
	address1 varchar(255) comment '住所1',
	address2 varchar(255) comment '住所2',
	phone_number varchar(255) comment '電話番号',
	phone_email varchar(255) unique comment 'メールアドレス',
	login_flg boolean default FALSE comment 'ログインフラグ',
	user_flg int not null default 1 comment 'ユーザー権限',
	creation_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP comment '登録日',
	modification_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新日'
);

create table cart(
	user_id int not null,
	item_id int not null,
	order_count int not null,
	delete_flg boolean default FALSE,
	registration_date datetime not null default current_timestamp,
	updated_date datetime not null default current_timestamp,
	foreign key(item_id) references item(item_id),
	primary key(user_id,item_id)
);

create table purchase(
	purchase_id int not null auto_increment,
	user_id int not null,
	item_id int not null,
	item_name varchar(100) not null,
	order_count int not null,
	payment_method int not null,
	shipping_address varchar(255) not null,
	purchase_date datetime not null default current_timestamp,
	updated_date datetime not null default current_timestamp,
	primary key(purchase_id),
	foreign key(item_id)references item(item_id)
	);

create table brand(
	credit_id int primary key not null,
	brand_name varchar(25) not null,
	brand_num int(6) not null);

create table credit(
	user_id int not null,
	credit_id int not null,
	credit_number varchar(16) not null,
	name_e varchar(50) not null,
	security_code varchar(4) not null,
	expiration_month varchar(2) not null,
	expiration_year varchar(2) not null,
	registration_date datetime not null default current_timestamp,
	updated_date datetime not null default current_timestamp,
	foreign key(credit_id)references brand(credit_id),
	foreign key(user_id) references openconnect.users(user_id)
	);

