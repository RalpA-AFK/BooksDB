DROP TABLE authorISBN;
DROP TABLE titles;
DROP TABLE authors;

CREATE TABLE authors (
   authorID INT NOT NULL GENERATED ALWAYS AS IDENTITY,
   firstName varchar (20) NOT NULL,
   lastName varchar (30) NOT NULL,
   PRIMARY KEY (authorID)
);

CREATE TABLE titles (
   isbn varchar (20) NOT NULL,
   title varchar (100) NOT NULL,
   editionNumber INT NOT NULL,
   copyright varchar (4) NOT NULL,
   PRIMARY KEY (isbn)
);

CREATE TABLE authorISBN (
   authorID INT NOT NULL,
   isbn varchar (20) NOT NULL,
   FOREIGN KEY (authorID) REFERENCES authors (authorID), 
   FOREIGN KEY (isbn) REFERENCES titles (isbn)
);

---------------------------------------------------
-- AUTHORS (fictional names)
---------------------------------------------------
INSERT INTO authors (firstName, lastName)
VALUES 
   ('Alex','Morgan'),
   ('Jordan','Peterson'),
   ('Taylor','Reed'),
   ('Casey','Nguyen'),
   ('Morgan','Smith'),
   ('Riley','Johnson'),
   ('Jamie','Williams'),
   ('Avery','Brown');

---------------------------------------------------
-- TITLES (same structure, slightly expanded)
---------------------------------------------------
INSERT INTO titles (isbn,title,editionNumber,copyright)
VALUES
   ('1000000001','Introduction to Programming Basics',1,'2018'),
   ('1000000002','Advanced Java Concepts',2,'2020'),
   ('1000000003','Database Systems Fundamentals',3,'2019'),
   ('1000000004','Web Development with Java',2,'2021'),
   ('1000000005','Data Structures and Algorithms',4,'2022'),
   ('1000000006','Operating Systems Concepts',5,'2017'),
   ('1000000007','Software Engineering Principles',3,'2020'),
   ('1000000008','Mobile App Development Guide',2,'2023'),
   ('1000000009','Computer Networks Essentials',1,'2016'),
   ('1000000010','Artificial Intelligence Basics',1,'2024');

---------------------------------------------------
-- AUTHOR–ISBN RELATIONSHIP
---------------------------------------------------
INSERT INTO authorISBN (authorID,isbn)
VALUES
   (1,'1000000001'),
   (1,'1000000002'),
   (2,'1000000003'),
   (2,'1000000004'),
   (3,'1000000005'),
   (3,'1000000006'),
   (4,'1000000007'),
   (4,'1000000008'),
   (5,'1000000009'),
   (5,'1000000010'),

   (6,'1000000001'),
   (6,'1000000005'),
   (7,'1000000002'),
   (7,'1000000007'),
   (8,'1000000003'),
   (8,'1000000010');
