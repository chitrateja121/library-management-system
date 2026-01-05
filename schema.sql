create database library_db;
use library_db;
create table books(book_id int auto_increment primary key,
				
                   title varchar(100) not null,
                   catgory varchar(50),
                   total_copies int not null,
                   available_copies int not null);
create table members(member_id int auto_increment primary key,
                     name varchar(100) not null,
                     email varchar(100) unique,
                     phone varchar(15));
create table librarians(librarian_id int primary key,
						name varchar(100) not null);
create table book_issues(issue_id int auto_increment primary key,
                         book_id int,
                         issue_date date ,
                         member_id int,
                         return_date date,
                         status varchar(20),
                         foreign key(book_id) references books(book_id),
                         foreign key(member_id) references members(member_id));
alter table books add author varchar(100) after title;
alter table books
change catgory category varchar(50);
desc books;
alter table books
change cateogry category varchar(50);
desc books;
alter table librarians
modify librarian_id int auto_increment;