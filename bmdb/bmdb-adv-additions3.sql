-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null,
CONSTRAINT unq_movie unique (Title, Year)
);

-- create Actor table
Create table Actor (
ID          integer         primary key auto_increment,
FirstName   varchar(255)    not null,
LastName    varchar(255)    not null,
Gender      varchar(1)      not null,
BirthDate   date            not null,
CONSTRAINT unq_actor unique (FirstName, LastName, BirthDate)
);

 -- create Credit table
 -- business rule - combo of actor+movie must be unique
Create table Credit (
ID         integer			primary key auto_increment,
actorID    integer    		not null,
movieID    integer     		not null,
Role	   varchar(255)		not null,
Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
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
    (15, 'Murder by Death', 1976, 'PG', 'Robert Moore'),
	(16, 'Young Sherlock Holmes', 1985, 'PG-13', 'Barry Levinson'),
    (17, 'Amelie', 2001, 'R', 'Jean-Pierre Jeunet'),
    (18, 'Death at a Funeral', 2007, 'R', 'Frank Oz'),
    (19, 'Hidden Figures', 2016, 'PG', 'Theodore Melfi'),
    (20, 'Men in Black', 1997, 'PG-13', 'Barry Sonnenfeld')
    ;

-- Add some actors
-- Date fields are YYYY-MM-DD
 insert into Actor VALUES
 	(1, 'Mark', 'Hamill', 'M', '1951-09-25'),
	(2, 'Harrison', 'Ford', 'M', '1942-07-13'),
    
	(3, 'Molly', 'Ringwald', 'F', '1968-02-18'),
    (4, 'Anthony Michael', 'Hall', 'M', '1968-04-14'),
    
    (5, 'Bruce', 'Willis', 'M', '1955-03-19'),
    (6, 'Gary', 'Oldman', 'M', '1958-03-21'),
    
    (7, 'John', 'Cusack', 'M', '1966-06-28'),
    (8, 'David', 'Ogden Stiers', 'M', '1942-10-31'),
    
    (9, 'Cleavon', 'Little', 'M', '1939-06-01'),
    (10, 'Gene', 'Wilder', 'M', '1933-06-11'),
    
    (11, 'Daniel', 'Craig', 'M', '1968-03-02'),
    (12, 'Ana', 'de Armas', 'F', '1988-04-30')
    ;
    
-- Add Roles
insert into Credit value
	(1, 1, 1, 'Luke Skywalker'),
    (2, 2, 1, 'Han Solo'),
    (3, 3, 2, 'Samantha Baker'),
    (4, 4, 2, 'Geek')
    ;








