create schema census;

-- to se imported dataset-- 
select * from dataset1;
select * from dataset2;

-- number of raws in dataset1 & dataset2 -- 
select count(*) from dataset1;  #640
select count(*) from dataset2;  #640

-- avg sex rato and literacy rate --
select avg(sex_ratio)
from dataset1; 
-- 945.432 --

select avg (literacy)
from dataset1;   #72.30

-- max. literacy rate and sex ratio -- 
select * from dataset1
order by literacy DESC;  
# 97.91 district serchhip state mizoram

select * from dataset1
order by sex_ratio DESC; 
# 1184 District mahe state puducherry


-- literacy of Gujarat and Karnataka in asc. order --
select * from dataset1
where state in ('Gujarat', 'Karnataka')
order by literacy ASC;

-- literacy of Gujarat and Karnataka in dsc. order --
select * from dataset1
where state in ('Gujarat', 'Karnataka')
order by literacy desc;

-- as we can see here that highest literacy rate does not guarantee highest sex ratio --
-- dakshin kannada has highest literacy rate of 88.57 while sexratio is 1020 --
-- while KODAGU has literacy rate of 82.61 while sex ratio of 1019 --
-- hence we can say that sex ratio depends on other parameters also --


-- sexratio of Gujarat and Karnataka in dsc. order --
select * from dataset1
where state in ('Gujarat', 'Karnataka')
order by sex_ratio desc;

-- here highest sexratio is of udupi - 1094 while its literacy rate is 86.24 --
-- though its literacy rate is sufficently high from national avg. --  

-- avg growth --
select round(avg(growth)) from dataset1;

-- avg state growth --
select state, round(avg(growth)) from dataset1
group by state
order by round(avg(growth)) desc; 

-- avg literacy rate --
select round(avg(literacy)) from dataset1;

-- avg state literacy in desc. order --
select state, round(avg(literacy)) from dataset1
group by state
order by round(avg(literacy)) desc; 


-- state with above avg literacy rate -- 
select state,round(avg(literacy)) 
from dataset1
group by state 
having round(avg(literacy)) > 72.30
order by round(avg(literacy)) desc;


-- top 3 avg growth state -- 
select state, round(avg(growth)) from dataset1
group by state
order by round(avg(growth)) desc
limit 3;

-- top 3 state with avg literacy rate -- 
select state,round(avg(literacy)) 
from dataset1
group by state 
order by round(avg(literacy)) desc
limit 3;

-- inner join function to join the dataset1 with dataset2 --
SELECT growth, sex_ratio, literacy, area_km2, population
FROM dataset1
INNER JOIN dataset2
ON dataset1.state = dataset2.state;

-- sum of sex ratio -- 
select sum(sex_ratio) from dataset1;

--- end --- 