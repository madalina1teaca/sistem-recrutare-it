-- ****************************
-- PROIECT BAZE DE DATE
-- 'Platformă de rectrutare IT'
-- INSERAREA DATELOR
-- ****************************


-- *** date generate cu ChatGPT ***


-- ****************************
-- inserting data into 'companies'
-- ****************************
insert into companies (company_name, industry, city, founded_year)
values 
('Bitdefender', 'Cybersecurity', 'Bucuresti', 2001),
('UiPath', 'Automation', 'Bucuresti', 2001),
('Endava', 'Software Development', 'Cluj-Napoca', 2000),
('Amazon Romania', 'Cloud Computing', 'Iasi', 2005),
('Adobe Romania', 'Software Development', 'Bucuresti', 2006),
('Oracle Romania', 'Database Systems', 'Bucuresti', 2004),
('IBM Romania', 'Consulting', 'Bucuresti', 1995),
('Accenture Romania', 'IT Consulting', 'Timisoara', 2001),
('Luxoft Romania', 'Software Engineering', 'Cluj-Napoca', 2008),
('Nagarro', 'Digital Engineering', 'Brasov', 2010),
('Microsoft Romania', 'Cloud & AI', 'Bucuresti', 1996),
('Google Romania', 'Technology', 'Bucuresti', 2004),
('Continental Automotive', 'Embedded Systems', 'Timisoara', 2002),
('NTT DATA Romania', 'Enterprise Software', 'Cluj-Napoca', 2000),
('Deloitte Digital', 'Technology Consulting', 'Bucuresti', 2012),
('Infosys Romania', 'Outsourcing', 'Sibiu', 2007),
('Cognizant Softvision', 'Software Development', 'Iasi', 1998),
('Thales Romania', 'Cybersecurity', 'Bucuresti', 2007),
('SAP Romania', 'Enterprise Software', 'Cluj-Napoca', 2002),
('Tremend Software Consulting', 'Software Engineering', 'Bucuresti', 2005);




-- ****************************
-- inserting data into 'recruiters'
-- ****************************
insert into recruiters (first_name, last_name, email, company_id)
values
('Andrei', 'Popescu', 'andrei.popescu@bitdefender.com', 1),
('Maria', 'Ionescu', 'maria.ionescu@uipath.com', 2),
('Alexandru', 'Georgescu', 'alex.georgescu@endava.com', 3),
('Ioana', 'Marinescu', 'ioana.marinescu@amazon.com', 4),
('Vlad', 'Dumitru', 'vlad.dumitru@adobe.com', 5),
('Raluca', 'Stan', 'raluca.stan@oracle.com', 6),
('Mihai', 'Petrescu', 'mihai.petrescu@ibm.com', 7),
('Cristina', 'Ilie', 'cristina.ilie@accenture.com', 8),
('Stefan', 'Radu', 'stefan.radu@luxoft.com', 9),
('Bianca', 'Toma', 'bianca.toma@nagarro.com', 10),
('Daniel', 'Voicu', 'daniel.voicu@microsoft.com', 11),
('Elena', 'Nistor', 'elena.nistor@google.com', 12),
('Robert', 'Munteanu', 'robert.munteanu@continental.com', 13),
('Gabriela', 'Enache', 'gabriela.enache@nttdata.com', 14),
('Florin', 'Neagu', 'florin.neagu@deloitte.com', 15),
('Patricia', 'Dragomir', 'patricia.dragomir@infosys.com', 16),
('Adrian', 'Barbu', 'adrian.barbu@softvision.com', 17),
('Teodora', 'Matei', 'teodora.matei@thales.com', 18),
('Claudiu', 'Pavel', 'claudiu.pavel@sap.com', 19),
('Simona', 'Dobre', 'simona.dobre@tremend.com', 20);




