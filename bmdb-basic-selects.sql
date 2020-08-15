-- Select all movies
SELECT * FROM movie;

-- Select a movie by id
-- Uses a 'where' clause
select * from movie
 where id = 2;

-- select certain columns, all rows
Select title, year from movie;

-- select all movies rated PG
Select * from movie
 where rating = 'PG';
 
 -- select all movies rated PG, ordered by title (alpha)
Select * from movie
 where rating = 'PG'
 order by title;
 
 -- select all movies rated PG, ordered by title (alpha, descending)
 select * from movie
  where rating = "PG"
  order by title desc;
  
  -- all movies released in 1977 or 1997
  Select * from movie
   where year = 1977 or year = 1997;
   
   
  -- select statement using the 'in' keyword
    Select * from movie
     where year in (1977, 1997);
     
   -- select statement using a rainge <>
   Select * from movie
     where year > 1980
        and year < 1990;
        
  -- select statement using the 'like" keyword
  -- all movies that start with the letter 's'
  select * from movie
    where title like 's%';
    
     -- all movies that have the letter 'e'
  select * from movie
    where title like '%e%';
  