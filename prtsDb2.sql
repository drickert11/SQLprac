Create Database Prints;
Use Prints;
Create Table customers
	(customer_id CHAR(4),
	customer_name char(30),
	customer_add char(25),
	customer_city char(25),
	customer_state char(2),
	customer_zip char(5),
	customer_phone char(12));

Create Table items
	(item_id int(3),
    Title char(30),
    artist char(30),
    unit_price decimal(5,2),
    on_hand char(3));

Create Table orders
	(order_id int(2),
    customer_id char(4),
    order_date date,
    ship_date date);

Create Table orderline
	(order_id int(2),
    item_id int(3),
    order_qty int(2));
    
Insert into customers
values
 ('1000', 'Cora Blanca', '1555 Seminole Ct.', 'Charlotte', 'NC', '28210', '704/552.1810'),
 ('1100', 'Yash Reed', '878 Madison Ave.', 'Greensboro', 'NC', '27407', '336/316-5434'),
 ('1200', 'John Mills', '4200 Olive Ave.', 'Columbia', 'SC', '29206', '803/432.6225'),
 ('1300', 'David Cox', '608 Old Post Rd.', 'Decatur', 'GA', '30030', '404/243.7379'),
 ('1400', 'Tina Evans', '235 Easton Ave.', 'Jacksonville', 'FL', '32221', '904/992-7234'),
 ('1500', 'Will Allen', '2508 W. Shaw Rd.', 'Raleigh', 'NC', '27542', '919/809.2545'),
 ('1600', 'James Boyd', '200 Pembury Ln.', 'Columbia', 'SC', '29206', '803/432-7600'),
 ('1700', 'Will Parsons', '4990 S. Pine St.', 'Raleigh', 'NC', '27545', '919/355/0034'),
 ('1800', 'Walter Kelly', '1200 Little St.', 'Columbia', 'SC', '29206', '803/432-1987'),
 ('1900', 'Ann Damian', '7822 N. Ridge Rd.', 'Jacksonville', 'FL', '32216', '904/725-4672'),
 ('2000', 'Grace Hull', '4090 Caldweld St.', 'Charlotte', 'NC', '28205', '704/365.7655'),
 ('2100', 'Jane Brown', '3320 W. Main St.', 'Charlotte', 'NC', '28210', '704/372/9000'),
 ('2200', 'Betty Draper', '1600 Sardis Rd.', 'Sarasota', 'FL', '32441', '918/941-9121');
    