-- ****************************
-- inserting data into 'candidates'
-- ****************************
insert into candidates (first_name, last_name, email, years_of_experience, desired_salary, city)
values
('Mihai', 'Radu', 'mihai.radu@gmail.com', 3, 8500, 'Bucuresti'),
('Elena', 'Dumitrescu', 'elena.dumitrescu@gmail.com', 5, 12500, 'Cluj-Napoca'),
('Cristian', 'Marin', 'cristian.marin@gmail.com', 2, 7000, 'Iasi'),
('Ana', 'Stoica', 'ana.stoica@gmail.com', 4, 11000, 'Timisoara'),
('Victor', 'Popa', 'victor.popa@gmail.com', 6, 15000, 'Bucuresti'),
('Larisa', 'Georgescu', 'larisa.georgescu@gmail.com', 1, 5500, 'Brasov'),
('Andrei', 'Tudor', 'andrei.tudor@gmail.com', 7, 17000, 'Cluj-Napoca'),
('Bianca', 'Nistor', 'bianca.nistor@gmail.com', 3, 9000, 'Sibiu'),
('Paul', 'Enache', 'paul.enache@gmail.com', 5, 13500, 'Bucuresti'),
('Raluca', 'Mihai', 'raluca.mihai@gmail.com', 2, 8000, 'Constanta'),
('George', 'Stan', 'george.stan@gmail.com', 4, 12000, 'Iasi'),
('Diana', 'Voicu', 'diana.voicu@gmail.com', 6, 16000, 'Bucuresti'),
('Alex', 'Barbu', 'alex.barbu@gmail.com', 1, 6000, 'Timisoara'),
('Patricia', 'Ilie', 'patricia.ilie@gmail.com', 8, 20000, 'Cluj-Napoca'),
('Robert', 'Matei', 'robert.matei@gmail.com', 5, 14000, 'Brasov'),
('Teodora', 'Pavel', 'teodora.pavel@gmail.com', 2, 7500, 'Oradea'),
('Stefan', 'Neagu', 'stefan.neagu@gmail.com', 9, 22000, 'Bucuresti'),
('Ioana', 'Petrescu', 'ioana.petrescu@gmail.com', 3, 9500, 'Sibiu'),
('Claudiu', 'Dobre', 'claudiu.dobre@gmail.com', 4, 11500, 'Craiova'),
('Gabriela', 'Marinescu', 'gabriela.marinescu@gmail.com', 7, 18000, 'Cluj-Napoca');




-- ****************************
-- inserting data into 'skills'
-- ****************************
insert into skills (skill_name, category)
values
('Python', 'Programming'),
('Java', 'Programming'),
('JavaScript', 'Programming'),
('C#', 'Programming'),
('SQL', 'Database'),
('PostgreSQL', 'Database'),
('MySQL', 'Database'),
('MongoDB', 'Database'),
('Power BI', 'Data Analytics'),
('Tableau', 'Data Analytics'),
('Excel', 'Data Analytics'),
('Machine Learning', 'Artificial Intelligence'),
('Deep Learning', 'Artificial Intelligence'),
('TensorFlow', 'Artificial Intelligence'),
('PyTorch', 'Artificial Intelligence'),
('AWS', 'Cloud Computing'),
('Azure', 'Cloud Computing'),
('Docker', 'DevOps'),
('Kubernetes', 'DevOps'),
('Git', 'Version Control'),
('Linux', 'Operating Systems'),
('React', 'Frontend'),
('Angular', 'Frontend'),
('Node.js', 'Backend'),
('Spring Boot', 'Backend'),
('Django', 'Backend'),
('REST API', 'Backend'),
('Cybersecurity', 'Security'),
('Networking', 'Security'),
('Agile', 'Project Management');




