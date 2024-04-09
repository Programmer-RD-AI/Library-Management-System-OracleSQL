-- Inserting data for the publication titled 'The Great Gatsby' into the Publications table
INSERT INTO Publications VALUES (
    1, -- publication_id
    'The Great Gatsby', -- title
    TO_DATE('2023-05-10', 'YYYY-MM-DD'), -- publication_date
    'Book' -- publication_type
);

-- Inserting data for the publication titled 'National Geographic' into the Publications table
INSERT INTO Publications VALUES (
    2, -- publication_id
    'National Geographic', -- title
    TO_DATE('2023-04-15', 'YYYY-MM-DD'), -- publication_date
    'Journal' -- publication_type
);

-- Inserting data for the publication titled 'Harry Potter and the Philosopher''s Stone' into the Publications table
INSERT INTO Publications VALUES (
    3, -- publication_id
    'Harry Potter and the Philosopher''s Stone', -- title
    TO_DATE('2023-06-20', 'YYYY-MM-DD'), -- publication_date
    'Book' -- publication_type
);
