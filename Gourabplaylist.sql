show databases;
create database Gourab;
use Gourab;
drop database Gourab;
show tables;
select * from User;

Create table User ( UserID varchar(225) ,
UserName varchar(225) ,
State varchar(225),
primary key (UserId)
);
truncate Table User;
insert into User(UserId,UserName,State) values ('1','Gourab','Westbengal'),
('2','Love','Keral'),
('3','Mainak','Goa'),
('4','Adarsh','Karnataka'),
('5','Sonia','Darjeeling');

Create table Playlist ( UserID varchar(225) ,
PlaylistId varchar(225) ,
foreign key (UserId) references User(UserId)
);
select * from Playlist;
insert into Playlist(UserId,PlaylistId) values ('1','101'),
('2','102'),
('3','103'),
('4','104'),
('5','105');

select * from User left join Playlist on User.UserId = Playlist.UserId;
select * from User right join Playlist on User.UserId = Playlist.UserId;
select * from User inner join Playlist on User.UserId = Playlist.UserId;


Create table Student ( User_ID varchar(225) ,
UserName varchar(225) ,
Department varchar(225),
primary key (User_Id)
);
insert into Student (User_Id,UserName,Department) values ('1','Gourab','B.Tech'),
('2','Love','B.A'),
('3','Mainak','B.Sc'),
('4','Adarsh','MBA'),
('5','Sonia','M.Tech');

select count(User_Id) total from Student;
select sum(User_Id) sum from Student;
select avg(User_Id) avg_Of from Student;

