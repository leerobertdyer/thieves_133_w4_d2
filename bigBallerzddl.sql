CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    age INTEGER NOT NULL,
    num_of_visits INTEGER
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    rating VARCHAR(255),
    genre VARCHAR(255),
    release_date DATE
);

SELECT * FROM movie;

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    movie_id INTEGER REFERENCES movie(movie_id),
    price FLOAT,
    ticket_date DATE
);

CREATE TABLE snacks( -- Not spelling concesscscions ever again... more like concussions
    snack_id SERIAL PRIMARY KEY,
    ticket_id INTEGER REFERENCES ticket(ticket_id),
    price FLOAT,
    snack_name VARCHAR(255)
);

CREATE TABLE theatre( -- I just now after making all this realized this is the british spelling FML
    theatre_id SERIAL PRIMARY KEY,
    theatre_name VARCHAR(255),
    theatre_location VARCHAR(255),
    total_seats INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);
