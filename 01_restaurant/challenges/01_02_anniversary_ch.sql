-- Create a table in the database to store customer
-- responses to our anniversary invitation.

-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.

-- Hint: SQLite offers the INTEGER and REAL datatypes

drop table CustomerRSVP;
CREATE TABLE AnniversaryAttendees (CustomerID INTEGER PRIMARY KEY NOT NULL, PartySize INTEGER NOT NULL DEFAULT 0)