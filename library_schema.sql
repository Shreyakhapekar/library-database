--
-- File generated with SQLiteStudio v3.4.17 on Tue Jun 24 22:36:12 2025
--
-- Text encoding used: System
--
CREATE TABLE Authors (
    AuthorID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL
);

CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    Year INTEGER,
    AuthorID INTEGER,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Members (
    MemberID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Email TEXT UNIQUE,
    JoinDate DATE
);

CREATE TABLE Transactions (
    TransactionID INTEGER PRIMARY KEY,
    MemberID INTEGER,
    BookID INTEGER,
    IssueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
