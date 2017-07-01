create table orders 
(
order_id int auto_increment,
user_id int,
total_price double(6,2) not null default 0.0,
status varchar(10) not null default 'ordered',
ordered_date timestamp default now(),
 cancelled_date DATETIME,
constraint id_pk primary key(order_id),
constraint total_price_ck check(total_price > 0),
constraint user_id_fk foreign key(user_id) references user(id),
constraint status_cq check(status in('ordered' and 'cancelled' and 'delivered'))
);