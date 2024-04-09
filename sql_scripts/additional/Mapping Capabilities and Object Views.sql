CREATE OR REPLACE VIEW LoanDetails AS
SELECT l.member_id,
       m.name AS member_name,
       m.contact_info AS member_contact,
       l.publication_id,
       p.title AS publication_title,
       p.publication_date AS publication_date,
       p.publication_type AS publication_type,
       l.loan_date,
       l.return_date,
FROM Loans l
JOIN Members m ON l.member_id = m.member_id
JOIN Publications p ON l.publication_id = p.publication_id;

SELECT * FROM LoanDetails;
