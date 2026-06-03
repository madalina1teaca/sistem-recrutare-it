# Sistem de recrutare IT
## Proiect pentru disciplina Baze de Date
### Autor
Teacă Mădălina-Elena
### Tehnologii utilizate
* PostgresSQL
* DBeaver
* SQL
* GitHub


## Cuprins
1. Introducere
2. Analiza cerințelor
3. Descrierea domeniului
4. Modelarea conceptuală
5. Modelarea logică
6. Normalizarea bazei de date
7. Implementarea bazei de date
8. Operații DDL
9. Operații DML
10. Interogări SQL
11. View-uri
12. Concluzii
13. Bibliografie

## 1. Introducere
În contextul actual al digitalizării și al dezvoltării accelerate a industriei IT, procesele de recrutare au devenit din ce în ce mai complexe. Companiile caută candidați cu compentențe tehnice specifice, iar evaluarea compatibilității dintre cerințele unui job și profilul unui candidat reprezintă un factor esențial pentru succesul procesului de recrutare.

Scopul acestui proiect este proiectarea și implementarea unei baze de date relaționale care să permită gestionarea informațiilor specifice unei platforme de recrutare IT. Sistemul facilitează administrarea companiilor, recrutorilor, candidaților, joburilor disponibile, skill-urilor tehnice, aplicațiilor trimise și interviurilor.

## 2. Analiza cerințelor 
Sistemul trebuie să permită:
* Gestionarea companiilor care publică joburi
* Gestionarea recrutorilor asociați companiilor
* Gestionarea candidaților și a informațiilor despre aceștia
* Gestionarea skill-urilor tehnice
* Asocierea skill-urilor cu candidații
* Asocierea skill-urilor cu joburile
* Gestionarea aplicărilor trimise de candidați
* Gestionarea interviurilor
* calcularea compatibilității dintre candidați și joburi

Pentru realizarea acestor funcționalități a fost proiectată o bază de date relațională alcătuită din nouă tabele principale și două tabele de legătură.

## 3. Descrierea domeniului
Domeniul ales pentru acest proiect este recrutarea în industria IT.

În ultimii ani, piața IT din România a cunoscut o dezvoltare semnificativă, ceea ce a dus la o creștere a cererii pentru specialiști în domenii precum dezvoltare software, analiză de date, securitate cibernetică, cloud computing și inteligență artificială.
Procesul de recrutare implică mai multe entități:
* companii care publică joburi
* recrutori care gestionează procesul de selecție
* candidați care aplică pentru poziții
* skill-uri tehnice necesare pentru ocuparea pozițiilor
* interviuri și evaluări

Baza de date propusă urmărește modelarea acestor procese și oferă posibilitatea realizării unor analize privind compatibilitatea dintre candidați și joburi.

## 4. Modelarea conceptuală
Modelarea conceptuală a fost realizată utilizând o diagramă **Entitate-Relație (ERD)**.

### Diagrama Entitate-Relație
![Diagrama Entitate-Relație](/erd/postgres%20-%20recruitment_db_2026%20-%20public.png)

Principalele entități identificate sunt:
* `companies`
* `recruiters`
* `candidates`
* `jobs`
* `skills`
* `applications`
* `interviews`

Pentru implementarea relațiilor many-to-many au fost introduse tabelele:
* `candidate_skills`
* `job_skills`

## 5. Relații între entități

### Relații One-To-Many (1)

#### `companies` -> `recruiters`
O companie poate avea mai mulți recrutori, însă un recrutor aparține unei singure companii.

#### `companies` -> `jobs`
O companie poate publica mai multe joburi.

#### `candidates` -> `applications`
Un candidat poate trimite mai multe aplicații.

#### `jobs` -> `applications`
Un job poate primi mai multe aplicații.

#### `applications` -> `interviews`
O aplicație poate avea unul sau mai multe interviuri.

### Relații Many-To-Many (M)

