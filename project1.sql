CREATE DATABASE BANK;
USE BANK;
CREATE TABLE BankAccount (
    AccNo    INT PRIMARY KEY,
    CustName VARCHAR(30),
    Balance  DECIMAL(15, 2)
);

DELIMITER $$

CREATE PROCEDURE AddAccount(
    IN p_accno   INT,
    IN p_name    VARCHAR(30),
    IN p_balance DECIMAL(15,2)
)
BEGIN
    INSERT INTO BankAccount (AccNo, CustName, Balance)
    VALUES (p_accno, p_name, p_balance);

    SELECT 'Account created successfully.' AS Message;
END$$

DELIMITER ;

CALL AddAccount(100101, 'RAJESH', 50000);
CALL AddAccount(100102, 'PRIYA',  75000);
CALL AddAccount(100103, 'ARUN',   25000);

DELIMITER $$

CREATE PROCEDURE ViewAccounts()
BEGIN
    SELECT AccNo, CustName, Balance
    FROM BankAccount;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE DeleteAccount(
    IN p_accno INT
)
BEGIN
    DELETE FROM BankAccount
    WHERE AccNo = p_accno;

    SELECT 'Account deleted successfully.' AS Message;
END$$

DELIMITER ;
CALL DeleteAccount(100102);

DELIMITER $$

CREATE PROCEDURE AvgBalance(
    OUT p_avg DECIMAL(15,2)
)
BEGIN
    SELECT AVG(Balance) INTO p_avg
    FROM BankAccount;
END$$

DELIMITER ;
SET @avg_bal = 0;            
CALL AvgBalance(@avg_bal);   
SELECT @avg_bal AS 'Average Balance';  