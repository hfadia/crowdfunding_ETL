DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Subcategory;
DROP TABLE IF EXISTS Contacts;
DROP TABLE IF EXISTS Campaign;

CREATE TABLE Category(
       category_id VARCHAR PRIMARY KEY,
	   category VARCHAR
);

CREATE TABLE Subcategory(
        subcategory_id VARCHAR PRIMARY KEY,
	    subcategory VARCHAR
);

CREATE TABLE Contacts(
       contact_id INT,
       first_name VARCHAR,
       last_name VARCHAR,
        email VARCHAR
);

CREATE TABLE Campaign(
         cf_id INT,
         contact_id INT,
         company_name VARCHAR,
         description VARCHAR,
         goal Numeric,
         pledged Numeric,
         outcome VARCHAR,
         backers_count INT,
         country VARCHAR,
         currency VARCHAR,
         launched_date DATE,
         end_date DATE,
         category_id VARCHAR,
         subcategory_id VARCHAR
	     FOREIGN KEY(category_id) REFERENCES Category (category_id)
	     FOREIGN KEY(Subcategory_id) REFERENCES Subcategory (subcategory_id)
	     FOREIGN KEY(contact_id) REFERENCES Contacts (contact_id)
);

SELECT * from Category
SELECT * from Subcategory
SELECT * from Contacts
SELECT * from Campaign

