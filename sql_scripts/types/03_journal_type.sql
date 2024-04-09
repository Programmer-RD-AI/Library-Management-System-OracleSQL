CREATE TYPE Journal UNDER Publication (
    volume NUMBER,
    issue NUMBER,
    MEMBER FUNCTION displayFullInfo RETURN VARCHAR2
);

CREATE OR REPLACE TYPE BODY Journal AS
    MEMBER FUNCTION displayFullInfo RETURN VARCHAR2 IS 
    BEGIN 
        RETURN 'Issue - ' || TO_CHAR(issue) || '; Volume - ' || TO_CHAR(volume);
    END;
END;
