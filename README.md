# Library Management System (MySQL)

## Description
This is a simple Library Management System built using only MySQL.
It manages books, members, librarians, and book issue/return operations.

## Technologies Used
- MySQL
- MySQL Workbench

## Database Structure
- books
- members
- librarians
- book_issues

## Features
- Add and manage books
- Register members
- Issue and return books
- Track available copies
- Stored procedures for business logic

## Files in This Project
- schema.sql      → Database and table creation
- data.sql        → Sample data insertion
- procedures.sql  → Stored procedures (issue/return books)
- queries.sql     → Important SQL queries

## How to Run
1. Open MySQL Workbench
2. Run `schema.sql`
3. Run `data.sql`
4. Run `procedures.sql`
5. Execute queries from `queries.sql`

## Example
```sql
CALL issue_book(1, 2);
