DROP DATABASE IF EXISTS db_contact;
CREATE DATABASE db_contact;
USE db_contact;

CREATE TABLE tbl_contact(
	id INT(11) primary key auto_increment,
	fullName varchar(255),
	address varchar(255),
	isActive varchar(1)
);
