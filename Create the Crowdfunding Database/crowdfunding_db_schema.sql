CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE Category (
    category_id TEXT NOT NULL PRIMARY KEY,
    category TEXT
);

CREATE TABLE Subcategory (
	subcategory_id TEXT PRIMARY KEY,
    subcategory TEXT
);

CREATE TABLE Campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT REFERENCES Contacts(contact_id),
    company_name TEXT,
    description TEXT,
    goal FLOAT,
    pledged FLOAT,
    outcome TEXT,
    backers_count INT,
    country TEXT,
    currency TEXT,
    launched_date TIMESTAMP WITH TIME ZONE,
    end_date TIMESTAMP WITH TIME ZONE,
    category_id TEXT REFERENCES Category(category_id),
    subcategory_id TEXT REFERENCES Subcategory(subcategory_id)
);