-- SQLite
CREATE TABLE IF NOT EXISTS customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Firstname TEXT,
    Lastname TEXT,
    email Text,
    Contact TEXT,
    Bothname Text
);

INSERT INTO customers (Firstname, Lastname, email, Contact, Bothname)
VALUES ('Vidushi', 'Upadhyay', 'vu@gmail.com', '1234', 'Vidushi Upadhyay'),
       ('Amita', 'Singh', 'as@gmail.com', '2345', 'Amita Singh'),
       ('Himanshu', 'Yadav', 'hs@gmail.com', '3456','Himanshu Yadav'),
       ('Sandhya', 'Singh', 'ss@gmail.com', '4567', 'Sandhya Singh'),
       ('Jyotsana', 'Pandey', 'jp@gmail.com', '5678', 'Jyotsana Pandey'),
       ('Pranshi', 'Rastogi', 'pr@gmail.com', '6789', 'Pranshi Rastogi'),
       ('Shivendra', 'Tripathi', 'st@gmail.com', '7890', 'Shivendra Tripathi'),
       ('Sarvesh', 'Yadav', 'sy@gmail.com', '0123', 'Sarvesh Yadav'),
       ('Nelson', 'Paul', 'np@gmail.com', '1357','Nelson Paul'),
       ('Priyashi', 'Srivastava', 'ps@gmail.com', '2468', 'Priyashi Srivastava'),
       ('Vikas', 'Gupta', 'vg@gmail.com', '1090', 'Vikas Gupta'),
       ('Shashank', 'Maurya', 'sm@gmail.com', '1222', 'Shashank Maurya'),
       ('Satyavrat', 'Singh', 'sas@gmail.com', '1331', 'Satyavrat Singh');