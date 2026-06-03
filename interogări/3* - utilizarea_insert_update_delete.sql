-- ********************************************************
-- PROIECT BAZE DE DATE
-- 'Platformă de rectrutare IT'
-- UTILIZAREA INSERT, UPDATE, DELETE
-- ********************************************************


-- ****************************
-- 3*.1 Utilizarea funcției UPDATE pentru a schimba applications.application_date 
-- majoritatea interogărilor sunt rulate pe 25.05.2026 -> există zile de aplicare care trec de această dată
-- ex. 6.6 - a  
-- ****************************

update applications a 
set application_date = '2026-04-25'
where a.application_id = 15;

update applications a 
set application_date = '2026-04-26'
where a.application_id = 16;

update applications a 
set application_date = '2026-04-27'
where a.application_id = 17;

update applications a 
set application_date = '2026-04-24'
where a.application_id = 18;

update applications a 
set application_date = '2026-04-23'
where a.application_id = 19;

update applications a 
set application_date = '2026-04-22'
where a.application_id = 20;



-- ****************************
-- 3*.2 Adăugarea unor intrări care să conțină valori NULL 
-- ****************************

-- *** candidates ***
insert into candidates
(first_name, last_name, email, years_of_experience, desired_salary, city)
values
('Denis', 'Vasilescu', 'denis.vasilescu@gmail.com', 1, 5000, NULL),
('Monica', 'Preda', 'monica.preda@gmail.com', 4, 11000, NULL);
-- *** rezultat văzut în 7.2 - b

-- *** jobs ***
insert into jobs
(title, salary_min, salary_max, experience_required, company_id)
values
('Junior QA Intern', 3500, NULL, 0, 8),
('Senior AI Architect', NULL, 32000, 8, 12),
('Principal Cloud Consultant', 20000, 30000, 7, 4),
('Lead Cybersecurity Engineer', 21000, 31000, 9, 18),
('Head of Data Engineering', 23000, NULL, 10, 11);
-- *** rezultat văzut în 7.4 - b


-- ****************************
-- URMĂTOARELE INTEROGĂRI SUNT FĂCUTE DUPĂ CE AM FACUT ULTIMUL SCRIPT - 11 
-- ****************************


-- ****************************
-- 3*.3  ALTER 
-- ****************************
alter table jobs 
add column remote_option VARCHAR(20);

update jobs 
set remote_option = 'Remote'
where job_id in (1, 4, 11, 21);

update jobs j 
set remote_option = 'Hybrid'
where remote_option is null;

select j.job_id, j.title, j.remote_option  
from jobs j;

-- ****************************
-- 3*.4  DELETE 
-- ****************************
insert into candidates (first_name, last_name, email, years_of_experience, desired_salary, city)
values ('Test', 'Candidate', 'test.candidate@gmail.com', 0, 3000, 'Bucuresti');

-- *** 3*.4 - a ***
select * from candidates
order by candidate_id desc
limit 5;

-- ***3*.4 - b ***
delete from candidates
where email = 'test.candidate@gmail.com';

select * from candidates
order by candidate_id desc
limit 5;

-- ****************************
-- 3*.5  DROP 
-- ****************************
create table temporary_test_table (
	test_id SERIAL primary key,
	description VARCHAR(100)	
);

drop table temporary_test_table;
