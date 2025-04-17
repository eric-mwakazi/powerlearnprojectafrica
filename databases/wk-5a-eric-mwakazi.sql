-- This query removes the index named 'IdxPhone' from the 'customers' table
DROP INDEX IdxPhone ON customers;

-- This query creates a new user 'bob' who can only connect from localhost
-- and sets the initial password to 'S$cu3r3!'
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- This query grants the INSERT privilege to the user 'bob'
-- on all tables in the 'salesDB' database
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- This query changes the password for user 'bob' to 'P$55!23'
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
