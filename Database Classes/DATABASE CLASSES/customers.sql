-- SQLite
CREATE TABLE customers(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Firstname TEXT,
    Lastname TEXT,
    email Text,
    Contact TEXT
);

INSERT INTO customers (Firstname, Lastname, email, Contact)
VALUES ('Vidushi', 'Upadhyay', 'vu@gmail.com', '1234'),
       ('Amita', 'Singh', 'as@gmail.com', '2345'),
       ('Himanshu', 'Yadav', 'hs@gmail.com', '3456'),
       ('Sandhya', 'Singh', 'ss@gmail.com', '4567'),
       ('Jyotsana', 'Pandey', 'jp@gmail.com', '5678'),
       ('Pranshi', 'Rastogi', 'pr@gmail.com', '6789'),
       ('Shivendra', 'Tripathi', 'st@gmail.com', '7890'),
       ('Sarvesh', 'Yadav', 'sy@gmail.com', '0123'),
       ('Nelson', 'Paul', 'np@gmail.com', '1357'),
       ('Priyashi', 'Srivastava', 'ps@gmail.com', '2468'),
       ('Vikas', 'Gupta', 'vg@gmail.com', '1090'),
       ('Shashank', 'Maurya', 'sm@gmail.com', '1222'),
       ('Satyavrat', 'Singh', 'sas@gmail.com', '1331');