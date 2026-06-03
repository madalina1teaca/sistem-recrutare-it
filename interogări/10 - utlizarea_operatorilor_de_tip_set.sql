-- ********************************************************
-- PROIECT BAZE DE DATE
-- 'Platformă de rectrutare IT'
-- UTILIZAREA OPERATORILOR DE TIP SET 
-- ********************************************************


-- ****************************
-- 10.1 Afișarea tuturor orașelor în care se află candidați sau companii
-- ****************************
select c.city 
from candidates c
where c.city is not null

union

select cmp.city 
from companies cmp;



-- ****************************
-- 10.2 Afișarea  orașelor comune candidaților și companiilor
-- ****************************
select c.city 
from candidates c
where c.city is not null

intersect 

select cmp.city 
from companies cmp;



-- ****************************
-- 10.3 Afișarea orașelor care au candidați, dar nu și companii
-- ****************************
select c.city 
from candidates c
where c.city is not null 

except

select cmp.city 
from companies cmp; 


-- ****************************
-- 10.4 Listă comună de persoane: candidați și recrutori
-- ****************************
select 
	c.last_name || ' ' || c.first_name as full_name,
	'Candidate' as role
from candidates c 

union 

select 
	r.last_name || ' ' || r.first_name as full_name,
	'Recruiter' as role
from recruiters r;