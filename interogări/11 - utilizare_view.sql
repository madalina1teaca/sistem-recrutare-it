-- ********************************************************
-- PROIECT BAZE DE DATE
-- 'Platformă de rectrutare IT'
-- UTILIZAREA VIEW-URILOR
-- ********************************************************

-- ****************************
-- 11.1 Scorul de matching candidat - job 
-- ****************************

create view view_candidate_job_match_score as
select 
	c.candidate_id,
	c.last_name || ' ' || c.first_name as candidate_name,
	j.job_id,
	j.title as job_title,
	cmp.company_name,
	count(cs.skill_id) as matchted_skills,						-- numărul de skill-uri comune
	total.required_skills, 										-- numărul total de skill-uri cerute
	round (
		count(cs.skill_id)::numeric
		/ total.required_skills * 100,
		2
	) as match_percentage 										-- procent compatibilitate
from candidates c 
cross join jobs j 												-- fiecare candidat este comparat cu fiecare job
join companies cmp on j.company_id = cmp.company_id 			-- obține compania
join 
	(
		select 
			js.job_id,
			count(js.skill_id) as required_skills
		from job_skills js 
		group by js.job_id 
	) total
on j.job_id = total.job_id											-- numărul de skill-uri necesare pentru fiecare job
left join job_skills js2 on j.job_id  = js2.job_id 					-- skillurile necesare pentru fiecare job
left join candidate_skills cs on c.candidate_id = cs.candidate_id 	-- verifică dacă un candidat deține skill-urile cerute
	and js2.skill_id = cs.skill_id 
group by 															-- grupare pentru agregate
	c.candidate_id,
	c.last_name,
	c.first_name,
	j.job_id,
	j.title,
	cmp.company_name,
	total.required_skills 
having count(cs.skill_id) > 0										-- elimină perechile fără skill-uri
order by match_percentage desc;										-- sortează după compatibilitate descrescător


-- *** 11.1 - a ***
-- *** verificare VIEW ***
select * from view_candidate_job_match_score;


-- *** 11.1 - b ***
-- *** top match-uri ***
select *
from view_candidate_job_match_score
where match_percentage >= 50;


