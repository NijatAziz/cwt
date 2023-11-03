create database CodeAcademy
use CodeAcademy

CREATE TABLE Groups (
    Id INT PRIMARY KEY,
    Name NVARCHAR(100) UNIQUE
);

Create table Students (
    Id INT PRIMARY KEY,
    Name NVARCHAR(100),
    Surname NVARCHAR(100),
    GroupId INT,
    FOREIGN KEY (GroupId) REFERENCES Groups (Id)
);

alter table Students
add grade int 



Insert into Groups (Id, Name)
values (1, 'P236'),
       (2, 'P229'),
       (3, 'P221');

insert into Students (Id, Name, Surname, GroupId, Grade)
values (1, 'Adı 1', 'Soyadı 1', 2, 85);  -- 2 burada P229 grubunun Id'sine karşılık gelmelidir.

insert into Students (Id, Name, Surname, GroupId, Grade)
values (2, 'Adı 2', 'Soyadı 2', 1, 92),  
       (3, 'Adı 3', 'Soyadı 3', 1, 78),  
       (4, 'Adı 4', 'Soyadı 4', 1, 88); 
