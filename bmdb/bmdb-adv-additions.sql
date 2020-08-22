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
    (8, 'We''re No Angels', 1955, 'NR', 'Michael Curtiz'),
    (9, 'Tucker and Dale vs Evil', 2010, 'R', 'Eli Craig'),
    (10, 'Bride & Prejudice', 2004, 'PG-13', 'Gurinder Chadha'),
    (11, 'The Usual Suspects', 1995, 'R', 'Bryan Singer'),
    (12, 'Book Club', 2018, 'PG-13', 'Bill Holderman'),
    (13, 'Music and Lyrics', 2007, 'PG-13', 'Marc Lawrence'),
    (14, 'Ferris Bueller''s Day Off', 1986, 'PG-13', 'John Hughes'),
    (15, 'Murder by Death', 1976, 'PG', 'Robert Moore'),
    ('Young Sherlock Holmes', 1985, 'PG-13', 'Barry Levinson')
    ('Amelie', 2001, 'R', 'Jean-Pierre Jeunet'),
    ('Death at a Funeral', 2007, 'R', 'Frank Oz'),
    ('Hidden Figures', 2016, 'PG', 'Theodore Melfi'),
    ('Men in Black', 1997, 'PG-13', 'Barry Sonnenfeld')
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
    (12, 'Ana', 'de Armas', 'F', '1988-04-30'),
    
    (13, 'Madeline', 'Kahn', 'F', '1942-12-29'),
	(14, 'Tim', 'Curry', 'M', '1946-04-19'),
    
    (15, 'Humphrey', 'Bogart', 'M', '1899-12-25'),
    (16, 'Peter', 'Ustinov', 'M', '1921-04-16'),
    
    (17, 'Tyler', 'Labine', 'M', '1978-04-29'),
    (18, 'Alan', 'Tudyk', 'M', '1971-03-16'),
    
    (19, 'Aishwarya Rai', 'Bachchan', 'F', '1973-11-01'),
    (20, 'Martin', 'Henderson', 'M', '1974-10-08'),
    
    (21, 'Stephen', 'Baldwin', 'M', '1966-05-12'),
    (22, 'Kevin', 'Spacey', 'M', '1959-07-26'),
    
    (23, 'Diane', 'Keaton', 'F', '1946-01-05'),
    (24, 'Jane', 'Fonda', 'F', '1937-12-21'),
    
    (25, 'Hugh', 'Grant', 'M', '1960-09-09'),
    (26, 'Drew', 'Barrymore', 'M', '1975-02-22'),
    
    (27, 'Matthew', 'Broderick', 'M', '1962-03-21'),
    (28, 'Alan', 'Ruck', 'M', '1956-07-01'),
    
    (29, 'Eileen', 'Brennan', 'F', '1932-09-03'),
    (30, 'Truman', 'Capote', 'M', '1924-09-30')
    ;
    
-- Add Roles
insert into Credit value
	(1, 1, 1, 'Luke Skywalker'),
    (2, 2, 1, 'Han Solo'),
    (3, 3, 2, 'Samantha Baker'),
    (4, 4, 2, 'Geek')
    ;








