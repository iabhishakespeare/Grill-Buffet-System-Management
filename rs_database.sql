
use Resturant

create TABLE admin (
  admin_id int primary key,
  username nvarchar(222) NOT NULL,
  password nvarchar(222) NOT NULL,
  )

  insert into admin values(1,'Akshay Kumar','Akshay@1234')

  

  CREATE TABLE restaurant (
  rs_id int NOT NULL primary key,
  rs_name varchar(222) NOT NULL,
  rs_email varchar(222) NOT NULL,
  rs_phone varchar(222) NOT NULL,
  rs_url varchar(222) NOT NULL,
  opening_time varchar(222) NOT NULL,
  closing_time varchar(222) NOT NULL,
  opening_days varchar(222) NOT NULL,
  rs_address nvarchar(222) NOT NULL
)
insert into restaurant values(1,'Dil Se Foodie','dilsefoodie@gmail.com','99978*****',
'www.dilsefoodie.in','7:30am','8.00pm','Everyday','NH-1,Near HP Petrol Pump,Haryana')

CREATE TABLE users (
  u_id int primary key Identity NOT NULL,
  f_name varchar(222) NOT NULL,
  l_name varchar(222) NOT NULL,
  email varchar(222) NOT NULL,
  phone varchar(222) NOT NULL,
  password varchar(222) NOT NULL
 )
 
 CREATE TABLE order_details(
  o_id int NOT NULL,
  u_id int NOT NULL,
  title varchar(222) NOT NULL,
  quantity int NOT NULL,
  price float NOT NULL,
  status varchar(222) DEFAULT NULL,
  date datetime NOT NULL,
   FOREIGN KEY (u_id) REFERENCES users(u_id)
)






create table Foodings
(Id int primary key identity,
Dish_Name nvarchar(50) not null,
Veg_NonVeg nvarchar(50) not null check(Veg_NonVeg in ('Veg','Non Veg','Breads')),
Dish_Type nvarchar(50) not null check(Dish_Type in ('Starters','Main Course','Desert','Drinks')),
Price float

)

insert into Foodings values('Chicken Tikka', 'Non veg','Starters',230)
insert into Foodings values('Seekh Kebabs','Non veg','Starters',350)
insert into Foodings values('Fish & chicken Pakora','Non veg','Starters',350)
insert into Foodings values('Chicken spring rolls','Non veg','Starters',250)
insert into Foodings values('Chicken Lollypop','Non veg','Starters',230)
insert into Foodings values('Paneer Tikka', 'Veg','Starters',200)
insert into Foodings values('Veg Burger','Veg','Starters',80)
insert into Foodings values('Dahi Vada','Veg','Starters',50)
insert into Foodings values('Pani Puri','Veg','Starters',30)
insert into Foodings values('Khaman Dhokla','Veg','Starters',120)

insert into Foodings values('Chicken Kadai', 'Non veg','Main Course',270)
insert into Foodings values('Butter Chicken','Non veg','Main Course',320)
insert into Foodings values('Chicken Banjara','Non veg','Main Course',250)
insert into Foodings values('Chicken Masala','Non veg','Main Course',230)
insert into Foodings values('Chicken Dilruba','Non veg','Main Course',330)
insert into Foodings values('Plane Rice', 'Veg','Main Course',125)
insert into Foodings values('Paneer Biryani','Veg','Main Course',200)
insert into Foodings values('Dal Makhni','Veg','Main Course',120)
insert into Foodings values('Chana Masala','Veg','Main Course',100)
insert into Foodings values('Paneer Butter Masala','Veg','Main Course',220)


insert into Foodings values('Hot Chocolate','Extras','Drinks',150)
insert into Foodings values('Cold/Hot Coffee','Extras','Drinks',90)
insert into Foodings values('Tea','Extras','Drinks',20)
insert into Foodings values('Mojito','Extras','Drinks',80)
insert into Foodings values('Deep Blue','Extras','Drinks',90)
insert into Foodings values('Italian Cream Soda','Extras','Drinks',120)
insert into Foodings values('Ruh Afza','Extras','Drinks',30)
insert into Foodings values('Coca Cola','Extras','Drinks',75)
insert into Foodings values('Maza','Extras','Drinks',75)
insert into Foodings values('Pepsi','Extras','Drinks',75)


insert into Foodings values('Gulab Jamun','Extras','Desert',40)
insert into Foodings values('Gajar Ka Halwa','Extras','Desert',60)
insert into Foodings values('Aam Shrikand','Extras','Desert',50)
insert into Foodings values('Kaju Ki Barfi','Extras','Desert',70)
insert into Foodings values('Kulfi','Extras','Desert',20)
insert into Foodings values('Vanilla Icecream','Extras','Desert',30)
insert into Foodings values('Lemin Tart','Extras','Desert',70)
insert into Foodings values('Pistachio Phirni','Extras','Desert',40)
insert into Foodings values('Coconut kheer','Extras','Desert',50)
insert into Foodings values('Kheer','Extras','Desert',40)

insert into Foodings values('Chapati','Breads','Main Course',15)
insert into Foodings values('Tandoor Roti','Breads','Main Course',20)
insert into Foodings values('Naan','Breads','Main Course',30)
insert into Foodings values('Butter Naan','Breads','Main Course',35)
insert into Foodings values('Butter Garlic Naan','Breads','Main Course',40)
insert into Foodings values('Aloo Paratha','Breads','Main Course',80)
insert into Foodings values('Paneer Paratha','Breads','Main Course',70)

select * from Foodings
---------All Veg items
select * from Foodings where Veg_NonVeg='Veg'
---------All Non Veg items
select * from Foodings where Veg_NonVeg='Non Veg'
---------All Starters items
select * from Foodings where Dish_Type='Starters'
---------All Desert items
select * from Foodings where Dish_Type='Desert'
---------All Drinks items
select * from Foodings where Dish_Type='Drinks'
---------All Main Course items
select * from Foodings where Dish_Type='Main Course'

select*from admin

select* from restaurant
select* from users
select* from order_details

