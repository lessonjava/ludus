use test;
insert into users(
	password,
	name_kanji,
	name_hira,
	postal,
	address1,
	address2,
	phone_number,
	phone_email
)values(
	'12345678',
	'山田',
	'やまだ',
	'1234567',
	'東京都',
	'北千住',
	'08011112222',
	'aaaa@gmail.com'
);

insert into users(
	password,
	name_kanji,
	name_hira,
	postal,
	address1,
	address2,
	phone_number,
	phone_email,
	user_flg
)values(
	'12345678',
	'橘',
	'たちばな',
	'7654321',
	'東京都',
	'北千住',
	'08012345678',
	'ooo@gmail.com',
	3
);