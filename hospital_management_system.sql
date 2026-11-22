create database hospital_management_system;
use hospital_management_system;

create table login(ID varchar(20), PW varchar(20));
select * from login;


create table patient_info(ID varchar(20), Number varchar(40), Name varchar(20), Gender varchar(20), patient_Disease varchar(20), Room_Number varchar(20), Time varchar(100), Deposite varchar(20));
select *from patient_info;
insert into patient_info values("1234","8310179848","pramod","Male","eye vision problem ","A-room","10-02-2024-19:24","55500");

create table Room(room_no varchar(20), Availability varchar(20), Price varchar(20), Room_Type varchar(100));
select * from Room;

insert into Room values("100","Availability","500","A BED 1");
insert into Room values("102","Availability","600","B BED 1");
insert into Room values("103","Availability","600","C BED 1");
insert into Room values("104","Availability","600","D BED 1");
insert into Room values("105","Availability","600","G BED 1");
select * from Room;

create table department(Department varchar(100), phone_no varchar(20));
select*from department;

insert into department values("surgical department","9341279088");
insert into department values("Nursing department","9341279082");
insert into department values("operation theater department(OT)","9341279088");

create table EMP_INFO(Name varchar(20), Age varchar(20), phone_Number varchar(20), salary varchar(20), Gmail varchar(20),Aadhar_number varchar(20));
select * from EMP_INFO;

insert into EMP_INFO values("Doctors1","30","123456789","50000","gr@gmail.com","12344667890");
insert into EMP_INFO values("Doctors2","40","123456789","55000","grad@gmail.com","1234464557890");

create table Ambulance(Name varchar(20), Gender varchar(20), car_name varchar(20), Available varchar(20), Location varchar(20));
insert into Ambulance values("av","Female","ZEN","Available","area 16");
select * from Ambulance;

