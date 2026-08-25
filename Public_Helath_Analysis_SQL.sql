create database Public_Helath_Analysis_SQL;
use Public_Helath_Analysis_SQL;
select * from maternalchild;
select * from maternalchild
where district = "Dhaka" and ironfolicacid = "Adequate"
;

select * from ncdscreening;

select * from ncdscreening
where age between 38 and 40 
;

select * from primarycare;

select * from primarycare
where sex = "male" and
age between 18 and 24
;

## generaliged done

## Q Display only patient ID, age, sex and district.

select patientid, age, sex, district from primarycare;

## Q Find all patients older than 60.

select * from primarycare where age > 60;

## Q Find patients aged between 20 and 40.

select * from primarycare where age between 20 and 40;

## Q Find all female patients.

select * from primarycare where sex = "Female";

## Q Find all records from Dhaka.

 select * from primarycare where district = "Dhaka";
 
 ## Q List unique districts.
 select distinct district as Districts  from primarycare;
 
 select count(distinct district) as total_district  from primarycare;
 
 ## Q List unique facility types.
 
 select distinct facilitytype from primarycare;
 
 ## Q Find visits where the cost is greater than 1,000 BDT.
 
 select *  from primarycare where costbdt > 1000;
 
 ## Q Show the 20 most expensive visits.
 
 select * from primarycare order by costbdt desc limit	20;
 
 ## Q Find patients between 18 and 35 years old from Khulna.
 
 select * from primarycare where age between 18 and 35 and district = "Khulna";
 
## Q Find patients who received immunization services.

select * from primarycare where servicetype = "Immunization";

## Q Find patients with diabetes.

select * from primarycare where diagnosisgroup = "Diabetes";
 
 
 

