-- ********************************************************
-- PROIECT BAZE DE DATE
-- 'Platformă de rectrutare IT'
-- UTILIZAREA CASE ȘI COALESCE -> ÎNLOCUIESC DECODE ȘI NVL
-- ********************************************************


-- ****************************
-- 7.1 Clasificare candidaților după experiență
-- ****************************
select
	c.last_name, c.first_name, c.years_of_experience,
	case
		when c.years_of_experience < 2 then 'Junior'
		when c.years_of_experience between 2 and 5 then 'Mid-level'
		else 'Senior'
	end as experience_level
from candidates c
order by experience_level;



-- ****************************
-- 7.2 Înlocuirea valorilor NULL cu un text implicit
-- ****************************
select c.last_name,
	c.first_name,
	coalesce(c.city, 'Oraș necunoscut') as candidate_city
from candidates c
order by city;



-- ****************************
-- 7.3 Extragerea statusurilor aplicațiilor 
-- ****************************
select a.application_id,
	a.status,
	case 
		when a.status = 'Accepted' then 'Candidat acceptat'
		when a.status = 'Rejected' then 'Candidat respins'
		when a.status = 'Pending' then 'Aplicație în așteptare'
		else 'Proces în desfășurare'
	end as status_description
from applications a
order by status_description;  


-- ****************************
-- 7.4 Clasificarea joburilor după salariul maxim
-- ****************************
select j.title,
	j.salary_max,
	case 
		when j.salary_max < 12000 then 'Salariu mediu'
		when j.salary_max between 1200 and 18000 then 'Salariu bun'
		when j.salary_max > 18000 then 'Salariu foarte bun'
		else 'Salariu necunoscut'
	end as salary_category
from jobs j
order by salary_category ;