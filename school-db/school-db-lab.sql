select * from student;

select * from course;

select * from enrolled;

-- Alpha students by last name
select * from student
	where middleinitial is null
	order by lastName;
  
-- Students by state
select * from student
	order by state;


-- # of students each state?
select count(*), state
	from student
	group by state;
    
-- states having more than 3 students
select count(*), state
	from student
	group by state
		having count(*) >3;

-- oldest student 
select * from student
	where birthday = (
		select min(birthday) from student);
    
-- oldest student (sub select - pg 26 Subquery)
select * from student
	order by birthday asc;


-- youngest student
select * from student
	order by birthday desc;
    
-- subject with the most classes
select subject, count(*) 
	from course
    group by subject;

-- grades by qtr (on compares two foreign keys "c.id" = courseID)
select * from enrolled
	join course c
		on courseID = c.id;
        
-- grades by qtr 
select grade, quarter
	from enrolled e
		join course c
        on courseID = c.ID
	order by quarter;
    
-- grades by qtr, w/student & course name 
select lastname, firstname, c.name, subject, grade, quarter
	from enrolled e
		join course c
			on courseID = c.id
		join student s
			on s.id = e.studentID
	order by lastname;

-- grades by courseID
Select * from enrolled 

-- grades ordered by course (resolving courseID to courseName)
Select * from course
	order by 

-- List all students not enrolled in a course - if any
/* Student Enrollment Report
	- list all students; lname, fname, 
    - course name, if enrolled
*/
select s.id, lastname, firstname, name
	from student s
    left join enrolled e
		on s.id = e.studentID
	left join course c
		on e.courseID = c.id;
        
select * from enrolled
	where studentID = 3;

-- List all student enrollments (name, course, grade/qtr)





