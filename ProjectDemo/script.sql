/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Sagar Varma
 * Created: Jan 28, 2021
 */
drop database if exists dblibrary;
create database dbLibrary;
use dbLibrary;

create table books(
 bookid int (11) not null, 
 bookname varchar (30), 
 author varchar(30),
 isssueBy int(20), 
 issuedate date , 
 tilldate date,
 isactive varchar(2));
