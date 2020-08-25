-- create table MovieGenre

-- create MovieGenre table
Create table MovieGenre (
ID         	integer			primary key auto_increment,
movieID    	integer     	not null,
Foreign Key (MovieID) references Movie(ID)
Foreign Key (GenreID) references Genre(ID)
);

ALTER TABLE Orders
ADD FOREIGN KEY (MovieID) REFERENCES Genre(GenreID);