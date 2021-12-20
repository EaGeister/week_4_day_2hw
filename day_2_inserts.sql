--INSERT statements for theater
INSERT INTO customer(
	first_name,
	last_name
)VALUES(
	'Ryan',
	'Roadhouse'
);

SELECT *
from customer;



INSERT INTO movie(
	title,
	release_date
)VALUES(
	'Power Ranger the Movie',
	'9999-99-99'
);

SELECT *
FROM movie;

INSERT INTO membership(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info,
	membership_type
) VALUES(
	15,
	'Jon',
	'Buffdude',
	'1449 N Newport ave Stockton, Ca',
	'5555-5555-5555-5555 999 06/22',
	'platinum'
);

SELECT *
FROM membership;

INSERT INTO concession(
	item_name,
	item_cost,
	inventory_amount
) VALUES(
	'Popcorn',
	20.00,
	12
);

INSERT INTO ticket(
	ticket_cost,
	movie_id,
	customer_id,
	member_id
) VALUES(
	9.00,
	3,
	15,
	8
);

SELECT *
FROM ticket;