Insert into items
values
 (100, 'Under the Sun', 'Donald Arley', 46.80, 340),
 (200, 'Dark Lady', 'Keith Morris', 120.99, 250), 
 (300, 'Happy Days', 'Andrea Reid', 78.00, 210), 
 (350, 'Top of the Mountain', 'Janice Jones', 110.00, 290), 
 (400, 'Streets from Old', 'Sharon Brune', 123.00, 320), 
 (450, 'The Hunt', 'Walter  Alford', 39.99, 390), 
 (600, 'Rainbow Row', 'Judy Ford', 46.00, 350),
 (700, 'Skies Above', 'Alexander Wilson', 98.00, 275),
 (800, 'The Seas and Moon', 'Susan Beeler', 67.81, 235), 
 (850, 'Greek Isles', 'Benjamin Caudle', 76.00, 300);
 
 Insert into orders
 values
 (1, '1200', '2013-10-23', '2013-10-28'),
 (2, '1500', '2013-10-30', '2013-11-03'),
 (3, '1500', '2013-11-09', '2013-11-14'),
 (4, '2100', '2013-11-15', '2013-11-20'),
 (5, '1600', '2013-11-15', '2013-11-20'),
 (6, '1900', '2013-12-15', '2013-12-19'),
 (7, '2200', '2013-12-18', '2013-12-22'),
 (8, '1600', '2013-12-20', '2013-12-22'),
 (9, '1000', '2014-01-18', '2014-01-23'),
 (10, '2200', '2014-01-31', '2014-02-04'),
 (11, '1500', '2014-02-01', '2014-02-06'),
 (12, '1400', '2014-02-27', '2014-03-02'),
 (13, '1100', '2014-03-10', '2014-03-15'),
 (14, '1400', '2014-03-14', '2014-03-19');
 
 Insert into orderline
 values
 (1, 800, 2),
 (1, 600, 1),
 (2, 700, 3),
 (2, 300, 2),
 (3, 850, 1),
 (4, 200, 4),
 (4, 100, 1),
 (4, 850, 1),
 (5, 450, 1),
 (6, 800, 2),
 (7, 300, 2),
 (7, 600, 2),
 (8, 100, 1),
 (9, 100, 3),
 (10, 450, 6),
 (10, 600, 8),
 (10, 200, 4),
 (11, 700, 2),
 (12, 300, 3),
 (12, 700, 4),
 (13, 200, 2),
 (13, 600, 10),
 (13, 450, 4),
 (14, 700, 8),
 (14, 200, 6),
 (14, 800, 4),
 (14, 450, 2);
 
 #1
 SELECT customer_name, customer_add, customer_city, customer_state, customer_zip
 FROM customers;
 
 #2
 Select customer_name, customer_phone
 From customers
 Where customer_state = 'GA';
 
 #3
 Select customer_name, customer_zip
 From customers
 Where customer_state like '%C';
 
 #4
 Select Title, artist, order_date, ship_date
 From items, orders, orderline
 Where orders.order_id = orderline.order_id
 And items.item_id = orderline.item_id;
 
 #5
 Select item_id, Title, artist, unit_price, on_hand
 From items
 Order By unit_price Asc;
 
 #6
 Select item_id, Title, artist, unit_price, on_hand
 From items
 Where unit_price > 100;
 
 #7
 Select item_id, Title, artist, unit_price, on_hand
 From items
 Where on_hand > 300;
 
 #8
 Select Title, unit_price, (unit_price * 2) as retail_price
 From items;
 
 #9
 Select customer_name, customer_phone
 From customers, orders
 Where customers.customer_id = orders.customer_id
 And order_date like '2014%';
 
 #10
 Select artist, sum(order_qty) as prints_sold
 From items, orderline
 Where items.item_id = orderline.item_id
 Group By artist;
 
 #11
 Select Title
 From items
 Where unit_price Between 40 and 100;
 
 #12
 Select customer_name, Title, artist, order_qty
 From customers, items, orderline, orders
 Where customers.customer_id = orders.customer_id
 And orders.order_id = orderline.order_id
 And orderline.item_id = items.item_id;

 #13
 Select customer_name, sum((unit_price * 2) * order_qty) as Total
 From customers, items, orders, orderline
 Where customers.customer_id = orders.customer_id
 And orders.order_id = orderline.order_id
 And orderline.item_id = items.item_id
 Group By customer_name;
 
 #14
 Select customer_state, count(customer_name)
 From customers
 Group By customer_state;
 
 #1
 CREATE VIEW Under_100 AS
 SELECT items.item_id, Title, artist, unit_price, order_qty
 FROM items, orderline
 WHERE items.item_id = orderline.item_id
 AND unit_price < 100.00; 
 
 #2
 CREATE VIEW Allen AS
 SELECT customers.customer_id, customer_name, customer_phone, Title, artist
 FROM customers, items, orderline, orders
 WHERE customers.customer_id = orders.customer_id
 AND orders.order_id = orderline.order_id
 AND orderline.item_id = items.item_id;
 
 #3
 CREATE VIEW orders_vw AS
 SELECT items.item_id, Title, artist, unit_price, order_qty
 FROM items, orderline, orders
 WHERE items.item_id = orderline.item_id
 AND orderline.order_id = orders.order_id
 AND order_date BETWEEN '2014-01-01' AND '2014-02-28';
 
 #4
 CREATE VIEW zip_27 AS
 SELECT customer_name, customer_phone, Title, artist, ship_date
 FROM customers, items, orders, orderline
 WHERE customers.customer_id = orders.customer_id
 AND orders.order_id = orderline.order_id
 AND orderline.item_id = items.item_id
 AND customer_zip LIKE '27%';
 
 #5
 CREATE INDEX customer_id ON customers(customer_id);
 CREATE INDEX name ON customers(customer_name);
 CREATE INDEX shipped ON orders(customer_id, ship_date);
 
 #6
 DROP INDEX name ON customers;

 #7
 ALTER TABLE items
 ADD CHECK (unit_price > 35.00);
 
 #8
 ALTER TABLE orders
 ADD FOREIGN KEY customer_id(customer_id)
 references orders(customer_id);
 
 /*ALTER TABLE orderline 
 ADD FOREIGN KEY Item_id(item_id)
 references orderline(item_id); */
 
 #9
 ALTER TABLE items
 ADD type char(1);
 
 #10
 UPDATE items
 SET type = 'M'
 WHERE Title = 'Skies Above';
 
 
