# Sistem de recrutare IT

> Proiect de baze de date realizat în **PostgresSQL** pentru gestionarea procesului de recrutare IT și pentru identificarea compatibilității dintre candidați și joburi pe baza skill-urlor pe care le au în comun.


## Descriere
Acest proiect modelează o platformă de recrutare IT care permite gestionarea:
* Companiilor IT
* Recrutorilor
* Candidaților
* Joburilor disponibile
* Skill-urilor tehnice
* Aplicările candidaților
* Interviurilor
* Procesului de *matching* între candidați și joburi

Baza de date a fost proiectată și implementată utilizând **PostgresSQL** și respectă principiile de normalizare până la **Forma Normală 3 (3NF)**.


## Tehnologii utilizate
* PostgresSQL
* DBeaver
* SQL
* GitHub
  
## Diagrama Enitate-Relație
Diagrama prezintă structura bazei de date și relațiile dintre entități.

![Diagrama Enitate-Relație](/erd/postgres%20-%20recruitment_db_2026%20-%20public.png)

## Structura bazei de date
### Tabele Principale

|Tabel|Descriere|
|---|---|
|`companies`|Informații despre companii IT care publică joburile|
|`recruiters`|Informații despre recrutorii asociați companiilor|
|`candidates`|Informații despre candidații înregistrați pe platformă|
|`jobs`|Informații despre joburile publicate de companii|
|`skills`|Informații despre skill-uri tehnice|
|`applications`|Informații despre aplicările candidaților|
|`interviews`|Informațiile despre interview-urile asociate aplicărilor|

### Tabele de legătură

|Tabel|Rol|
|---|---|
|`candidate_skills`|Relație **M** între candidați și skill-uri|
|`job_skills`|Relație **M** între joburi și skill-uri|

## Relațiile implementate

### Relații One-To-Many (1)
* `companies` -> `recruiters`
* `companies` -> `jobs`
* `candidates` -> `applications`
* `jobs` -> `applications`
* `aplications` -> `interviews`


### Relații Many-To-Many (M)
* `candidates` <-> `skills`
* `jobs` <-> `skills`

## Funcționalități implementate

### DDL
* `CREATE TABLE`
* `ALTER TABLE`
* `DROP TABLE`

### DML
* `INSERT INTO`
* `UPDATE`
* `DELETE`

### Interogări SQL
Proiectul conține exemple pentru:
* Operatori de comparație
* Funcții de grup
* Funcții numerice
* Funcții pentru caractere
* Funcții pentru dată și timp
* `CASE`
* `COALESCE`
* `JOIN`-uri
* Subcereri
* Operatori de tip set

## View-uri

### `view_candidate_job_match_score`
View-ul principal al proiectului calculează gradului de compatibilitate dintre candidați și joburi pe baza skill-url-urilor comune.

### Formula utilizată

#### `(match_skills / required_skills) x 100`

Rezultatul prezintă procentul de compatibilitate dintre un job și un candidat.

## Normalizare
Baza de date este normalizată până la **Forma Normală 3 (3NF)**.

### 1NF
* Atrubute atomice
* Fără grupuri repetitive

### 2NF
* Toate atributele non-cheie depind complet de cheia primară

### 3NF
* Fără dependețe tranzitive
* Reducerea redundanței datelor

## Structura proiectului

```
SISTEM-RECRUTARE-IT
|
|—— README.md
|—— documentație.md
|
|—— interogări/
|   |—— 1 - creating_tables_queries.sql
|   |—— 2 - inserting_data_queries.sql
|   |—— 3 - data_viewing_queries.sql
|   |—— 3* - utilizare_insert_update_delete.sql
|   |—— 4 - utilizarea_operatorilor_de_comparație.sql
|   |—— 5 - utilizarea_functiilor_grup.sql
|   |—— 6 - utilizarea_functiilor_numerice.sql
|   |—— 7 - utilizarea_case_și_coalesce.sql
|   |—— 8 - utlizarea_join.sql
|   |—— 9 - utilizarea_subcererilor.sql
|   |—— 10 - utilizarea_operațiilor_de_tip_set.sql
|   |—— 11 - utilizare_view.sql
|
|—— capturi_ecran_rezultate_interogări/
|—— erd/
```

## Capturi de ecran 
Repository-ul include capturi de ecran pentru:
* Operații DDL
* Operații DML
* Interogări `SELECT`
* Funcții SQL
* `JOIN`-uri
* Subcereri
* Operatori de tip set
* View-uri

## Autor

**Teacă Mădălina-Elena**

Proiect realizat pentru disciplina **Baze de Date**

## Status
✔️ Proiect finalizat