CREATE TABLE role            
(
role_id int ,
name varchar(50) not null,
constraint role_id_pk primary key ( role_id ),
constraint role_id_cq check ( role_id between 1 and 3 ),
constraint name_cq check ( name in ('user', 'author', 'admin' ))
);

INSERT INTO role (role_id, name) VALUES
(
1,
"admin"
);

INSERT INTO role (role_id, name) VALUES
(
2,
"author"
);

INSERT INTO role (role_id, name) VALUES
(
3,
"user"
);