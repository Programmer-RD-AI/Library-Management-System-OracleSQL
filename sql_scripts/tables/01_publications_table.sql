-- Create table for Publications
CREATE TABLE Publications (
    publication_id NUMBER PRIMARY KEY,
    title VARCHAR2(255),
    publication_date DATE,
    publication_type VARCHAR2(20),
    -- Ensure publication_type is either 'Book' or 'Journal'
    CONSTRAINT chk_pub_type CHECK (publication_type IN ('Book', 'Journal'))
);
