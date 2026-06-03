-- ****************************
-- PROIECT BAZE DE DATE
-- 'Platformă de rectrutare IT'
-- CREAREA TABELELOR
-- ****************************


-- ****************************
-- tabel 'companies'
-- columns: company_id, company_name, industry, founded_year
-- ****************************
create table companies (
	company_id SERIAL primary key,
	company_name VARCHAR(50) not NULL,
	industry VARCHAR(50),
	founded_year INT	
);



-- ****************************
-- tabel 'rectruiters'
-- columns: recruiter_id, first_name, last_name, email, company_id 
-- relationship: many-to-one 
-- related tables: -> (1) companies
-- ****************************
create table recruiters (
	recruiter_id SERIAL primary key,
	first_name VARCHAR(50) not null,
	last_name VARCHAR(50) not null,
	email VARCHAR(100) unique not null,
	company_id INT,
	
	-- FK to companies
	constraint fk_recruiter_company
		foreign key (company_id)
		references companies(company_id)	
);



-- ****************************
-- tabel 'candidates'
-- columns: candidate_id, first_name, last_name, email, years_of_experience, desired_salary, city
-- ****************************
create table candidates (
	candidate_id SERIAL primary key,
	first_name VARCHAR(50) not null,
	last_name VARCHAR(50) not null,
	email VARCHAR(100) unique not null,
	years_of_experience INT default 0,
	desired_salary NUMERIC(10,2),
	city VARCHAR(50)
);



-- ****************************
-- tabel 'skills'
-- columns: skill_id, skill_name, category
-- ****************************
create table skills (
	skill_id SERIAL primary key,
	skill_name VARCHAR(50) unique not null,
	category VARCHAR(50)
);



-- ****************************
-- tabel 'jobs'
-- columns: job_id, title, salary_min, salary_max, experience_required, company_id
-- relationships: many-to-one
-- related tables: -> (1) comapnies
-- ****************************
create table jobs (
	job_id SERIAL primary key,
	title VARCHAR(100) not null,
	salary_min NUMERIC(10,2),
	salary_max NUMERIC(10,2),
	experience_required INT,
	company_id INT,
	
	-- FK to companies
	constraint fk_job_company
		foreign key (company_id)
		references companies(company_id)
);



-- ****************************
-- tabel 'candidate_skills'
-- columns: candidate_id, skill_id, level
-- relationship: many-to-many
-- related tables: candidates <-> skills
-- ****************************
create table candidate_skills (
	candidate_id INT,
	skill_id INT,
	level VARCHAR(20),
	
	primary key (candidate_id, skill_id),
	
	-- FK to candidates
	constraint fk_cs_candidate
		foreign key (candidate_id)
		references candidates(candidate_id),
		
	-- FK to skills
	constraint fk_cs_skill
		foreign key (skill_id)
		references skills(skill_id)		
);


-- ****************************
-- tabel 'job_skills'
-- columns: job_id, skill_id
-- relationship: many-to-many
-- related tables: jobs <-> skills
-- ****************************
create table job_skills (
	job_id INT,
	skill_id INT,
	
	primary key (job_id, skill_id),
	
	-- FK to jobs
	constraint fk_js_job
		foreign key (job_id)
		references jobs(job_id),
	
	--FK to skills
	constraint fk_js_skill
		foreign key (skill_id)
		references skills(skill_id)	
);


-- ****************************
-- tabel 'applications'
-- columns: application_id, candidate_id, job_id, application_date, status
-- relationships: many-to-one, many-to-one
-- related tables: -> (1) candidates, -> (1) jobs
-- ****************************
create table applications (
	application_id SERIAL primary key,
	candidate_id INT,
	job_id INT,
	application_date DATE default CURRENT_DATE,
	status VARCHAR(30),
	
	-- FK to candidates
	constraint fk_application_candidate
		foreign key (candidate_id)
		references candidates(candidate_id),
		
	-- FK to jobs
	constraint fk_application_job
		foreign key (job_id)
		references jobs(job_id)
);


-- ****************************
-- tabel 'interviews'
-- columns: interview_id, application_id, interview_date, interview_type
-- relationships: many-to-one
-- related tables: -> (1) applications
-- ****************************
create table interviews(
	interview_id SERIAL primary key,
	application_id INT,
	interview_date DATE,
	interview_type VARCHAR(50),
	score NUMERIC(4,2),
	
	-- FK to applications
	constraint fk_interview_application
		foreign key (application_id)
		references applications(application_id)
)