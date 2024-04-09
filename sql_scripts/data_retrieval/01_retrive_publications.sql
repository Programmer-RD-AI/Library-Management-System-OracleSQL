-- Query to retrieve basic information for each publication using the displayBasicInfo method
SELECT p.title, Publication(p.title, p.publication_date, p.publication_type).displayBasicInfo() AS basic_info
FROM Publications p;
