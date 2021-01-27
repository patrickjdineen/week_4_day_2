CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(75),
	last_name VARCHAR(75),
	email_address VARCHAR(100),
	age NUMERIC(3),
	address VARCHAR(100),
	billing_info VARCHAR (150)
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	genre VARCHAR (50),
	rating VARCHAR(10),
	runtime NUMERIC(3),
	director VARCHAR(100)
)

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	ticket_price NUMERIC(3,2),
	theater_number NUMERIC(100),
	purchase_date DATE DEFAULT(CURRENT_DATE),
	show_date DATE,
	movie_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL ,
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
	--Ticket links to movies to link the movie information to the ticket
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
	--customer links to ticket to track what customer bought which tickets
)
	
CREATE TABLE concessions(
	item_id SERIAL PRIMARY KEY,
	item_name VARCHAR (100),
	item_type VARCHAR(50),
	item_price NUMERIC(3,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
	--links the purchase of a concession to a specific customer
)