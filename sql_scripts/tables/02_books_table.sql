CREATE TABLE Books (
    ISBN VARCHAR2(13) PRIMARY KEY,
    publication_id NUMBER UNIQUE,
    author VARCHAR2(255),
    CONSTRAINT fk_books_publications FOREIGN KEY (publication_id) REFERENCES Publications(publication_id) ON DELETE CASCADE
);
