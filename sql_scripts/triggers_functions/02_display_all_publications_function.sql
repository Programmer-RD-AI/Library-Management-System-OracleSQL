CREATE
OR REPLACE FUNCTION DisplayAllPublications RETURN VARCHAR2 IS output VARCHAR2(32767);

BEGIN FOR pub IN (
    SELECT
        p.title,
        p.publication_date,
        p.publication_type
    FROM
        Publications p
    ORDER BY
        p.title
) LOOP output := output || pub.title || ', ' || TO_CHAR(pub.publication_date, 'DD-MON-YYYY') || ', ' || pub.publication_type || CHR(10);

END LOOP;

RETURN output;

END;
