/*Let's test the maintenance sql
We should test CRUD in the order of:
- Select (Read)
- Insert (Create)
- Update (Update)
- Delete (Delete)
*/

select * from movie;

insert into movie values
    (16, 'Dummy Movie', 2020, 'G', 'Test Director');

update movie
  set title = 'Dummy Movie 2'
  where id = 16;
  
delete from movie
  where id = 16;
