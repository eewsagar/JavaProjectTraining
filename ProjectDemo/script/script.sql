DROP DATABASE IF EXISTS db_student;
CREATE DATABASE db_student;
USE db_student;

CREATE TABLE tbl_contact(
	id INT(11) primary key auto_increment,
	firstname varchar(255),
	lastname varchar(255),
	roll varchar(11),
	classes varchar(11)
);
