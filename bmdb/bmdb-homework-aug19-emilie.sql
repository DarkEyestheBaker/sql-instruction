SELECT * FROM movie;
insert into movie
	values 
            (16, 'Animal House', '1978', 'R', 'John Landis'),
            (17, 'Love Actually', '2003', 'R', 'Richard Curtis'),
            (18, 'The Departed', '2006', 'R', 'Martin Scorsese'),
            (19, 'Lady Bird', '2017', 'R', 'Greta Gerwig');
 
 
 select * from actor;
 insert into actor 
	(firstname, lastname, gender, birthdate)
    values
	('Paul', 'Rudd', 'M', '1969-04-06');
    
    select * from credit;
    
    insert into credit 
    (actorid, movieid, role) values
    (9, 7, 'Danny');
            
            
select * from actor
where firstname = 'molly';

-- insert values without id
insert into actor (FirstName, LastName, Gender, Birthdate) 
values
('Test1', 'Actor', 'M', '1980-05-05'),
('Test2', 'Actor', 'M', '1980-05-05'),
('Test3', 'Actor', 'M', '1980-05-05');

select * from actor;

delete from actor
	where id > 8;
    
select * from movie;
Select * from actor;  

-- inner join: data in common between  2 tables
-- joining data from movie and credit tables
-- you'll only see the movies you have data for from these two tables

select * from movie as m
join credit as c
on movie.id = credit.MovieID;  
-- why we use tablename.field - telling it how to qualify the join, from this table I want x field

-- giving both tables aliases
select m.id, title, c.id, role 
	from movie as m
	join credit as c
		on m.id = c.MovieID;  
        -- pairing the foreign key to primary key relationship
 
 -- doing a join without explicitly saying join. do not do joins this way.
 select * from movie, credit
 where movie.id = credit.MovieID;
 
 -- inner join credit - actor
 select * from credit as c
	join actor as a
	on c.ActorID = a.ID;

 -- outer (left) join, all movies and all actors assigned
 select * from movie
	left outer join credit 
	on movie.ID = credit.MovieID;
  

    