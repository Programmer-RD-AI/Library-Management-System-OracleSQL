-- Inserting data for loan of 'The Great Gatsby' to John Doe
INSERT INTO Loans (member_id, publication_id, loan_date, return_date)
VALUES (1, 1, TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2023-07-08', 'YYYY-MM-DD'));

-- Inserting data for loan of 'National Geographic' to Jane Smith
INSERT INTO Loans (member_id, publication_id, loan_date, return_date)
VALUES (2, 2, TO_DATE('2023-07-03', 'YYYY-MM-DD'), TO_DATE('2023-07-10', 'YYYY-MM-DD'));

-- Inserting data for loan of 'Harry Potter and the Philosopher''s Stone' to Michael Johnson
INSERT INTO Loans (member_id, publication_id, loan_date, return_date)
VALUES (3, 3, TO_DATE('2023-07-05', 'YYYY-MM-DD'), TO_DATE('2023-07-12', 'YYYY-MM-DD'));
