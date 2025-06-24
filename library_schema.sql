--
-- File generated with SQLiteStudio v3.4.17 on Tue Jun 24 22:36:12 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Authors
CREATE TABLE IF NOT EXISTS Authors (
    AuthorID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL
);

-- Table: Books
CREATE TABLE IF NOT EXISTS Books (
    BookID INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    Year INTEGER,
    AuthorID INTEGER,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Table: Members
CREATE TABLE IF NOT EXISTS Members (
    MemberID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Email TEXT UNIQUE,
    JoinDate DATE
);

-- Table: Transactions
CREATE TABLE IF NOT EXISTS Transactions (
    TransactionID INTEGER PRIMARY KEY,
    MemberID INTEGER,
    BookID INTEGER,
    IssueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
