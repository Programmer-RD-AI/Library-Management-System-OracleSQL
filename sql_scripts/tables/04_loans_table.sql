CREATE TABLE Loans (
    member_id NUMBER,
    publication_id NUMBER,
    loan_date DATE,
    return_date DATE,
    PRIMARY KEY (member_id, publication_id),
    CONSTRAINT fk_loans_members FOREIGN KEY (member_id) REFERENCES Members(member_id),
    CONSTRAINT fk_loans_publications FOREIGN KEY (publication_id) REFERENCES Publications(publication_id)
);
