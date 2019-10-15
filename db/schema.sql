### Schema

CREATE DATABASE hidden_tallent_db;

USE hidden_tallent_db;

CREATE TABLE artist
(
	id int NOT NULL AUTO_INCREMENT,
	artist_name varchar(255) NOT NULL,
	email varchar(100),
	city varchar(100)
	PRIMARY KEY (id)
);

CREATE TABLE artwork
(
	id int NOT NULL AUTO_INCREMENT,
	title varchar(255) NOT NULL,
	genre varchar(255) NOT NULL,
	comment varchar(500) NOT NULL,
	artist_id int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (artist_id) REFERENCES artist(id)
);
