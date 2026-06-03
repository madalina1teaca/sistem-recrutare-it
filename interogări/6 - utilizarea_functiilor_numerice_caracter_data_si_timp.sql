-- ********************************************************
-- PROIECT BAZE DE DATE
-- 'Platformă de rectrutare IT'
-- UTILIZAREA FUNCȚIILOR NUMERICE / CARACTER / DATĂ ȘI TIMP
-- ********************************************************


-- ****************************
-- 6.1 Rotunjirea salariului mediu dorit
-- ****************************
select round(AVG(c.desired_salary ), 0) as rounded_avg_salary
from candidates c;

-- ****************************
-- 6.2 Diferența salarială dintre cel mai mic și cel mai mare salariu oferit
-- ****************************
select MAX(j.salary_max ) - MIN(j.salary_min ) as sallary_difference
from jobs j;


-- ****************************
-- 6.3 Afișarea numelui complet al candidaților folosind majuscule
-- ****************************
select UPPER(
	concat(c.last_name, ' ', c.first_name)
	) as full_name_uppercase
from candidates c
order by full_name_uppercase;


-- ****************************
-- 6.4 Lungimea numelui fiecărei companii
-- ****************************
select c.company_name,
	length(c.company_name ) as company_name_length
from companies c 
order by company_name_length;


-- ****************************
-- 6.5 Extragerea anului aplicării
-- ****************************
select a.application_id,
	extract(year from a.application_date) as application_year
from applications a;


-- ****************************
-- 6.6 Numărul de zile trecute de la data aplicării 
-- ****************************
select  a.application_id,
	current_date - a.application_date as days_since_application
from applications a;