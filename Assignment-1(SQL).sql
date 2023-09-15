create database LinkedIn;

use LinkedIn;

create table AI_Tools(Id int, Technology varchar(25));

insert into AI_Tools values
(1,"DS"),
(1,"Tableau"),
(1,"SQL"),
(2,"R"),
(2,"POWER BI"),
(1,"Python") ;

select * from AI_Tools;

-- > To List The Candidates id which posses these skills: DS,Tableu,Python,SQL

Select ID from AI_Tools where Technology="DS" or  Technology="Tableau" or  
Technology="Python" or  Technology="SQL";

-- ---------xxxxxx--------------------xxxxxxx---------xxxxxxx--------------------xxxxxxx----------------

CREATE DATABASE Facebook;
 
USE Facebook;

CREATE TABLE Product_Info( Pr_ID int Primary Key, Product_Name varchar(20));

Insert INTO Product_Info values(1001,"Blog"),(1002,"Youtube"),
 (1003,"Education");

drop table Product_Info;

drop table Product_Info_Likes;

Select * FROM  Product_Info;

CREATE TABLE Product_Info_Likes(
 User_ID int Primary Key,
 Pr_ID int,
 Liked_date date,
 FOREIGN KEY(Pr_ID) REFERENCES Product_Info(Pr_ID));
 
 DESCRIBE Product_Info_Likes;
 
 INSERT INTO Product_Info_Likes values(1,1001,"2023-08-19"),
 (2,1003,"2023-08-18");
 
 # QUERY TO RETURN IDS OF THE PRODUCT INFO THAT HAS 0 LIKES
 
SELECT Product_Info.Pr_ID
FROM Product_Info
LEFT JOIN Product_Info_Likes
ON Product_Info.Pr_ID = Product_Info_Likes.Pr_ID
GROUP BY Product_Info.Pr_ID
HAVING COUNT(Product_Info_Likes.Pr_ID) = 0;