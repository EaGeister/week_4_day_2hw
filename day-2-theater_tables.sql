CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);


-- Creating Movies table
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	release_date DATE
);


--Creating membership table
CREATE TABLE membership(
	member_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(100),
	billing_info VARCHAR(100),
	membership_type VARCHAR(100) NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);


--Creating concession table
CREATE TABLE concession(
	item_id SERIAL,
	item_name VARCHAR(100),
	item_value NUMERIC(5,2) NOT NULL,
	inventory_amount INTEGER,
	member_id INTEGER,
	FOREIGN KEY (member_id) REFERENCES membership(member_id)
);

--Creating  a ticket table
CREATE TABLE tickets(
	ticket_id SERIAL,
	ticket_cost NUMERIC(5,2),
	movie_id INTEGER NOT NULL,
	customer_id INTEGER,
	member_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (member_id) REFERENCES membership(member_id)
);