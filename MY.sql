select * from EMP;
ALTER table emp add column first_name text after emp_name;
select * from emp;
use brillica;
select * from workers;
describe workers;
# count total number labor in each district
select district, count(*) as labor from workers group by district;
# show the sum of lbrcost in each district
select district,sum(lbrcost) as cost from workers group by district;
# show the avg lbrfee in each service
select service, avg(lbrfee) as fee from workers group by service order by fee;


select * from workers;
select * from emp;

------
# show the total number of employee whose name startswith each alphabet
select left(trim(emp_name),1) as alpha, count(*) as total


from emp group by alpha order by total desc;
-----


select * from emp;
# show the minimum ,maximum and avg age of employee in each city 
select city, min(age),max(age) from emp group by city;
# show the maximum and sum of salary in each department
select dept, max(salary) as max_salary,sum(salary) as sum_salary from emp group by dept;
# show the avg and maximum salary in each city but dept should be data analyst
select city, 
avg (salary) as av_sal,
max(salary) as max_sal
from emp where dept ="data analyst" group by city;