-- ********************************************************
-- PROIECT BAZE DE DATE
-- 'Platformă de rectrutare IT'
-- UTILIZAREA SUBAPRECIERILOR
-- ********************************************************


-- ****************************
-- 9.1 Candidați cu experiență peste medie
-- ****************************
select 
	c.last_name || ' ' || c.first_name as candidate_name, 
	c.years_of_experience 
from candidates c 
where c.years_of_experience > 
(
	select avg(c2.years_of_experience )
		from candidates c2
)
order by c.years_of_experience;



-- ****************************
-- 9.2 Joburi cu salariul maxim peste media generală
-- ****************************
select j.title, j.salary_max 
from jobs j   
where j.salary_max >
(
	select avg(j2.salary_max)
		from jobs j2
)
order by j.salary_max;



-- ****************************
-- 9.3 Companiile cu joburile cu salariul maxim peste medie
-- ****************************
select c.company_name 
from companies c 
where c.company_id in 
(
	select j.company_id 
	from jobs j 
	where j.salary_max >= 20000
);


-- ****************************
-- 9.4 Candidați care au aplicat la joburi AI
-- ****************************
select 
	c.last_name || ' ' || c.first_name as candidate_name
from candidates c
where c.candidate_id in
(
	select a.candidate_id 
	from applications a 
	where a.job_id in 
	(
		select j.job_id 
		from jobs j 
		where j.title like '%AI%'
	)
);



-- ****************************
-- 9.5 Joburile ce necesită cunoașterea Python
-- ****************************
select j.title as job_title
from jobs j 
where j.job_id in
(
	select js.job_id 
	from job_skills js
	where js.skill_id = 
	(
		select s.skill_id 
		from skills s 
		where s.skill_name = 'Python'
	)
);