-- ****************************
-- inserting data in 'jobs'
-- ****************************
insert into jobs (title, salary_min, salary_max, experience_required, company_id)
values
('Data Analyst', 7000, 11000, 2, 2),
('Backend Developer', 9000, 14000, 3, 1),
('Cloud Engineer', 10000, 16000, 4, 4),
('Machine Learning Engineer', 12000, 18000, 5, 11),
('Frontend Developer', 8000, 13000, 2, 5),
('DevOps Engineer', 11000, 17000, 4, 7),
('Cybersecurity Analyst', 9000, 15000, 3, 18),
('Database Administrator', 8500, 14500, 3, 6),
('Business Intelligence Developer', 9500, 15000, 4, 15),
('Full Stack Developer', 10000, 16500, 4, 3),
('AI Research Engineer', 14000, 22000, 6, 12),
('Software Tester', 6000, 9500, 1, 8),
('Mobile Developer', 8500, 14000, 3, 10),
('Embedded Systems Engineer', 10000, 17000, 5, 13),
('Data Engineer', 11000, 17500, 4, 14),
('System Administrator', 7500, 12000, 2, 16),
('Cloud Architect', 15000, 25000, 7, 4),
('Python Developer', 9000, 14500, 3, 17),
('Java Developer', 9500, 15000, 3, 19),
('IT Project Manager', 13000, 21000, 6, 20);



-- ****************************
-- inserting data into 'candidate_skills'
-- ****************************
insert into candidate_skills (candidate_id, skill_id, level)
values
-- Mihai Radu
(1, 1, 'Advanced'),       -- Python
(1, 5, 'Advanced'),       -- SQL
(1, 9, 'Intermediate'),   -- Power BI
(1, 11, 'Advanced'),      -- Excel
-- Elena Dumitrescu
(2, 1, 'Advanced'),
(2, 12, 'Intermediate'),  -- Machine Learning
(2, 14, 'Beginner'),      -- TensorFlow
(2, 16, 'Intermediate'),  -- AWS
-- Cristian Marin
(3, 2, 'Intermediate'),   -- Java
(3, 5, 'Intermediate'),
(3, 20, 'Advanced'),      -- Git
-- Ana Stoica
(4, 3, 'Advanced'),       -- JavaScript
(4, 22, 'Advanced'),      -- React
(4, 27, 'Intermediate'),  -- REST API
-- Victor Popa
(5, 16, 'Advanced'),
(5, 18, 'Advanced'),      -- Docker
(5, 19, 'Intermediate'),  -- Kubernetes
(5, 21, 'Advanced'),      -- Linux
-- Larisa Georgescu
(6, 11, 'Advanced'),
(6, 9, 'Intermediate'),
(6, 5, 'Intermediate'),
-- Andrei Tudor
(7, 2, 'Advanced'),
(7, 25, 'Advanced'),      -- Spring Boot
(7, 20, 'Advanced'),
-- Bianca Nistor
(8, 1, 'Intermediate'),
(8, 26, 'Intermediate'),  -- Django
(8, 5, 'Advanced'),
-- Paul Enache
(9, 4, 'Advanced'),       -- C#
(9, 5, 'Advanced'),
(9, 6, 'Intermediate'),   -- PostgreSQL
-- Raluca Mihai
(10, 3, 'Intermediate'),
(10, 22, 'Intermediate'),
(10, 20, 'Advanced'),
-- George Stan
(11, 8, 'Intermediate'),  -- MongoDB
(11, 24, 'Advanced'),     -- Node.js
(11, 27, 'Advanced'),
-- Diana Voicu
(12, 12, 'Advanced'),
(12, 13, 'Intermediate'), -- Deep Learning
(12, 15, 'Intermediate'), -- PyTorch
(12, 1, 'Advanced'),
-- Alex Barbu
(13, 11, 'Advanced'),
(13, 10, 'Intermediate'), -- Tableau
(13, 30, 'Intermediate'), -- Agile
-- Patricia Ilie
(14, 16, 'Advanced'),
(14, 17, 'Advanced'),     -- Azure
(14, 19, 'Advanced'),
-- Robert Matei
(15, 28, 'Intermediate'), -- Cybersecurity
(15, 29, 'Intermediate'), -- Networking
(15, 21, 'Advanced'),
-- Teodora Pavel
(16, 5, 'Intermediate'),
(16, 6, 'Beginner'),
(16, 20, 'Intermediate'),
-- Stefan Neagu
(17, 16, 'Advanced'),
(17, 17, 'Advanced'),
(17, 18, 'Advanced'),
(17, 19, 'Advanced'),
-- Ioana Petrescu
(18, 9, 'Advanced'),
(18, 10, 'Advanced'),
(18, 11, 'Advanced'),
-- Claudiu Dobre
(19, 2, 'Intermediate'),
(19, 25, 'Intermediate'),
(19, 5, 'Advanced'),
-- Gabriela Marinescu
(20, 1, 'Advanced'),
(20, 12, 'Advanced'),
(20, 14, 'Intermediate'),
(20, 15, 'Intermediate');




