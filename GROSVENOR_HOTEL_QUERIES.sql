create schema hotel; # This is my database name
use hotel; # This is my default database

SET SQL_SAFE_UPDATES = 0; # by using this we can turn of the safe update mode


/* Here I create database hotel and Created tables like hotel, room, guest, booking
I have created 3 hotels and every hotel has 20 rooms, 20 Guests and 20 bookings.
Two hotels are from london and one is from Edinburgh.Then  I update the room price with 5%
and again I update the booking table
by removing all the records below 1999 year and inserted all those records into
booking_old table and removed all the records from booking table.*/

/* I assumed that current date is 2000 so in this file What I'm doing is I'm taking 2022-22 years
  as my current date that's why I used the ADDDATE("2022-07-02", INTERVAL -22 year) Function. 
  I assume my presentation is saturday Thats why I took the saturday's date. */
  

# here I'm creating a table called hotel
CREATE TABLE hotel ( 
hotel_no CHAR(4) PRIMARY KEY, 
name VARCHAR(20) NOT NULL, 
address VARCHAR(50) NOT NULL
);
#Inserting values into hotel table
INSERT INTO hotel VALUES ('H111', 'Grosvenor Hotel', 'London'),
('H112', 'Grosvenor Hotel2', 'London'),
('H113', 'Grosvenor Hotel3', 'Edinburgh');

SELECT * FROM hotel; # To retrieve all the details from the hotel table

# Here I'm creating the table for room
CREATE TABLE room ( 
room_no VARCHAR(4) PRIMARY KEY, 
hotel_no CHAR(4), 
type CHAR(1) NOT NULL,
price DECIMAL(5,2) NOT NULL,
FOREIGN KEY(hotel_no) references hotel(hotel_no)
);

#Inserting values into room table. Here 'S' indicates single room, 'D' indicates Double, F indicates Family rooms
INSERT INTO room VALUES ('1', 'H111', 'S', 72.00);
insert into room values(2, 'H111', 'S', 72.00);
insert into room values(3, 'H111', 'S', 72.00);
insert into room values(4, 'H111', 'D', 86.00);
insert into room values(5, 'H111', 'D', 86.00);
insert into room values(6, 'H111', 'D', 86.00);
insert into room values(7, 'H111', 'F', 90.00);
insert into room values(8, 'H111', 'F', 90.00);
insert into room values(9, 'H111', 'F', 90.00);
insert into room values(10, 'H111', 'F', 90.00);
INSERT INTO room VALUES ('11', 'H111', 'S', 72.00);
insert into room values(12, 'H111', 'S', 72.00);
insert into room values(13, 'H111', 'S', 72.00);
insert into room values(14, 'H111', 'D', 86.00);
insert into room values(15, 'H111', 'D', 86.00);
insert into room values(16, 'H111', 'D', 86.00);
insert into room values(17, 'H111', 'F', 90.00);
insert into room values(18, 'H111', 'F', 90.00);
insert into room values(19, 'H111', 'F', 90.00);
insert into room values(20, 'H111', 'F', 90.00);
insert into room values(101, 'H112', 'F', 50.00);
insert into room values(102, 'H112', 'F', 50.00);
insert into room values(103, 'H112', 'F', 50.00);
insert into room values(104, 'H112', 'S', 30.00);
insert into room values(105, 'H112', 'D', 40.00);
insert into room values(106, 'H112', 'S', 30.00);
insert into room values(107, 'H112', 'D', 40.00);
insert into room values(108, 'H112', 'S', 30.00);
insert into room values(109, 'H112', 'D', 40.00);
insert into room values(110, 'H112', 'S', 30.00);
insert into room values(111, 'H112', 'F', 50.00);
insert into room values(112, 'H112', 'F', 50.00);
insert into room values(113, 'H112', 'F', 50.00);
insert into room values(114, 'H112', 'S', 30.00);
insert into room values(115, 'H112', 'D', 40.00);
insert into room values(116, 'H112', 'S', 30.00);
insert into room values(117, 'H112', 'D', 40.00);
insert into room values(118, 'H112', 'S', 30.00);
insert into room values(119, 'H112', 'D', 40.00);
insert into room values(120, 'H112', 'S', 30.00);
insert into room values(1001, 'H113', 'D', 35.00);
insert into room values(1002, 'H113', 'D', 35.00);
insert into room values(1003, 'H113', 'D', 35.00);
insert into room values(1004, 'H113', 'S', 30.00);
insert into room values(1005, 'H113', 'S', 30.00);
insert into room values(1006, 'H113', 'S', 30.00);
insert into room values(1007, 'H113', 'F', 45.00);
insert into room values(1008, 'H113', 'F', 45.00);
insert into room values(1009, 'H113', 'F', 45.00);
insert into room values(1010, 'H113', 'F', 45.00);
insert into room values(1011, 'H113', 'D', 35.00);
insert into room values(1012, 'H113', 'D', 35.00);
insert into room values(1013, 'H113', 'D', 35.00);
insert into room values(1014, 'H113', 'S', 30.00);
insert into room values(1015, 'H113', 'S', 30.00);
insert into room values(1016, 'H113', 'S', 30.00);
insert into room values(1017, 'H113', 'F', 45.00);
insert into room values(1018, 'H113', 'F', 45.00);
insert into room values(1019, 'H113', 'F', 45.00);
insert into room values(1020, 'H113', 'F', 45.00);


