create table customers (id integer, acronym text);
insert into customers values
(1, 'customer1'),
(2, 'customer2'),
(3, 'customer3'),
(4, 'customer4'),
(5, 'customer5'),
(6, 'customer6'),
(7, 'customer7');
select * from customers;

create table sources1 (id integer, customer_id integer, acronym text);
insert into sources1 values
(1, 7, 'source1'),
(2, 1, 'source2'),
(3, 3, 'source3'),
(4, 6, 'source4'),
(5, 1, 'source5'),
(6, 2, 'source6'),
(7, 5, 'source7'),
(8, 4, 'source8'),
(9, 4, 'source9');

create table sources2 (id integer, customer_id integer, acronym text, username text);
insert into sources2 values
(1, 7, 'source1', 'user1'),
(2, 1, 'source2', 'user1'),
(3, 3, 'source3', 'user2'),
(4, 6, 'source4', 'user1'),
(5, 1, 'source5', 'user1'),
(6, 2, 'source6', 'user2'),
(7, 5, 'source7', 'user1'),
(8, 4, 'source8', 'user2'),
(9, 4, 'source9', 'user1');

create table sources3 (id integer, customer_id integer, acronym text);
insert into sources3 values
(1, 7, 'source1'),
(2, 1, 'source2'),
(3, 3, 'source3'),
(4, 6, 'source4'),
(5, 1, 'source5'),
(6, 2, 'source6'),
(7, 5, 'source7'),
(8, 4, 'source8'),
(9, 4, 'source9');