-- ****************************
-- inserting data into 'job_skills'
-- ****************************
insert into job_skills (job_id, skill_id)
values
-- Data Analyst
(1, 5),   -- SQL
(1, 9),   -- Power BI
(1, 11),  -- Excel
-- Backend Developer
(2, 2),   -- Java
(2, 25),  -- Spring Boot
(2, 5),   -- SQL
(2, 20),  -- Git
-- Cloud Engineer
(3, 16),  -- AWS
(3, 18),  -- Docker
(3, 19),  -- Kubernetes
(3, 21),  -- Linux
-- Machine Learning Engineer
(4, 1),   -- Python
(4, 12),  -- Machine Learning
(4, 14),  -- TensorFlow
(4, 15),  -- PyTorch
-- Frontend Developer
(5, 3),   -- JavaScript
(5, 22),  -- React
(5, 20),  -- Git
-- DevOps Engineer
(6, 16),  -- AWS
(6, 18),  -- Docker
(6, 19),  -- Kubernetes
(6, 21),  -- Linux
-- Cybersecurity Analyst
(7, 28),  -- Cybersecurity
(7, 29),  -- Networking
(7, 21),  -- Linux
-- Database Administrator
(8, 5),   -- SQL
(8, 6),   -- PostgreSQL
(8, 7),   -- MySQL
-- Business Intelligence Developer
(9, 5),   -- SQL
(9, 9),   -- Power BI
(9, 10),  -- Tableau
(9, 11),  -- Excel
-- Full Stack Developer
(10, 3),   -- JavaScript
(10, 22),  -- React
(10, 24),  -- Node.js
(10, 27),  -- REST API
-- AI Research Engineer
(11, 1),   -- Python
(11, 12),  -- Machine Learning
(11, 13),  -- Deep Learning
(11, 15),  -- PyTorch
-- Software Tester
(12, 5),   -- SQL
(12, 20),  -- Git
(12, 30),  -- Agile
-- Mobile Developer
(13, 3),   -- JavaScript
(13, 24),  -- Node.js
(13, 20),  -- Git
-- Embedded Systems Engineer
(14, 2),   -- Java
(14, 21),  -- Linux
(14, 29),  -- Networking
-- Data Engineer
(15, 1),   -- Python
(15, 5),   -- SQL
(15, 16),  -- AWS
(15, 18),  -- Docker
-- System Administrator
(16, 21),  -- Linux
(16, 29),  -- Networking
(16, 20),  -- Git
-- Cloud Architect
(17, 16),  -- AWS
(17, 17),  -- Azure
(17, 18),  -- Docker
(17, 19),  -- Kubernetes
-- Python Developer
(18, 1),   -- Python
(18, 26),  -- Django
(18, 5),   -- SQL
-- Java Developer
(19, 2),   -- Java
(19, 25),  -- Spring Boot
(19, 5),   -- SQL
-- IT Project Manager
(20, 30);  -- Agile