select * from room; # I'm retrieving the values from the room table

 # Creating the table for guest
CREATE TABLE guest ( 
guest_no CHAR(4) PRIMARY KEY,
name VARCHAR(20) NOT NULL,
address VARCHAR(50) NOT NULL
 );
 # Inserting values into guest table.
INSERT INTO guest VALUES ('G111', 'Rohit', 'London');
insert into guest values('G112', 'Jyothi', 'London');
insert into guest values('G113', 'Akhila', 'London');
insert into guest values('G114', 'Rahul', 'London');
insert into guest values('G115', 'Sudipta', 'London');
insert into guest values('G116', 'Seby', 'London');
insert into guest values('G117', 'Mamatha', 'London');
insert into guest values('G118', 'DV', 'London');
insert into guest values('G119', 'Kavya', 'London');
insert into guest values('G120', 'Pavani', 'London');
INSERT INTO guest VALUES ('G121', 'Rohini', 'London');
insert into guest values('G122', 'Jaya', 'London');
insert into guest values('G123', 'nikhil', 'London');
insert into guest values('G124', 'Rahul sharma', 'London');
insert into guest values('G125', 'Sudipta nath', 'London');
insert into guest values('G126', 'Seby varghee', 'London');
insert into guest values('G127', 'Mamatha sri', 'London');
insert into guest values('G128', 'Dadavalli', 'London');
insert into guest values('G129', 'Kavya sri', 'London');
insert into guest values('G130', 'sri pavani', 'London');
insert into guest values('G211', 'sri', 'London');
insert into guest values('G212', 'srilatha', 'London');
insert into guest values('G213', 'srilakshmi', 'London');
insert into guest values ('G214', 'nandan', 'London');
INSERT INTO guest VALUES ('G215', 'abishek', 'London');
insert into guest values('G216', 'padma', 'London');
insert into guest values('G217', 'gupta', 'London');
insert into guest values('G218', 'krupa', 'London');
insert into guest values('G219', 'krupakar', 'London');
insert into guest values('G220', 'vasu', 'London');
insert into guest values('G221', 'srinivas', 'London');
insert into guest values('G222', 'srimeghana', 'London');
insert into guest values('G223', 'swathi', 'London');
insert into guest values ('G224', 'geetha', 'London');
INSERT INTO guest VALUES ('G225', 'chandan', 'London');
insert into guest values('G226', 'bushan', 'London');
insert into guest values('G227', 'pavitra', 'London');
insert into guest values('G228', 'samuel', 'London');
insert into guest values('G229', 'roy', 'London');
insert into guest values('G230', 'deepthi', 'London');
insert into guest values('G311', 'sharma', 'Edinburgh');
insert into guest values('G312', 'durga', 'Edinburgh');
insert into guest values('G313', 'sridevi', 'Edinburgh');
insert into guest values('G314', 'balaji', 'Edinburgh');
insert into guest values('G315', 'harini', 'Edinburgh');
insert into guest values ('G316', 'abhi', 'Edinburgh');
insert into guest values ('G317', 'sandhya', 'Edinburgh');
insert into guest values ('G318', 'lakshmi', 'Edinburgh');
insert into guest values ('G319', 'srinu', 'Edinburgh');
insert into guest values ('G320', 'robert', 'Edinburgh');
insert into guest values('G321', 'sasi', 'Edinburgh');
insert into guest values('G322', 'shekhar', 'Edinburgh');
insert into guest values('G323', 'sowmya', 'Edinburgh');
insert into guest values('G324', 'balu', 'Edinburgh');
insert into guest values('G325', 'hasini', 'Edinburgh');
insert into guest values ('G326', 'dhanaraj', 'Edinburgh');
insert into guest values ('G327', 'vijji', 'Edinburgh');
insert into guest values ('G328', 'reshma', 'Edinburgh');
insert into guest values ('G329', 'mahi', 'Edinburgh');
insert into guest values ('G330', 'sumanth', 'Edinburgh');

 select * from guest;
 
 # Creating the table for booking
 CREATE TABLE booking (
 hotel_no CHAR(4) NOT NULL, 
 guest_no CHAR(4) NOT NULL, 
 date_from DATETIME NOT NULL,
 date_to DATETIME NULL, 
 room_no CHAR(4) NOT NULL,
 FOREIGN KEY(hotel_no) references hotel(hotel_no),
 FOREIGN KEY(guest_no) references guest(guest_no),
 FOREIGN KEY(room_no) references room(room_no)
 ); 
 
 # Inserting values into booking table
 # Here I'm assuming 2000 is my current year I will perform the operationg according to that.
