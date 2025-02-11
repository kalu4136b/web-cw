--single line comment
/*
    multi line comment 
    data 
    base 
*/

-- create a database call "course"

create table courses(
    id int generated always as IDENTITY START with 1 increment by 1 primary key,
    c_code varchar(100) check(c_code like 'CID_%') ,
    c_name varchar(100) not null,
    c_duration int default 4,
    c_fee decimal(20,2) default 50000.00 check(c_fee>0)
);

-- create table to dtore student details

create table students (
    id int GENERATED always AS IDENTITY START with 1 increment by 1 primary key,
    st_index varchar(200) check(st_index like 'SID_%') UNIQUE,
    st_name varchar(200) not null,
    city varchar(50) default 'kandy',
    course_num number, 
    foreign key (course_num) REFERENCES courses(id)
);