-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null unique,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null
-- CONSTRAINT utitle unique (Title)
);

-- Add some movies
 insert into Movie VALUES
 	(1, 'Star Wars', 1977, 'PG', 'George Lucas'),
 	(2, 'Sixteen Candles', 1984, 'PG', 'John Hughes'),
  	(3, 'Fifth Element', 1997, 'PG-13', 'Luc Besson'),
 	(4, 'Better Off Dead', 1985, 'PG', 'Savage Steve Holland'),
    (5, 'Blazing Saddles', 1974, 'R', 'Mel Brooks'),
    (6, 'Knives Out', 2019, 'PG-13', 'Rian Johnson'),
    (7, 'Clue', 1985, 'PG', 'Jonathan Lynn'),
    (8, 'The Sure Thing', 1985, 'PG-13', 'Rob Reiner'),
    (9, 'Tucker and Dale vs Evil', 2010, 'R', 'Eli Craig'),
    (10, 'Bride & Prejudice', 2004, 'PG-13', 'Gurinder Chadha'),
    (11, 'The Usual Suspects', 1995, 'R', 'Bryan Singer'),
    (12, 'Book Club', 2018, 'PG-13', 'Bill Holderman'),
    (13, 'Music and Lyrics', 2007, 'PG-13', 'Marc Lawrence'),
    (14, 'Ferris Bueller''s Day Off', 1986, 'PG-13', 'John Hughes'),
    (15, 'Murder by Death', 1976, 'PG', 'Robert Moore')
    ;
