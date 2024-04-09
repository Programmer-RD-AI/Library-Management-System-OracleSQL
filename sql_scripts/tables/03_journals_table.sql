CREATE TABLE Journals (
    publication_id NUMBER PRIMARY KEY,
    volume NUMBER,
    issue NUMBER,
    CONSTRAINT fk_journals_publications FOREIGN KEY (publication_id) REFERENCES Publications(publication_id) ON DELETE CASCADE
);
