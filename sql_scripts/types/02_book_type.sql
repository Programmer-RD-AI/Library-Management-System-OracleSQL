-- Allowing the "Publication" type to be extended
ALTER TYPE Publication NOT FINAL;

-- Defining a subtype "Book" under the "Publication" type
CREATE TYPE Book UNDER Publication (
    author VARCHAR2(255), -- Attribute for the author of the book
    ISBN VARCHAR2(13), -- Attribute for the International Standard Book Number
    MEMBER FUNCTION displayFullInfo RETURN VARCHAR2 -- Member function to display full information of the book
);

-- Defining the body of the member function "displayFullInfo" for the "Book" subtype
CREATE OR REPLACE TYPE BODY Book AS
    MEMBER FUNCTION displayFullInfo RETURN VARCHAR2 IS -- Implementation of the member function
    BEGIN
        RETURN ', Author: ' || author || ', ISBN: ' || ISBN; -- Returning the full information of the book
    END displayFullInfo; -- End of the member function
END; -- End of the type body
