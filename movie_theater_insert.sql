INSERT INTO customers(
	customer_id,
	first_name,
	last_name,
	email_address,
	age,
	address,
	billing_info
)VALUES(
	1,
	'Patrick',
	'Dineen',
	'patrickjdineen@gmail.com',
	34,
	'3145 Harrison Ave, Brookfield Il, 60513',
	'4242-4242-4242-4242 017 07/25'
);

INSERT INTO movies(
	movie_id,
	title,
	genre,
	rating,
	runtime,
	director
)VALUES(
	1,
	'The Social Network',
	'Drama',
	'PG-13',
	120,
	'David Fincher'
);

INSERT INTO tickets(
	ticket_id,
	ticket_price,
	theater_number,
	show_date,
	movie_id,
	customer_id
)VALUES(
	1,
	11.99,
	5,
	'2/1/2021',
	1,
	1
);

INSERT INTO concessions(
	item_id,
	item_name,
	item_type,
	item_price,
	customer_id
)VALUES(
	1,
	'Milk Duds',
	'candy',
	4.99,
	1
);