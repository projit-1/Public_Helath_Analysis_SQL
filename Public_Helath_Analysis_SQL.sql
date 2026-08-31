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

## Q Find referred patients.

select * from primarycare where outcome = "Referred";
 
 ## Q Find patients who were admitted.
 
 select * from primarycare where outcome = "Admitted";
 
 ## Q Sort patients by age from oldest to youngest.
 
 select * from primarycare order by age desc;
 
 ## Q Sort visits by cost.
 
 select * from primarycare order by costbdt desc;
 
 ## Q Find female patients older than 50.
 
 select * from primarycare where sex = "Female" and age > 50;
 
 ## Q Find visits costing between 500 and 1,000 BDT.
 
 select * from primarycare where costbdt between 500 and 1000;
 
 ## Q Find all non-Dhaka records.
 
 select * from primarycare where district != "Dhaka";
 
 ## Q Count total patients.
 
 select count(*) as total_patients from primarycare;
 
 ## Q Calculate average age.
 
 select round(avg(age),2) as average_age from primarycare;
 
 ## Q Find maximum age.
 
 select round(MAX(age),2) as maximum_age from primarycare;
 
 ## Q Find minimum age.
 
 select round(MIN(age),2) as minimum_age from primarycare;
 
select count(*) from primarycare where age = 1;

 ## Q Calculate average visit cost.
 
 select round(avg(costbdt),3) as average_visit_cost from primarycare;
 
 ## Q Calculate total healthcare expenditure.
 select sum(costbdt) as total_helathcare_cost from primarycare; 
 
 ## Q Count patients by sex.
 select sex, count(*) as patients_by_sex from primarycare
 group by sex;
 
 ## Q Count visits by district.
 
 select district, count(*) as patients_by_district from primarycare
 group by district;
 
 ## Q Calculate average cost by district.
 select district, round(avg(costbdt),2) as average_cost from primarycare
 group by district order by average_cost desc;
 
 ## Q Count visits by facility type.
 select facilitytype, count(*) as facilitytype from primarycare
 group by facilitytype;
 
 
 
 