-- Dates: YYYY-MM-DD;
 INSERT INTO booking VALUES ('H111', 'G111', DATE'1999-12-01', DATE'1999-12-05', '1');
 insert into booking values('H111', 'G112', DATE'1999-12-05', DATE'1999-12-08', '2');
insert into booking values('H111', 'G113', DATE'2000-07-02', DATE'2000-07-10', '3');
insert into booking values('H111', 'G114', DATE'2000-07-02', DATE'2000-07-04', '4');
insert into booking values('H111', 'G115', DATE'2000-08-04', DATE'2000-08-14', '5');
insert into booking values('H111', 'G116', DATE'2000-07-03', null, '6');
insert into booking values('H111', 'G117', DATE'2000-08-05', DATE'2000-08-08', '7');
insert into booking values('H111', 'G118', DATE'2000-08-12', DATE'2000-08-18', '8');
insert into booking values('H111', 'G119', DATE'2000-07-03', null, '9');
insert into booking values('H111', 'G120', DATE'2000-08-25', DATE'2000-08-28', '10');
 INSERT INTO booking VALUES ('H111', 'G121', DATE'1999-12-01', DATE'1999-12-02', '11');
 insert into booking values('H111', 'G122', DATE'1999-12-01', DATE'1999-12-08', '12');
insert into booking values('H111', 'G123', DATE'2000-07-02', DATE'2000-07-02', '13');
insert into booking values('H111', 'G124', DATE'2000-07-03', DATE'2000-06-03', '14');
insert into booking values('H111', 'G125', DATE'2000-08-04', DATE'2000-08-14', '15');
insert into booking values('H111', 'G126', DATE'2000-07-02', null, '16');
insert into booking values('H111', 'G127', DATE'2000-08-05', DATE'2000-08-08', '17');
insert into booking values('H111', 'G128', DATE'2000-07-12', DATE'2000-08-18', '18');
insert into booking values('H111', 'G129', DATE'2000-07-03', null, '19');
insert into booking values('H111', 'G130', DATE'2000-08-25', DATE'2000-08-28', '20');
insert into booking values('H112', 'G211', DATE'2000-07-02', null, '101');
insert into booking values('H112', 'G212', DATE'2000-08-25', DATE'2000-08-28', '102');
insert into booking values('H112', 'G213', DATE'2000-08-13', DATE'2000-08-18', '103');
insert into booking values('H112', 'G214', DATE'2000-07-03', null, '104');
insert into booking values('H112', 'G215', DATE'2000-08-05', DATE'2002-08-08', '105');
insert into booking values('H112', 'G216', DATE'2000-07-04', DATE'2003-08-18', '106');
insert into booking values('H112', 'G217', DATE'2000-08-21', DATE'2003-08-23', '107');
insert into booking values('H112', 'G218', DATE'2000-08-25', DATE'2000-08-28', '108');
insert into booking values('H112', 'G219', DATE'2000-08-13', DATE'2000-08-18', '109');
insert into booking values('H112', 'G220', DATE'2000-07-02', null, '110');
insert into booking values('H112', 'G221', DATE'2000-07-03', null, '111');
insert into booking values('H112', 'G222', DATE'2000-08-25', DATE'2000-08-28', '112');
insert into booking values('H112', 'G223', DATE'2000-08-13', DATE'2000-08-18', '113');
insert into booking values('H112', 'G224', DATE'2000-07-02', null, '114');
insert into booking values('H112', 'G225', DATE'2000-08-05', DATE'2000-08-08', '115');
insert into booking values('H112', 'G226', DATE'2000-08-12', DATE'2000-08-18', '116');
insert into booking values('H112', 'G227', DATE'2000-08-21', DATE'2000-08-23', '117');
insert into booking values('H112', 'G228', DATE'2000-08-25', DATE'2000-08-28', '118');
insert into booking values('H112', 'G229', DATE'2000-08-13', DATE'2000-08-18', '119');
insert into booking values('H112', 'G230', DATE'2000-07-02', null, '120');
insert into booking values('H113', 'G311', DATE'2000-07-02', null, '1001');
insert into booking values('H113', 'G312', DATE'2000-08-25', DATE'2000-08-28', '1002');
insert into booking values('H113', 'G313', DATE'2000-08-13', DATE'2000-08-18', '1003');
insert into booking values('H113', 'G314', DATE'2000-07-02', null, '1004');
insert into booking values('H113', 'G315', DATE'2000-07-03', DATE'2000-07-08', '1005');
insert into booking values('H113', 'G316', DATE'2000-08-12', DATE'2000-07-15', '1006');
insert into booking values('H113', 'G317', DATE'2000-08-21', DATE'2000-08-23', '1007');
insert into booking values('H113', 'G318', DATE'2000-08-25', DATE'2000-08-28', '1008');
insert into booking values('H113', 'G319', DATE'2000-08-13', DATE'2000-08-18', '1009');
insert into booking values('H113', 'G320', DATE'2000-07-03', null, '1010');
insert into booking values('H113', 'G321', DATE'2000-07-02', null, '1011');
insert into booking values('H113', 'G322', DATE'2000-08-25', DATE'2000-08-28', '1012');
insert into booking values('H113', 'G323', DATE'2000-08-13', DATE'2000-08-18', '1013');
insert into booking values('H113', 'G324', DATE'2000-07-02', null, '1014');
insert into booking values('H113', 'G325', DATE'2000-08-05', DATE'2000-08-08', '1015');
insert into booking values('H113', 'G326', DATE'2000-08-12', DATE'2000-08-18', '1016');
insert into booking values('H113', 'G327', DATE'2000-07-02', null, '1017');
insert into booking values('H113', 'G328', DATE'2000-08-25', DATE'2000-08-28', '1018');
insert into booking values('H113', 'G329', DATE'2000-08-13', DATE'2000-08-18', '1019');
insert into booking values('H113', 'G330', DATE'2000-07-03', null, '1020');
 
 select * from booking;

