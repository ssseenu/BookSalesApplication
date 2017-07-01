CREATE TABLE book
(
 isbn numeric(13),
 title VARCHAR(25) NOT NULL,
 author varchar(25) Not null,
 publish_date Date,
 content varchar(500),
 price DOUBLE(6,2) NOT NULL,
 status varchar(10) not null,
 constraint isbn_pk primary key(isbn),
 constraint price_cq check(price>0),
 constraint status_cq check(status in('draft','published'))
);
insert into book(isbn,title,author,publish_date,content,price,status) values
(
1234567890123,
'wings Of Fire',
'Dr.A.P.Abdul Kalam',
str_to_date('12/12/1999','%d/%m/%Y'),
'AutoBiography of Dr.A.P.J.Abdul Kalam',
349.00,
'published'
);
insert into book(isbn, title, author, publish_date, content, price, status) VALUES 
( 
9876543210987, 
'HARRY POTTER', 
'J.K. ROWLING', 
STR_TO_DATE('12/12/1998','%d/%m/%Y') , 
'The novels is about the life of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley',
499.00, 
'PUBLISHED'
);