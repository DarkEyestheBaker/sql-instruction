drop table if exists moviegenre;
drop table if exists genre;
-- bmdb - add genre and movie genre tables
-- NOTE:  You must run the bmdb create script first
-- create Genre table
Create table Genre (
ID         	integer		primary key auto_increment,
Genre	varchar(20)	not null unique
);

-- create MovieGenre table
-- business rule - combo of genre+movie must be unique

Create table MovieGenre (
ID			integer 		primary key auto_increment,
MovieID		integer			not null,
GenreID		integer			not null,
Foreign key (GenreID) references Genre(ID),
Foreign key (MovieID) references Movie(ID),
Constraint gnr_mov unique (GenreID, MovieID)
);


-- add genres
Insert into Genre values
(1, 'Action'),
(2, 'Adventure'),
(3, 'Animation'),
(4, 'Biography'),
(5, 'Comedy'),
(6, 'Crime'),
(7, 'Documentary'),
(8, 'Drama'),
(9, 'Family'),
(10, 'Fantasy'),
(11, 'Film Noir'),
(12, 'History'),
(14, 'Horror'),
(15, 'Music'),
(16, 'Musical'),
(17, 'Mystery'),
(18, 'Romance'),
(19, 'Sci-Fi'),
(20, 'Short Film'),
(21, 'Sport'),
(22, 'Superhero'),
(23, 'Thriller'),
(24, 'War'),
(25, 'Western');

-- add Credit
Insert into Credit values


