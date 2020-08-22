select * from movie;

-- create Genre table
Create table Genre (
ID         integer			primary key auto_increment,
movieID    integer     		not null,
Foreign Key (MovieID) references Movie(ID)
);

-- add genres
Insert into Genre values
('Action');
('Adventure');
('Animation');
('Biography');
('Comedy');
('Crime');
('Documentary');
('Drama');
('Family');
('Fantasy');
('Film Noir');
('History');
('Horror');
('Music');
('Musical');
('Mystery');
('Romance');
('Sci-Fi');
('Short Film');
('Sport');
('Superhero');
('Thriller');
('War');
('Western');

