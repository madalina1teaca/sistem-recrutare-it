-- ********************************************************
-- PROIECT BAZE DE DATE
-- 'Platformă de rectrutare IT'
-- UTILIZAREA JOIN-URILOR
-- ********************************************************


-- ****************************
-- 8.1 Afișarea candidaților și a joburilor la care aceștia au aplicat
-- ****************************
select
	c.last_name || ' ' || c.first_name as candidate_name,
	j.title as job_title,
	a.application_date,
	case 
		when a.status = 'Accepted' then 'Candidat acceptat'
		when a.status = 'Rejected' then 'Candidat respins'
		when a.status = 'Pending' then 'Aplicație în așteptare'
		else 'Proces în desfășurare'
	end	as status
from candidates c 
join applications a on c.candidate_id = a.candidate_id
join jobs j on a.job_id = j.job_id
order by status ;


-- ****************************
-- 8.2 Afișarea joburilor și a companiilor care le-au publicat
-- ****************************
select
	c.company_name,
	j.title as job_title,
	c.city
from jobs j 
join companies c on j.company_id = c.company_id
order by c.company_name;



-- ****************************
-- 8.3 Afișarea skill-rilor fiecărui candidat
-- ****************************
select
	c.last_name || ' ' || c.first_name as candidate_name,
	s.skill_name,
	cs.level as skill_level
from candidates c 
join candidate_skills cs on c.candidate_id = cs.candidate_id 
join skills s on cs.skill_id = s.skill_id
order by candidate_name ;


-- ****************************
-- 8.4 Afișarea skill-urilor cerute pentru fiecare job
-- ****************************
select
	j.title as job_title,
	s.skill_name 
from jobs j 
join job_skills js on j.job_id = js.job_id
join skills s on js.skill_id = s.skill_id;