-- ****************************
-- inserting data into 'applications'
-- ****************************
insert into applications (candidate_id, job_id, application_date, status)
values
-- Mihai Radu aplică pentru Data Analyst
(1, 1, '2026-05-10', 'Accepted'),
-- Elena Dumitrescu aplică pentru ML Engineer
(2, 4, '2026-05-12', 'Pending'),
-- Cristian Marin aplică pentru Backend Developer
(3, 2, '2026-05-14', 'Rejected'),
-- Ana Stoica aplică pentru Frontend Developer
(4, 5, '2026-05-15', 'Interview Scheduled'),
-- Victor Popa aplică pentru Cloud Engineer
(5, 3, '2026-05-16', 'Accepted'),
-- Larisa Georgescu aplică pentru BI Developer
(6, 9, '2026-05-17', 'Pending'),
-- Andrei Tudor aplică pentru Java Developer
(7, 19, '2026-05-18', 'Accepted'),
-- Bianca Nistor aplică pentru Python Developer
(8, 18, '2026-05-19', 'Interview Scheduled'),
-- Paul Enache aplică pentru DBA
(9, 8, '2026-05-20', 'Pending'),
-- Raluca Mihai aplică pentru Full Stack Developer
(10, 10, '2026-05-21', 'Rejected'),
-- George Stan aplică pentru Mobile Developer
(11, 13, '2026-05-22', 'Accepted'),
-- Diana Voicu aplică pentru AI Research Engineer
(12, 11, '2026-05-23', 'Interview Scheduled'),
-- Alex Barbu aplică pentru Software Tester
(13, 12, '2026-05-24', 'Pending'),
-- Patricia Ilie aplică pentru Cloud Architect
(14, 17, '2026-05-25', 'Accepted'),
-- Robert Matei aplică pentru Cybersecurity Analyst
(15, 7, '2026-05-26', 'Interview Scheduled'),
-- Teodora Pavel aplică pentru System Administrator
(16, 16, '2026-05-27', 'Rejected'),
-- Stefan Neagu aplică pentru DevOps Engineer
(17, 6, '2026-05-28', 'Accepted'),
-- Ioana Petrescu aplică pentru Data Analyst
(18, 1, '2026-05-29', 'Pending'),
-- Claudiu Dobre aplică pentru Backend Developer
(19, 2, '2026-05-30', 'Interview Scheduled'),
-- Gabriela Marinescu aplică pentru Machine Learning Engineer
(20, 4, '2026-05-31', 'Accepted');




-- ****************************
-- inserting data into 'interviews'
-- ****************************
insert into interviews (application_id, interview_date, interview_type, score)
values
-- Mihai Radu
(1, '2026-05-20', 'Technical', 9.50),
-- Elena Dumitrescu
(2, '2026-05-22', 'HR', 8.00),
-- Ana Stoica
(4, '2026-05-24', 'Technical', 8.75),
-- Victor Popa
(5, '2026-05-25', 'Technical', 9.20),
-- Larisa Georgescu
(6, '2026-05-26', 'HR', 7.80),
-- Andrei Tudor
(7, '2026-05-27', 'Technical', 9.70),
-- Bianca Nistor
(8, '2026-05-28', 'HR', 8.40),
-- Paul Enache
(9, '2026-05-29', 'Technical', 8.10),
-- Diana Voicu
(12, '2026-05-30', 'Technical', 9.90),
-- Alex Barbu
(13, '2026-06-01', 'HR', 7.50),
-- Patricia Ilie
(14, '2026-06-02', 'Technical', 9.80),
-- Robert Matei
(15, '2026-06-03', 'Technical', 8.60),
-- Stefan Neagu
(17, '2026-06-04', 'Technical', 9.40),
-- Ioana Petrescu
(18, '2026-06-05', 'HR', 8.00),
-- Claudiu Dobre
(19, '2026-06-06', 'Technical', 8.30),
-- Gabriela Marinescu
(20, '2026-06-07', 'Technical', 9.60);



