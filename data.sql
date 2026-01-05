USE library_db;

-- Insert books
INSERT INTO books (title, author, category, total_copies, available_copies) VALUES
('Python Basics', 'Guido van Rossum', 'Programming', 5, 5),
('MySQL Complete Guide', 'Oracle', 'Database', 4, 4),
('Data Structures', 'Mark Allen', 'Computer Science', 3, 3),
('Operating Systems', 'Galvin', 'Computer Science', 2, 2);

-- Insert members
INSERT INTO members (name, email, phone) VALUES
('Ravi Kumar', 'ravi@gmail.com', '9876543210'),
('Anita Sharma', 'anita@gmail.com', '9123456789'),	
('Suresh Reddy', 'suresh@gmail.com', '9988776655');

-- Insert librarians
INSERT INTO librarians (name) VALUES
('Admin One'),
('Admin Two');
select * from books;
select * from members;
select * from librarians;