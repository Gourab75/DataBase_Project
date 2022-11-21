show databases;
create database User;
use User;

create table Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
    primary key (PersonID)
);
drop table Persons;
show tables;
select * from Persons;
desc Persons;
insert into Persons(PersonID,LastName,FirstName,Address,City) values (1,'Gupta','Gourab','Babupara','siliguri'),
(2,'Pandey','Priya','BannergattaRoad','Banglore'),
(3,'Ingole','Bhakti','AirportStreet','Pune'),
(4,'Prajapti','Adarsh','Sajna','MaddhyaPradesh'),
(5,'Sarkar','Sounak','Noihati','Kolkata');
select * from Persons;
insert into Persons(PersonID,LastName,FirstName,Address,City) value (6,'Pal','Gourab','Notunpara','jalpaiguri');
update Persons set FirstName='Rakesh' where PersonID=1;
Alter table Persons add Contact varchar(11);
insert into Persons(PersonID,LastName,FirstName,Address,City) value (1,'Gupta','Rakesh','Babupara','siliguri');
truncate table Persons;
delete from Persons where PersonID=1;

insert into Persons(PersonID,LastName,FirstName,Address,City,Contact) value(1,'Gupta','Rakesh','Babupara','siliguri',9832035519);

insert into Persons(PersonID,LastName,FirstName) value (6,'Pal','Sashi');

update Persons set Contact='8250667879' where PersonID=6;
Alter table Persons add State varchar(155);

create table Playlist (
    PersonId int,
    PlaylistID varchar(255),
    Artist varchar(255),
    foreign key (PersonId) references Persons(PersonId)
);
show tables;
select * from Playlist;
insert into Playlist(PersonId,PlaylistID,Artist) values (1,'101','k.k'),
(2,'102','T.k'),
(3,'103','F.k'),
(4,'104','L.k'),
(5,'105','M.k');


drop table Playlist;
truncate table Playlist;
desc Playlist;
select * from Persons left join Playlist on Persons.PersonId = Playlist.PersonId;
select * from Persons right join Playlist on Persons.PersonId = Playlist.PersonId;