# Creating booking_old table to hold archive records.
 CREATE TABLE booking_old ( 
 hotel_no CHAR(4) NOT NULL, 
 guest_no CHAR(4) NOT NULL, 
 date_from DATETIME NOT NULL, 
 date_to DATETIME NULL, 
 room_no VARCHAR(4) NOT NULL
 );
 
# Updating the price of all room by 5%.
 UPDATE room SET price = price*1.05;
 
 select * from booking_old; # to retrieve all the values from booking_old table.

# Inserting all the records <2000 to booking_old table
INSERT INTO booking_old (SELECT * FROM booking WHERE date_to < DATE'2000-01-01'); 

# Removing all the records <2000 from booking table
DELETE FROM booking WHERE (date_to < DATE '2000-01-01');

-- Simple Queries

-- 1. List full details of all hotels.
select * from hotel; # Retrieving full deatils of all hotels

-- 2. List full details of all hotels in London
select * from hotel where address='London'; # Retrieving full details of all hotels in london.

-- 3. List the names and addresses of all guests in London, alphabetically ordered by name
# Retrieving all guest details from london
select name, address from guest  where address = 'London' order by name asc; 

-- 4. List all double or family rooms with a price below £40.00 per night, in ascending order of price.
# Retrieving all the room details with a price below £40.00
select * from room where price < 40 AND type in ('D','F') order by price asc;


-- 5. List the bookings for which no date_to has been specified.
# Retrieving the values of bookings which date_to column contain null values
select * from booking where date_to is null; 

-- Aggregate Functions

-- 1. How many hotels are there?
# Retrieving the count of hotels from hotel table
select count(name) as Hotel_Count from hotel;

-- 2. What is the average price of a room?
# Retrieving the average price of a room
select avg(price) as Room_Avg_Price from room;

-- 3. What is the total revenue per night from all double rooms?
# Retrieving the total revenue for double rooms
select SUM(price) AS Total_Revenue from room where type='D';

-- 4. How many different guests have made bookings for August?
SELECT guest_no
FROM   booking
WHERE  ( Date_format(date_from, '%M') = 'August'
       AND Date_format(date_to, '%M') = 'August');
       
-- OR
# We have some other way to solve the same problem
SELECT guest_no
FROM   booking
WHERE  ( date_from >= '2000-08-01'
         AND date_to <= '2000-08-31' );

