create database hospital;
create table enterprise
  (id int ,
   location varchar(255),
   phone int (11),
   email varchar(255),
   primary key (id)
   );

create table sections
  (id int ,
   floor varchar(255),
   name varchar(255),
   primary key (id)
   );

create table doctors
  (id int ,
   address varchar(255),
   name varchar(255),
   Specialization varchar(255),
   phone int(11),
   primary key (id)
   );

create table Patients
  (id int ,
   address varchar(255),
   name varchar(255),
   disease varchar(255),
   phone int(11),
   primary key (id)
   );

#•	Insert Statements 

insert into doctors values ( 'tanta', 'mostafa', 'surgery', 010246756);
insert into doctors values ( 'cairo', 'ahmed', 'eyes', 67645376);
insert into doctors values ( 'alex', 'mahmoud', 'Starch and generate', 745657);
insert into doctors values ( 'sewa', 'mostafa', 'children', 782878655);
insert into doctors values (6, 'tanta', 'mohaned', 'nose', 86788989);



insert into enterprise values ( 1,'cairo', 7554878, 'mostafa@gmail.com');
insert into enterprise values (2, 'alex', 634657, 'ahmed@gmail.com');
insert into enterprise values ( 3,'aswan', 788678, 'mohamed@gmail.com');
insert into enterprise values (4, 'cairo', 675476, 'mahmoud@gmail.com');
insert into enterprise values (5, 'tanta', 867468, 'ammmar@gmail.com');



insert into patients values ( 1,'tanta', 'ahmed','cold', 876887);
insert into patients values (2, 'alex', 'hend','cancer',7877939);
insert into patients values (3, 'cairo', 'sara','sugar',788688);
insert into patients values (4, 'matroh', 'heba','heart',976858);
insert into patients values (5, 'sewa', 'nada','Conjunctivitis',788976);




insert into sections values (1, 'first', 'surgery');
insert into sections values (2,'second', 'Starch and generate');
insert into sections values (3,'third', 'nose');
insert into sections values (4,'forth', 'children');
insert into sections values (5,'fifth', 'eyes');

#•	Select Statements using Sub Query 

SELECT id, name FROM patients WHERE id=( select max(id) from patients);
SELECT name, Specialization FROM doctors WHERE address=( select max(address) from doctors);
SELECT location, phone, email FROM enterprise WHERE id=( select max(id) from enterprise);


#•	Select Statements using Count and Group Functions 

SELECT COUNT(id),location
FROM enterprise
GROUP BY location;

SELECT COUNT(name),Specialization
FROM doctors
GROUP BY Specialization;


SELECT COUNT(id),name
FROM sections
GROUP BY name;


#•	Select Statements using Different Joins 

SELECT doctors.name, patients.name
FROM doctors
INNER JOIN patients ON doctors.name = patients.name;

SELECT doctors.address, patients.address
FROM doctors
INNER JOIN patients ON doctors.address = patients.address;


SELECT doctors.address, patients.address, doctors.phone, patients.phone
FROM doctors
left outer JOIN patients ON doctors.address = patients.address;

SELECT doctors.address, enterprise.location
FROM doctors
right outer JOIN enterprise ON doctors.address = enterprise.location;

SELECT doctors.name, patients.name
FROM doctors
left outer JOIN patients ON doctors.name = patients.name;

SELECT patients.address, enterprise.location
FROM patients
right outer JOIN enterprise ON patients.address = enterprise.location;

SELECT doctors.name, doctors.address, patients.name, patients.address
FROM doctors
CROSS JOIN patients ON doctors.name = patients.name;



#•	Update Statements 

UPDATE doctors
SET name = 'mostafa'
WHERE id = 3;

UPDATE enterprise
SET location ='tanta', phone= 754678
WHERE id = 1;

UPDATE patients
SET disease ='sugar', phone= 784378
WHERE id = 5;

UPDATE sections
SET floor ='sixth'
WHERE id = 1;

UPDATE doctors
SET Specialization ='children', phone = 87668
WHERE id = 3;


#•	Delete Statements 

DELETE FROM enterprise WHERE location='aswan';
DELETE FROM doctors WHERE name='mostafa';
DELETE FROM patients WHERE disease='suger';
DELETE FROM doctors WHERE Specialization='surgery';
DELETE FROM sections WHERE floor='forth';







