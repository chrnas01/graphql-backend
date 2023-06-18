CREATE DATABASE student;
use student;

create table students(
    id int not null auto_increment,
    firstName varchar(100) not null,
    lastName varchar(100) not null,
    primary key (id)
);

insert into students(firstName, lastName)
values ("John", "Smith");