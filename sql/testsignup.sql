drop database if exists test;
create database if not exists test;
use test;

create table users (
user_id int primary key not null auto_increment comment 'ユーザーID',
password varchar(255)  comment 'パスワード',
name_kanji varchar(50) not null comment '名前(漢字)',
name_kana varchar(50) not null comment '名前(ふりがな)',
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