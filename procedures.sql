USE library_db;

DELIMITER $$

-- Procedure to issue a book
CREATE PROCEDURE issue_book (
    IN p_book_id INT,
    IN p_member_id INT
)
BEGIN
    INSERT INTO book_issues (book_id, member_id, issue_date, status)
    VALUES (p_book_id, p_member_id, CURDATE(), 'ISSUED');

    UPDATE books
    SET available_copies = available_copies - 1
    WHERE book_id = p_book_id;
END $$

-- Procedure to return a book
CREATE PROCEDURE return_book (
    IN p_issue_id INT,
    IN p_book_id INT
)
BEGIN
    UPDATE book_issues
    SET return_date = CURDATE(),
        status = 'RETURNED'
    WHERE issue_id = p_issue_id;

    UPDATE books
    SET available_copies = available_copies + 1
    WHERE book_id = p_book_id;
END $$

DELIMITER ;