-- Subqueries and Joins

-- 1. List the price and type of all rooms at the Grosvenor Hotel.
# Retrieving the room price and type of a hotel Grosvenor.
select price, type from room where hotel_no = (select hotel_no from hotel
where name = 'Grosvenor Hotel');

-- 2. List all guests currently staying at the Grosvenor Hotel.
# Here I'm using ADDDATE Function to get the current date of the year 
 # Here I assumed current date is 2000 so here What I'm doing is I'm taking 2022-22 years
 # as my current date that's why I used this ADDDATE Function. I assume my presentation is saturday
 # Thats why I took the saturday's date.
 
select guest_no from booking where date_from = ADDDATE("2022-07-02", INTERVAL -22 year)
AND hotel_no = (select hotel_no from hotel where name = 'Grosvenor Hotel');

-- 3. List the details of all rooms at the Grosvenor Hotel, 
-- including the name of the guest staying in the
-- room, if the room is occupied.
# Here Reterieving all rooms at grosvenor hotel along with guest name.
select r.*, guest.name from room r
inner join booking on r.room_no = booking.room_no
inner join hotel on r.hotel_no = hotel.hotel_no AND hotel.name = 'Grosvenor Hotel'
inner join guest on guest.guest_no = booking.guest_no;

-- 4. What is the total income from bookings for the Grosvenor Hotel today?
# Here I'm retrieving the today's total_income of grossvenor hotel
SELECT SUM(price) as Today_Income FROM room r, booking b, hotel h
WHERE (b.date_from = ADDDATE("2022-07-02", INTERVAL -22 year)) AND
r.hotel_no = h.hotel_no AND r.room_no = b.room_no;

-- 5.List the rooms that are currently unoccupied at the Grosvenor Hotel.
# Here I'm retrieving the unoccupied rooms list from Grosvenor Hotel.
select room_no, hotel_no from booking where room_no not in (date_from <= ADDDATE("2022-07-02", INTERVAL -22 year), date_to <= ADDDATE("2022-07-02", INTERVAL -22 year))
and hotel_no = (select hotel_no from hotel where name = 'Grosvenor Hotel');

-- 6. What is the lost income from unoccupied rooms at the Grosvenor Hotel?
# Here Retrieving value of lost income at the Grosvenor Hotel.
SELECT SUM(price)
FROM room r, hotel h
WHERE r.hotel_no = h.hotel_no
AND h.name = 'Grosvenor Hotel'
AND room_no NOT IN
(SELECT room_no FROM booking b, hotel h
WHERE (date_from <= ADDDATE("2022-07-02", INTERVAL -22 year)
AND date_to >= ADDDATE("2022-07-02", INTERVAL -22 year))
AND b.hotel_no = h.hotel_no
AND r.hotel_no=b.hotel_no);

-- Grouping

-- 1. List the number of rooms in each hotel.
# Retrieving the number of rooms in each hotel
select hotel_no, count(room_no) AS Number_of_Rooms from room group by hotel_no;

-- 2. List the number of rooms in each hotel in London.
# Retrieving the numbe of room is each hotel in london
SELECT hotel.hotel_no, COUNT(room_no) AS count FROM hotel, room
WHERE room.hotel_no = hotel.hotel_no AND address LIKE '%London%'
GROUP BY hotel_no;

-- 3. What is the average number of bookings for each hotel in August?
# Retrieving the averag number of booking in august

SELECT hotel_no, (bookings/31) as avg_bookings
FROM
(SELECT hotel_no, COUNT(hotel_no) AS bookings
FROM booking
WHERE (date_from <= '2000-08-31' AND
date_to >= '2000-08-01')
GROUP BY hotel_no) as average_bookings;


-- 4. What is the most commonly booked room type for each hotel in London?
# most freqently booked room type for each hotel in london
SELECT Max(type) as Commonly_Booked_Rooms, count(type) AS Rooms_Count
FROM   room
WHERE  hotel_no IN (SELECT hotel_no
                    FROM   hotel
                    WHERE  address = 'London')
GROUP  BY type;

-- 5. What is the lost income from unoccupied rooms at each hotel today?
# lost income for each hotel
SELECT r.hotel_no, SUM(price) AS Income
FROM room r
WHERE NOT EXISTS ( SELECT * FROM booking b
WHERE
r.room_no = b.room_no AND
r.hotel_no = b.hotel_no AND
(date_from <= ADDDATE("2022-07-02", INTERVAL -22 year) AND
date_to >= ADDDATE("2022-07-02", INTERVAL -22 year)))
GROUP BY hotel_no;








