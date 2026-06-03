-- ****************************
-- PROIECT BAZE DE DATE
-- 'Platformă de rectrutare IT'
-- UTILIZAREA OPERATORILOR DE COMPARAȚIE
-- ****************************


-- ****************************
-- 4.1 Candidați cu experiență mai mare de 4 ani
-- ****************************
select c.first_name, c.last_name, c.years_of_experience
from candidates c
where c.years_of_experience > 4
order by c.years_of_experience ;


-- ****************************
-- 4.2 Joburile cu un o maximă salarială între 15000 și 25000
-- ****************************
select j.title, j.salary_max 
from jobs j 
where j.salary_max between 15000 and 25000
order by j.salary_max ;


-- ****************************
-- 4.3 Companiile din București
-- ****************************
select c.company_name, c.city 
from companies c 
where c.city = 'Bucuresti';


-- ****************************
-- 4.4 Candidații care nu sunt din București
-- ****************************
select c.first_name, c.last_name, c.city  
from candidates c 
where c.city <> 'Bucuresti';


-- ****************************
-- 4.5 Joburi care conțin cuvântul 'Engineer'
-- ****************************
select j.title 
from jobs j 
where j.title like '%Engineer%';