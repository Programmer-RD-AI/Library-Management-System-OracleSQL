CREATE
OR REPLACE FUNCTION DisplayBorrowedPublications(member_id_in NUMBER) RETURN VARCHAR2 IS output VARCHAR2(32767);

BEGIN FOR loan_rec IN (
    SELECT
        m.name,
        p.title,
        l.loan_date,
        l.return_date
    FROM
        Loans l
        JOIN Members m ON l.member_id = m.member_id
        JOIN Publications p ON l.publication_id = p.publication_id
    WHERE
        l.member_id = member_id_in
) LOOP output := output || loan_rec.name || ' borrowed ' || loan_rec.title || ' on ' || TO_CHAR(loan_rec.loan_date, 'DD-MON-YYYY') || ', returned on ' || TO_CHAR(loan_rec.return_date, 'DD-MON-YYYY') || CHR(10);

END LOOP;

RETURN output;

END;
