create database project1;
use project1;
CREATE TABLE Product (
    Pid   INT,
    Pname VARCHAR(30),
    Price DECIMAL(10,2),
    Qty   INT
);
INSERT INTO Product VALUES
(101, 'Laptop', 50000, 1),
(102, 'Mouse',   1000, 2);

DELIMITER $$

CREATE FUNCTION CalculateDiscount(amount DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    IF amount > 5000 THEN
        RETURN amount * 0.10;   
    ELSE
        RETURN 0;               
    END IF;
END$$

DELIMITER ;

DELIMITER // 
CREATE FUNCTION CALCULATEGST(AMOUNT DECIMAL(10,2))
RETURNS DECIMAL(10,2)
deterministic
BEGIN 
     RETURN AMOUNT*0.18;
END //
DELIMITER ;

DELIMITER $$

CREATE FUNCTION FinalBill(amount DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE discount DECIMAL(10,2);
    DECLARE discounted_amount DECIMAL(10,2);
    DECLARE gst DECIMAL(10,2);

    SET discount          = CalculateDiscount(amount);
    SET discounted_amount = amount - discount;
    SET gst               = CalculateGST(discounted_amount);

    RETURN discounted_amount + gst;
END$$

DELIMITER ;

SELECT
    Pid,
    Pname,
    Price * Qty                              AS Total,
    CalculateDiscount(Price * Qty)           AS Discount,
    CalculateGST(Price * Qty - CalculateDiscount(Price * Qty)) AS GST,
    FinalBill(Price * Qty)                   AS FinalBill
FROM Product;