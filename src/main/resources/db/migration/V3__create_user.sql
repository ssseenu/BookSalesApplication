create table user
(
id int auto_increment,
name varchar(20) not null,
user_name varchar(20) not null,
password varchar(20) not null,
mobile_no numeric(10) ,
email_id varchar(20) not null,
user_status char not null,
user_role_id int,
constraint id_pk primary key(id),
constraint user_name_uk unique key(user_name),
constraint user_status_ck check(user_status in('A','I')),
constraint user_role_id_fk foreign key(user_role_id) references role(role_id)
);

insert into user values(
1001,
'Seenu',
'Seenu97',
'sssg',
9988776655,
'seenu@gmail.com',
'A',
1
);