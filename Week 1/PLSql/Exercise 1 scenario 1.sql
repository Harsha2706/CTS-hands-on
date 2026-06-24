SET SERVEROUTPUT ON;

DECLARE
BEGIN
    FOR rec IN (
        SELECT l.LoanID,
               l.InterestRate,
               c.Age
        FROM Loans l
        JOIN Customers c
        ON l.CustomerID = c.CustomerID
    )
    LOOP
        IF rec.Age > 60 THEN
            UPDATE Loans
            SET InterestRate = InterestRate - 1
            WHERE LoanID = rec.LoanID;

            DBMS_OUTPUT.PUT_LINE(
                'Discount applied to Loan ID: '
                || rec.LoanID
            );
        END IF;
    END LOOP;

    COMMIT;
END;
/
SELECT * FROM Loans;