create database game_shop;
use game_shop;
create table users
(
	id int NOT NULL auto_increment,
    username varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    PRIMARY KEY (id)
);
create table games
(
	id int NOT NULL auto_increment,
    name varchar(255) NOT NULL,
    price decimal NOT NULL,
    description text NOT NULL,
    image varchar(255) NOT NULL,
	PRIMARY KEY (id)
);
create table orders
(
	id int NOT NULL auto_increment,
    user_id int NOT NULL,
    game_id int NOT NULL,
    order_date datetime NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) references users(id),
    FOREIGN KEY (game_id) references games(id)
);