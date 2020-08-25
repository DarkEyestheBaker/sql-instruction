-- bmdb genre queries

select id from genre
	where name = 'Comedy';
    
-- 3-table join to list comedy movies
select * 
	from movie m
    join moviegenre mg
		on mg.MovieID = m.ID
	join genre g
		on g.ID = mg.GenreID;
        
-- 3-table join to list comedy movies
select m.title, g.name 
	from movie m
    join moviegenre mg
		on mg.MovieID = m.ID
	join genre g
		on g.ID = mg.GenreID
	where g.id = (select id from genre
					where name = 'Comedy');
                    
/* 5 table join:
	Show all movies, actors, and genres
    - movie title & year, actor fname & lname, & role, genre name
    - 5 tables in order: movie, credit, actor, moviegenre, genre
*/

select m.title, m.year, a.firstName, a.lastName, c.role, g.name
	from movie m
	join credit c
		on c.MovieID = m.ID
	join actor a 
		on a.ID = c.ActorID
	join moviegenre mg
		on mg.MovieID = m.ID
	join genre g 
		on g.ID = mg.GenreID;