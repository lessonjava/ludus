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
	foreign key(item_genre) references genre(item_genre) on update cascade on delete cascade
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
	item_name varchar(100) not null,
	order_count int not null,
	subtotal decimal not null,
	item_img01 varchar(255) not null default 'img/Product/0default.jpg',
	delete_flg boolean default FALSE,
	registration_date datetime not null default current_timestamp,
	updated_date datetime not null default current_timestamp,
	foreign key(item_id) references item(item_id) on update cascade on delete cascade,
	primary key(user_id,item_id)
);



create table purchase(
	purchase_id int not null auto_increment,
	user_id int not null,
	item_id int not null,
	item_name varchar(100) not null,
	order_count int not null,
	subtotal decimal not null,
	payment_method int not null,
	shipping_address varchar(255) not null,
	purchase_date datetime not null default current_timestamp,
	updated_date datetime not null default current_timestamp,
	primary key(purchase_id,item_id)
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

	DELETE FROM users;

insert into users(password,name_kanji,name_hira,postal,address1,address2,phone_number,phone_email,user_flg)values(
"1234","赤羽根","あかばね","1234567","東京都","北区","08011112222","aaa@gmail.com",3),(
"1234","秋月","あきづき","1234567","東京都","　　","08011112222","bbb@gmail.com",3),(
"1234","音無","おとなし","1234567","東京都","　　","08011112222","ccc@gmail.com",2),(
"1234","天海","あまみ","1234567","神奈川県","二宮町","08011112222","haruka@gmail.com",1),(
"1234","如月","きさらぎ","1234567","東京都","渋谷区","08011112222","chihaya@gmail.com",1),(
"1234","星井","ほしい","1234567","東京都","港区","08011112222","miki@gmail.com",1),(
"1234","高槻","たかつき","1234567","東京都","調布市","08011112222","yayoi@gmail.com",1),(
"1234","萩原","はぎわら","1234567","東京都","足立区","08011112222","yukiho@gmail.com",1),(
"1234","菊池","きくち","1234567","東京都","　　","08011112222","makoto@gmail.com",1),(
"1234","双海","ふたみ","1234567","東京都","　　","08011112222","mami@gmail.com",1),(
"1234","双海","ふたみ","1234567","東京都","　　","08011112222","ami@gmail.com",1),(
"1234","水瀬","みなせ","1234567","東京都","　　","08011112222","iori@gmail.com",1),(
"1234","三浦","みうら","1234567","東京都","　　","08011112222","azusa@gmail.com",1),(
"1234","我那覇","がなは","1234567","東京都","　　","08011112222","hibiki@gmail.com",1),(
"1234","四条","しじょう","1234567","東京都","　　","08011112222","takane@gmail.com",1);


insert into genre(
	item_genre)values
	('ドーナツ'),
	('マカロン'),
	('ブラウニー'),
	('チョコ');

insert into item(item_name,item_genre,price,item_detail,item_img01,stock)values(
	'ドーナツ プレーン','ドーナツ',130,'ふんわりもっちり食感の素朴なおいしさ。','ドーナツプレーン.jpg',99),(
	'ドーナツ 紫いも','ドーナツ',130,'紫いものやさしい甘味がする、ふんわりもっちり食感。','ドーナツ紫いも.jpg',99),(
	'ドーナツ きなこ','ドーナツ',130,'きなこのやさしい風味がする、ふんわりもっちり食感。','ドーナツきなこ.jpg',99),(
	'オールドファッション','ドーナツ',108,'自然な甘みのサクサク食感。','ドーナツオールド.jpg',99),(
	'チョコファッション','ドーナツ',130,'クッキータイプの生地にチョコレートをコーティング。','ドーナツチョコ.jpg',99),(
	'オールドファッション ハニー','ドーナツ',130,'しっかりとした甘さが人気！。','ドーナツハニー.jpg',99),(
	'チョコレート','ドーナツ',100,'スイートなミルクチョコレート風味。','ドーナツチョコレート.jpg',99),(
	'ストロベリーリング','ドーナツ',130,'いちごミルク風味のチョコが甘酸っぱい！','ドーナツストロベリー.jpg',99),(
	'ゴールデンチョコレート','ドーナツ',130,'カリカリ食感トッピング！砂糖、小麦粉、卵黄などを練りあわせて粒状にし、乾燥させたゴールデンチョコレート。カリッとした歯ざわりが、子供たちにも大人気！','ドーナツゴールデン.jpg',99);

insert into item(item_name,item_genre,price,item_detail,item_img01,stock)values(
	'マカロン マッチャ','マカロン',180,'マカロンに初めて「和」を取り入れたパリでも大人気の商品です。','マカロンマッチャ.jpg',99),(
	'マカロン フレーズ','マカロン',180,'苺の甘くて芳醇な香りが溶け込みました。','マカロンフレーズ.jpg',99),(
	'マカロン キャラメル サレ','マカロン',180,'シェフが得意とするキャラメルブールサレを活かした逸品です。','マカロンサレ.jpg',99),(
	'マカロン シトロン','マカロン',180,'シトロンの爽やかな酸味の切れ味が絶妙な風味。','マカロンシトロン.jpg',99),(
	'マカロン カフェ','マカロン',180,'カプチーノをイメージしたほろ苦さが活きたマカロンです','マカロンマッチャ.jpg',99),(
	'マカロン ショコラ','マカロン',180,'濃厚なショコラを贅沢に愉しんで頂くために誕生した逸品です。','マカロンマッチャ.jpg',99),(
	'マカロン フランボワーズ','マカロン',180,'フランスで最も好まれる木苺の甘酸っぱい美味しさをぎゅっと閉じ込めました。','マカロンフランボワーズ.jpg',99),(
	'マカロン セザム','マカロン',180,'黒胡麻をたっぷり練り込んだガナッシュは滋味深い味わいです。','マカロンセザム.jpg',99),(
	'マカロン アールグレイ','マカロン',180,'食べる前から漂う紅茶の香りは、食べた後にまで優雅な余韻を残します。','マカロンアールグレイ.jpg',99);

insert into item(item_name,item_genre,price,item_detail,item_img01,stock)values(
	'ファッジブラウニー6枚入り','ブラウニー',1037,'ファッジブラウニー誕生の逸話はユニークです。
	本当はチョコレートケーキを作りたかったのに、なぜか失敗してペシャンコに。
	でもこの失敗作、食べてみたら意外なほどにおいしかったのです。
	そんな強運なファッジブラウニーには、ケーキを超える濃厚なコクと深み、クッキーにはないしっとり感が備わって、まさに"いいとこどり"のおいしさ。
	大きめにカットしたクルミの食感と最高級チョコレートの芳醇な風味をぜひご堪能下さい。','ブラウニー1.jpg',99),(
	'ファッジブラウニー12枚入り','ブラウニー',2074,'ファッジブラウニー誕生の逸話はユニークです。
	本当はチョコレートケーキを作りたかったのに、なぜか失敗してペシャンコに。
	でもこの失敗作、食べてみたら意外なほどにおいしかったのです。
	そんな強運なファッジブラウニーには、ケーキを超える濃厚なコクと深み、クッキーにはないしっとり感が備わって、まさに"いいとこどり"のおいしさ。
	大きめにカットしたクルミの食感と最高級チョコレートの芳醇な風味をぜひご堪能下さい。','ブラウニー2.jpg',99),(
	'ファッジブラウニー18枚入り','ブラウニー',3110,'ファッジブラウニー誕生の逸話はユニークです。
	本当はチョコレートケーキを作りたかったのに、なぜか失敗してペシャンコに。
	でもこの失敗作、食べてみたら意外なほどにおいしかったのです。
	そんな強運なファッジブラウニーには、ケーキを超える濃厚なコクと深み、クッキーにはないしっとり感が備わって、まさに"いいとこどり"のおいしさ。
	大きめにカットしたクルミの食感と最高級チョコレートの芳醇な風味をぜひご堪能下さい。','ブラウニー3.jpg',99),(
	'ウォルナッツブラウニー6枚入り','ブラウニー',1037,'フレイバーの焼菓子の中で最も愛されているブラウニー。
	ウォルナッツブラウニーの特徴は、なんといっても大きなクルミの風味と食感。
	カリフォルニアのクルミをたっぷり散りばめた、香ばしい味わいをお楽しみいただけます。','ブラウニー4.jpg',99),(
	'ウォルナッツブラウニー12枚入り','ブラウニー',2074,'フレイバーの焼菓子の中で最も愛されているブラウニー。
	ウォルナッツブラウニーの特徴は、なんといっても大きなクルミの風味と食感。
	カリフォルニアのクルミをたっぷり散りばめた、香ばしい味わいをお楽しみいただけます。','ブラウニー5.jpg',99),(
	'ウォルナッツブラウニー18枚入り','ブラウニー',3110,'フレイバーの焼菓子の中で最も愛されているブラウニー。
	ウォルナッツブラウニーの特徴は、なんといっても大きなクルミの風味と食感。
	カリフォルニアのクルミをたっぷり散りばめた、香ばしい味わいをお楽しみいただけます','ブラウニー6.jpg',99);

insert into item(item_name,item_genre,price,item_detail,item_img01,stock)values(
	'プラリネショコラ（13種14個入）','チョコ',1080,'宝石のような輝きを放つ、ひと粒チョコレートの詰め合わせ。
	フルーツや洋酒、ナッツなど、さまざまな味わいをお楽しみいただけます。
	贈り物にはもちろん、自分へのごほうびにもおすすめ。
	※メダル形のチョコレートは2枚重ねです。','チョコ1.jpg',99),(
	'プラリネショコラ（16種21個入）','チョコ',1620,'宝石のような輝きを放つ、ひと粒チョコレートの詰め合わせ。
	フルーツや洋酒、ナッツなど、さまざまな味わいをお楽しみいただけます。
	贈り物にはもちろん、自分へのごほうびにもおすすめ。
	※メダル形のチョコレートは2枚重ねです。','チョコ2.jpg',99),(
	'プラリネショコラ（17種28個入）','チョコ',2160,'宝石のような輝きを放つ、ひと粒チョコレートの詰め合わせ。
	フルーツや洋酒、ナッツなど、さまざまな味わいをお楽しみいただけます。
	贈り物にはもちろん、自分へのごほうびにもおすすめ。
	※メダル形のチョコレートは2枚重ねです。','チョコ3.jpg',99),(
	'プラリネショコラ（17種43個入）','チョコ',3240,'宝石のような輝きを放つ、ひと粒チョコレートの詰め合わせ。
	フルーツや洋酒、ナッツなど、さまざまな味わいをお楽しみいただけます。
	贈り物にはもちろん、自分へのごほうびにもおすすめ。
	※メダル形のチョコレートは2枚重ねです。','チョコ4.jpg',99),(
	'ショコラ ド フリュイ（5種5個入）','チョコ',648,'フルーツとチョコが織り成す、酸味と甘みのハーモニー。
	とろとろジャム＆ホワイトチョコをチョコレートで包んだオレンジ、ストロベリー。フルーツ風味のソフトチョコをチョコレートでコーティングした、カシス、レモン、ラズベリー。
	5つのフルーツのとろけるような味わい。','チョコ5.jpg',99),(
	'ショコラ ド フリュイ（5種10個入）','チョコ',1080,'フルーツとチョコが織り成す、酸味と甘みのハーモニー。
	とろとろジャム＆ホワイトチョコをチョコレートで包んだオレンジ、ストロベリー。フルーツ風味のソフトチョコをチョコレートでコーティングした、カシス、レモン、ラズベリー。
	5つのフルーツのとろけるような味わい。','チョコ6.jpg',99),(
	'小犬と小ねこのチョコレート（3種13個入）','チョコ',540,'小犬と小ねこのなかよしコンビをかたどった、口どけなめらかなひと口サイズのチョコレート。
	小犬のスイートとミルク、小ねこのホワイトの3つの味わいをお楽しみいただけます。','チョコ7.jpg',99),(
	'銀座のレンガ　スイート(12個入)','チョコ',356,'雪のようにとけていく繊細な味わいの生チョコレート。
	スイートチョコレートに生クリームを加えて丁寧に練り合わせました。
	表情ゆたかなカカオのアロマと、ほどよい苦味をお楽しみください。','チョコ8.jpg',99),(
	'銀座のレンガ　スイート(20個入)','チョコ',594,'雪のようにとけていく繊細な味わいの生チョコレート。
	スイートチョコレートに生クリームを加えて丁寧に練り合わせました。
	表情ゆたかなカカオのアロマと、ほどよい苦味をお楽しみください。','チョコ9.jpg',99);



