SHOW DATABASES;
create database healthcare ;
use healthcare ;

create table Diagnoses(
DiagnosisID int primary key ,
DiagnosisName  varchar (255));

create table Outcomes(
OutcomeID  int primary key,
Outcomes varchar (255));

create table Patients(
PatientID int primary key ,
Name varchar(255),
Age int,
Gender char(1),
DiagnosisID int,
AdmissionDate Date,
DischargeDate date ,
OutcomeID int,
TreatmentCost decimal(10,2),
foreign key (DiagnosisID) references Diagnoses(DiagnosisID),
foreign key(OutcomeID) references Outcomes(OutcomeID));


CREATE TABLE labs(
labID int primary key ,
PatientID int,
TestName varchar (255),
Result decimal(10,2),
NormalRange varchar(255),
foreign key(PatientID) references Patients(PatientID));



select * from diagnoses;
select * from outcomes ;
select  * from patients;
select * from labs ;

-- Retrieveing detailed patient hiSTORY
select Patients.PatientID,Patients.Name,Diagnoses.DiagnosisName,Outcomes.Outcomes,labs.TestName,labs.Result,labs.Normalrange
from Patients 
 join Diagnoses on Patients.DiagnosisID = Diagnoses.DiagnosisID
 JOIN Outcomes on Patients.OutcomeId = Outcomes.OutcomeID
 JOIN labs on Patients.PatientID = labs.PatientID 
Order by Patients.patientID,labs.TestName;

-- average lab results by diagnosis
select Diagnoses.DiagnosisName , labs.TestName,avg(labs.result) as AverageResult
from Patients 
join labs on labs.PatientID = Patients.PatientID
join Diagnoses on Patients.DiagnosisID = Diagnoses.DiagnosisID
group by Diagnoses.DiagnosisName,labs.TestName ;



 
-- average lab result by diagnosis
SELECT
    Diagnoses.DiagnosisName,
    Labs.TestName,
    AVG(Labs.Result) AS AverageResult
FROM Patients
JOIN Labs
    ON Labs.PatientID = Patients.PatientID
JOIN Diagnoses
    ON Patients.DiagnosisID = Diagnoses.DiagnosisID
GROUP BY
    Diagnoses.DiagnosisName,
    Labs.TestName;

-- ABNORMAL RESULT 
select Patients.PatientID,patients.name,count(*) as Abnormal_Count
from patients 
join labs on patients.patientid = labs.PatientID
where(labs.testname = "Blood Sugar" and ( labs.result >120 or labs.result <80 ))
or
(labs.testname = "BloodPressure" and ( labs.result >200 or labs.result< 150))
or
(labs.testname = "Cholesterol" and ( labs.result >200 or labs.result< 150))
or
(labs.testname = "Creatinine" and ( labs.result >120 or labs.result< 80))
or
(labs.testname = "Vitamin D" and ( labs.result >17 or labs.result< 13))
group by 
patients.patientid,patients.name ;

-- diagnoses with highest treatment cost
SELECT 
    Diagnoses.DiagnosisName,
    SUM(Patients.TreatmentCost) AS TotalCost
FROM Patients
JOIN Diagnoses 
    ON Patients.DiagnosisID = Diagnoses.DiagnosisID
GROUP BY 
    Diagnoses.DiagnosisName
ORDER BY 
    TotalCost DESC;
    
-- paitents at risk by age and gender
select patients.name,patients.gender,patients.age , outcomes.Outcomes,diagnoses.diagnosisname
from patients
join diagnoses
on patients.diagnosisid = diagnoses.diagnosisid
join outcomes
on patients.outcomeid = outcomes.outcomeid
where age > 65 and outcomes != "recovered";

-- labs trend overtime for a specific period
select labs.testname,labs.result,patients.admissiondate
from labs
join  patients on 
patients.patientid = labs.patientid 
where patients.PatientID = 10
order by patients.admissiondate ;

-- distribution of outcomes by diagnosis
select diagnoses.diagnosisname ,
 outcomes.outcomes ,
 count(*) as OutcomeCount
from patients
join diagnoses 
on diagnoses.diagnosisid = patients.diagnosisid
join outcomes on
outcomes.outcomeid = patients.outcomeid
group by 
diagnoses.diagnosisname , outcomes.outcomes 
order by diagnoses.DiagnosisName , outcomes.outcomes desc ;


   
