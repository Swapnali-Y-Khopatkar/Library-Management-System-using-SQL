create database lms;
use lms;

create table Author(authorID int primary key,fname varchar(50),lname varchar(50));
desc Author;

create table Type(typeID int primary key,type varchar(50));
desc Type;

create table Book
(bkID int primary key,
title varchar(50),
pageCount int,
authorID int, 
typeID int,
CONSTRAINT fk_bk_author FOREIGN KEY(authorID) REFERENCES Author(authorID),
CONSTRAINT fk_bk_type FOREIGN KEY (typeID) REFERENCES type(typeID));
desc Book;

create table customer(custID int primary key,
fname varchar(30),lname varchar(30),gender varchar(5),
age int(3),sub_start_date date, sub_end_date date);
desc customer;

create table Transaction (transID int primary key,
custID int,bkID int,issue_date datetime,return_date datetime,
CONSTRAINT fk_trans_cust FOREIGN KEY (custID)
 REFERENCES customer(custID), 
 CONSTRAINT fk_trans_bk FOREIGN KEY (bkID) 
 REFERENCES book(bkID));
desc Transaction;