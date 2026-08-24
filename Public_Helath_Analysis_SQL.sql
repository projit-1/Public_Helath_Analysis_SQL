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

