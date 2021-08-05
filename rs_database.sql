use Resturant

CREATE TABLE Admin (
  admin_id int primary key,
  username nvarchar(222) NOT NULL,
  password nvarchar(222) NOT NULL,
  )


  

  CREATE TABLE Restaurant (
  rs_id int NOT NULL primary key,
  rs_name varchar(222) NOT NULL,
  rs_email varchar(222) NOT NULL unique check (rs_email like '%_@__%.__%'),
  rs_phone varchar(222) NOT NULL unique check(rs_phone like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  rs_url varchar(222) NOT NULL,
  opening_time varchar(222) NOT NULL,
  closing_time varchar(222) NOT NULL,
  opening_days varchar(222) NOT NULL,
  rs_address nvarchar(222) NOT NULL
)

 CREATE TABLE Users (
  u_id int primary key Identity NOT NULL,
  f_name varchar(222) NOT NULL,
  l_name varchar(222) NOT NULL,
  email varchar(222) NOT NULL unique check (email like '%_@__%.__%'),
  phone varchar(222) NOT NULL unique check(phone like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  password varchar(222) NOT NULL
 )
 
CREATE TABLE Order_Details(
  o_id int NOT NULL,
  u_id int NOT NULL,
  title varchar(222) NOT NULL,
  quantity int NOT NULL,
  price float NOT NULL,
  status varchar(222) DEFAULT NULL,
  date datetime NOT NULL,
   FOREIGN KEY (u_id) REFERENCES users(u_id)
)

CREATE TABLE Foodings
(Id int primary key identity,
Dish_Name nvarchar(50) not null,
Veg_NonVeg nvarchar(50) not null check(Veg_NonVeg in ('Veg','Non Veg','Breads')),
Dish_Type nvarchar(50) not null check(Dish_Type in ('Starters','Main Course','Desert','Drinks')),
Price float)


select * from Foodings

select*from Admin

select* from Restaurant
select* from Users
select* from Order_Details
