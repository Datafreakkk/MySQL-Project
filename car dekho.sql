SELECT * FROM cars.car_dekho;
use cars;

-- read data --
select * from car_dekho;

-- total cars ; count --
select count(name) from car_dekho;

-- cars ava. in 2023 (name) --
select name from car_dekho
where year = 2023;

-- car ava. in 2023 (count) -- 
select count(name) from car_dekho
where year = 2023;

-- car ava. in 2020, 2021, 2022 --
select count(*) from car_dekho
where year = 2020;  #74

select count(*) from car_dekho
where year = 2021; #7

select count(*) from car_dekho
where year = 2022; #7

-- combined of 2020,2021,2022 --
select count(*) from car_dekho
where year in (2020,2021,2022) group by year;

-- year wise car count --
select year, count(*) from car_dekho group by year;

-- diesel cars in 2020 -- 
select count(*) from car_dekho 
where fuel = 'diesel' and year = 2020;

-- petrol cars in 2020 --
select count(*) from car_dekho
where fuel = 'petrol' and year = 2020;  #51

-- all fuel car group  by year --
select year, count(*) from car_dekho 
where fuel = 'petrol'
group by year;

select year, count(*) from car_dekho 
where fuel = 'diesel'
group by year;

select year, count(*) from car_dekho 
where fuel = 'cng'
group by year;

-- 100 cars in a given year which year had more than 100 cars ? --
select year, count(*) from car_dekho
group by year
having count(*)>100;

-- all car count between 2015 and 2023 --
select count(*) from car_dekho
where year between 2015 and 2023;  #4124

-- all car detail between 2015 and 2023 -- 
select * from car_dekho
where year between 2015 and 2023;

-- END --