-- ****************************
-- PROIECT BAZE DE DATE
-- 'Platformă de rectrutare IT'
-- UTILIZAREA FUNCȚIILOR DE GRUP
-- ****************************


-- ****************************
-- 5.1 Numărul de candidați din fiecare oraș
-- ****************************
select c.city,
	count(*) as number_of_candidates
from candidates c 
group by city
order by city;


-- ****************************
-- 5.2 Salariul mediu dorit raportat la toți candidații
-- ****************************
select round(AVG(c.desired_salary), 2) as average_desired_salary
from candidates c;


-- ****************************
-- 5.3 Cel mai mic și cel mai mare salariu oferit raportat la toate joburile
-- ****************************
select MIN(j.salary_min ) as minimum_salary,
	MAX(j.salary_max ) as maximum_salary
from jobs j;


-- ****************************
-- 5.4 Orașele cu mai mult de 2 candidați
-- ****************************
select c.city,
	count(*) as no_of_candidate
from candidates c 
group by c.city 
having count(*) > 2;


-- ****************************
-- 5.5 Salariul mediu raportat la salariul maxim oferit de fiecare companie
-- ****************************
select c.company_name,
	round(AVG(j.salary_max ), 2) as average_max_salary
from companies c 
join jobs j on c.company_id = j.company_id 
group by c.company_name 
order by c.company_name;