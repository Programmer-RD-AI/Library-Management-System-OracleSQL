CREATE TYPE Member AS OBJECT (
    member_id NUMBER,
    name VARCHAR2(255),
    contact_info VARCHAR2(255),
    MEMBER FUNCTION displayInfo RETURN VARCHAR2
);

CREATE OR REPLACE TYPE BODY Member AS 
    MEMBER FUNCTION displayInfo RETURN VARCHAR2 IS 
    BEGIN 
        RETURN 'Member ID: ' || TO_CHAR(member_id) || ', Name: ' || name || ', Contact Info: ' || contact_info;
    END;
END;
