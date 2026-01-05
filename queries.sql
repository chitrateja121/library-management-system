USE library_db;

-- 1. View all books
SELECT * FROM books;

-- 2. View available books
SELECT title, available_copies
FROM books
WHERE available_copies > 0;

-- 3. View all members
SELECT * FROM members;

-- 4. Issue a book using procedure
CALL issue_book(1, 1);

-- 5. View issued books
SELECT 
    bi.issue_id,
    m.name AS member_name,
    b.title AS book_title,
    bi.issue_date,
    bi.return_date,
    bi.status
FROM book_issues bi
JOIN members m ON bi.member_id = m.member_id
JOIN books b ON bi.book_id = b.book_id;

-- 6. Return a book
CALL return_book(1, 1);

-- 7. Books count summary
SELECT 
    title,
    total_copies,
    available_copies,
    (total_copies - available_copies) AS issued_copies
FROM books;