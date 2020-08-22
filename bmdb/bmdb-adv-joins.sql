-- inserts to bmdb outside of create script

-- sql instruction/bmdb/adv-maintenance.sql

-- 1 add 5 new movies, but don't define the id (but define all other fields)
-- 2 add new actor(s), but don't define the id (but define all other fields)
-- 3 add related credit entries

-- bonus:  classic model - full 

insert into actor (FirstName, LastName, Gender, Birthdate) 
values
('Test1', 'Actor', 'M', '1980-05-05'),
('Test2', 'Actor', 'M', '1980-05-05'),
('Test3', 'Actor', 'M', '1980-05-05');

select * from actor;

-- inner join:  data in common between 2 tables

select m.id,title, c.id role 
	from movie as m
	join credit as c
		on m.id - c.Movie ID;

-- inner join credi - actor
select * from credit c
	join actor a
		on c.ActorID = a.ID;
        
-- outer (left) join, all movies and actors assigned
select * from movie
 left join credit
	on movie.id = credit.MovieID;


 

