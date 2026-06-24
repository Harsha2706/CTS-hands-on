-- CREATE TABLE Accounts (
--     Account_ID NUMBER PRIMARY KEY,
--     Account_Type VARCHAR2(20),
--     Balance NUMBER
-- );

-- CREATE TABLE Employees (
--     Employee_ID NUMBER PRIMARY KEY,
--     Department_ID NUMBER,
--     Salary NUMBER
-- );
INSERT INTO Accounts VALUES (101, 'SAVINGS', 10000);
INSERT INTO Accounts VALUES (102, 'SAVINGS', 5000);

INSERT INTO Employees VALUES (1, 10, 50000);
INSERT INTO Employees VALUES (2, 10, 60000);
INSERT INTO Employees VALUES (3, 20, 55000);

COMMIT;