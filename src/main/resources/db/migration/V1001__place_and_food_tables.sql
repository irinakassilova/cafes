CREATE TABLE places (
    id serial primary key NOT NULL,
    name varchar(128) NOT NULL,
    description varchar(128) NOT NULL,
    image varchar(128) NOT NULL
);

CREATE TABLE foods (
    id  serial primary key NOT NULL,
    name varchar(128) NOT NULL,
    image varchar(450) NOT NULL,
    price int NOT NULL,
    place_id int NOT NULL,
    CONSTRAINT fk_food_place FOREIGN KEY (place_id) REFERENCES places (id)
);