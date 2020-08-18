SELECT * FROM classic_model.customers;

-- count function
select count(*) from classic_model.customers;

-- count with alias
select count(*) as row_count 
  from classic_model.customers ;

-- count with alias, shorthand
select count(*) row_count 
  from classic_model.customers;
  
  -- sum function
  select sum(creditlimit)
  from classic_model.customers;
  
  -- avg & format function
  select format(avg(creditlimit),2)
    from classic_model.customers;
    
  -- avg, format, & concat function
select concat('$',format(avg(creditlimit),2)) as avg_credit_limit
    from classic_model.customers;   
    
  -- group by: avg, format, & concat function by country
select country, concat('$',format(avg(creditlimit),2)) as avg_credit_limit
    from classic_model.customers
	  group by country
       order by avg(creditlimit) desc;   
      
  -- group by, having avg, format, & concat function by country where > than zero
select country, concat('$',format(avg(creditlimit),2)) as avg_credit_limit
    from classic_model.customers
	  group by country
      having avg(creditlimit) > 0
       order by avg(creditlimit) desc;   

-- min credit limit
select min(creditlimit)
    from classic_model.customers


      

