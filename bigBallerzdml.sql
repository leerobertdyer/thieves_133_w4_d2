INSERT INTO customer(
    full_name,
    age,
    num_of_visits
)VALUES (
    'Leonard Shatmore',
    72,
    12
)

INSERT INTO customer(
    full_name,
    age,
    num_of_visits
)VALUES (
    'Beatrice Wankstein',
    42,
    1
)

INSERT INTO customer(
    full_name,
    age,
    num_of_visits
)VALUES (
    'Foghat Marshall Torque McDaddy',
    42,
    111
)

UPDATE customer
SET full_name = 'Beatrice Meltronix'
WHERE num_of_visits = 1;

SELECT * FROM customer;

ALTER TABLE movie
ADD COLUMN title VARCHAR(250);

INSERT INTO movie(
    title,
    rating,
    genre,
    release_date
)VALUES (
    'Raiders Of The Lost Taco',
    'R',
    'Comedy',
    '2023-01-01'
);

INSERT INTO movie(
    title,
    rating,
    genre,
    release_date
)VALUES (
    'Raiders Of The Lost Taco',
    'R',
    'Comedy',
    '2023-01-01'
);

INSERT INTO movie(
    title,
    rating,
    genre,
    release_date
)VALUES (
    'Mrs. Merica',
    'NC-17',
    'Gore/Porn',
    '2024-04-20'
);


SELECT * FROM movie;

INSERT INTO ticket(
    price,
    ticket_date
)VALUES (
    9.99,
    '2023-10-31'
);

INSERT INTO ticket(
    price,
    ticket_date
)VALUES (
    9.99,
    '2023-10-31'
);

DELETE FROM ticket
WHERE price > 0;

INSERT INTO ticket(
    movie_id,
    price,
    ticket_date
)VALUES(
    3,
    9.99,
    '2023-10-31'
);

INSERT INTO ticket(
    movie_id,
    price,
    ticket_date
)VALUES(
    3,
    9.99,
    '2023-10-31'
);

INSERT INTO ticket(
    movie_id,
    price,
    ticket_date
)VALUES(
    1,
    9.99,
    '2023-10-31'
);

INSERT INTO ticket(
    movie_id,
    price,
    ticket_date
)VALUES(
    2,
    4.99,
    '2023-10-31'
);


SELECT * FROM customer;


INSERT INTO snacks(
    ticket_id,
    price,
    snack_name
)VALUES(
    3,
    5.99,
    'Gobstoppers'
);

INSERT INTO snacks(
    ticket_id,
    price,
    snack_name
)VALUES(
    3,
    5.99,
    'Soda pop'
);

INSERT INTO snacks(
    ticket_id,
    price,
    snack_name
)VALUES(
    3,
    15.99,
    'LG Popcorn'
);

INSERT INTO snacks(
    ticket_id,
    price,
    snack_name
)VALUES(
    4,
    10.99,
    'Small Popcorn'
);

SELECT SUM(price), snack_name
FROM snacks
GROUP BY snack_name;


INSERT INTO theatre(
    theatre_name,
    theatre_location,
    total_seats,
    customer_id,
    ticket_id
)VALUES(
    'BIG BALLERZ BRITISH THEATRE',
    'Buckston',
    420,
    3,
    3
);

ALTER TABLE theatre
ADD CONSTRAINT make_Ticket_Unique UNIQUE (ticket_id);

INSERT INTO theatre(
    theatre_name,
    theatre_location,
    total_seats,
    customer_id,
    ticket_id
)VALUES(
    'BIG BALLERZ BRITISH THEATRE',
    'Buckston',
    420,
    2,
    3
);  -- Poor idiot tried to copy his friend's ticket and got kicked out...


INSERT INTO theatre(
    theatre_name,
    theatre_location,
    total_seats,
    customer_id,
    ticket_id
)VALUES(
    'The Great American Escape',
    'Waynesville, NC',
    45,
    3,
    6
);

SELECT * from theatre;

-- How would I then go from this theatre table to viewing the movie that customer_id 3 is watching...
-- found join and t.theatre c.customer_id and my brain shut off.. cya in class!