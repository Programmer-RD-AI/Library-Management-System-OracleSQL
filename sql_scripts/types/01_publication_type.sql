-- Define Publication as an object type
CREATE OR REPLACE TYPE Publication AS OBJECT (
    title VARCHAR2(255),
    publication_date DATE,
    publication_type VARCHAR2(20),
    -- Define member function to display basic information
    MEMBER FUNCTION displayBasicInfo RETURN VARCHAR2
);

-- Define body for Publication type
CREATE OR REPLACE TYPE BODY Publication AS 
    -- Implementation of the displayBasicInfo function
    MEMBER FUNCTION displayBasicInfo RETURN VARCHAR2 IS 
    BEGIN 
        RETURN 'Title: ' || title || ', Publication Date: ' || TO_CHAR(publication_date, 'DD-MON-YYYY') || ', Type: ' || publication_type;
    END displayBasicInfo;
END;