#### `candidates` <-> `skills`
Un candidat poate deține mai multe skill-uri, iar un skill poate fi deținut de mai mulți candidați.
Relația este implementată prin tabela: `candidate_skills`

#### `jobs` <-> `skills`
Un job poate necesita mai multe skill-uri, iar un skill poate fi solicitat de mai multe joburi.
Relația este implementată prin tabela: `job_skills`

## 6. Normalizarea bazei de date
Baza de date a fost normalizată până la **Forma Normală 3 (3NF)**.

### Prima Formă Normală (1NF)
Toate atributele sunt atomice și nu există grupuri repetitive.

### A Doua Formă Normală (2NF)
Toate atributele non-cheie depind complet de cheia primară.

### A Treia Formă Normală (3NF)
Nu există dependențe tranzitive între atributele non-cheie.
Prin utilizarea tabelelor de legătură s-a eliminat redundanța și s-a asigurat integritatea datelor.

## 7. Implementarea bazei de date
Implementarea a fost realizată utilizând **PostgresSQL**.

Au fost definite:
* chei primare
* chei străine
* constrângeri de integritate referențială
* relații între tabele

Baza de date conține următoarele tabele:
* `companies`
* `recruiters`
* `candidates`
* `skills`
* `jobs`
* `candidate_skills`
* `job_skills`
* `applications`
* `interviews`

## 8. Operații DDL

În cadrul proiectului au fost utilizate următoarele operații DDL:

### `CREATE TABLE`
Pentru definirea structurii tabelelor.

### `ALTER TABLE`
Pentru modificarea structurii tabelelor.
Exemplu:
```
ALTER TABLE jobs
ADD COLUMN remote_option VARCHAR(20);
```

### `DROP TABLE`
Pentru ștergerea unui obiect din baza de date.
Exemplu:
`DROP TABLE temporary_test_table;`

## 9. Operații DML

În cadrul proiectului au fost utilizate:

### `INSERT`
Pentru introducerea datelor.

### `UPDATE`
Pentru actualizarea datelor existente.

### `DELETE`
Pentru eliminarea înregistrărilor.

## 10. Interogări SQL

Proiectul include exemple pentru:
* operatori de comparație
* funcții de grup
* funcții numerice
* funcții pentru caractere
* funcții pentru dată și timp
* `CASE`
* `COALESCE`
* `JOIN`-uri
* subcereri
* operatori de tip set

Rezultatele interogărilor sunt disponibile în directorul:
`capturi-ecran-rezultate-interogări`

## 11. View-uri

### `view_candidate_job_match_score`

Pentru a analiza compatibilitatea dintre candidați și joburi a fost implementat view-ul:
`view_candidate_job_match_score`

Acesta calculează:
* numărul skill-urilor compatibile;
* numărul skill-urilor necesare pentru job;
* procentul de compatibilitate.

Formula utilizată este:

`(match_skills / required_skills) × 100`

View-ul reprezintă componenta principală de analiză a proiectului și permite identificarea candidaților potriviți pentru anumite poziții.

## 12. Concluzii
Proiectul demonstrează utilizarea conceptelor fundamentale ale bazelor de date relaționale pentru modelarea unui sistem real din domeniul recrutării IT.

Au fost utilizate concepte precum:
* modelare conceptuală
* normalizare
* chei primare și chei străine
* operații DDL și DML
* interogări SQL complexe
* subcereri
* view-uri
Rezultatul este o bază de date flexibilă și extensibilă care poate constitui fundamentul unei aplicații reale de recrutare.

## 13. Bibliografie
1. PostgreSQL Documentation
    https://www.postgresql.org/docs/
2. DBeaver Documentation
    https://dbeaver.io/docs/
3. Elmasri, R., Navathe, S. - Fundamentals of Database Systems
4. Silberschatz, A., Korth, H., Sudarshan, S. - Database System Concepts
