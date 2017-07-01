create table order_items
(
item_id int not null auto_increment,
book_order_id int not null,
book_isbn numeric(13) not null,
quantity int not null,
ordered_date timestamp default now(),
constraint item_id_pk primary key(item_id),
constraint book_order_id_fk foreign key(book_order_id) references orders(order_id),
constraint book_id_fk foreign key(book_isbn) references book(isbn)
);