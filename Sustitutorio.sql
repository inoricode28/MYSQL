create schema Stock;
use Stock;



CREATE TABLE Stocks (
  stockId INT PRIMARY KEY,
  name VARCHAR(255),
  lastdate DATE,
  benchmarkId INT
);


INSERT INTO Stocks (stockId, name, lastdate, benchmarkId)
VALUES (1, 'Stock A', '2022-04-25', 10),
       (2, 'Stock B', '2022-04-26', 20),
       (3, 'Stock C', '2022-04-27', 30);

select * from Stocks;
       
       
-- Procedimiento para insertar un registro en la tabla Stock
DELIMITER $$
CREATE PROCEDURE InsertarStock(
  IN p_stockId INT,
  IN p_name VARCHAR(255),
  IN p_lastdate DATE,
  IN p_benchmarkId INT
)
BEGIN
  INSERT INTO Stocks (stockId, name, lastdate, benchmarkId)
  VALUES (p_stockId, p_name, p_lastdate, p_benchmarkId);
END$$
DELIMITER ;

drop procedure InsertarStock;

-- Procedimiento para actualizar un registro en la tabla Stock
DELIMITER $$
CREATE PROCEDURE ActualizarStock(
  IN p_stockId INT,
  IN p_name VARCHAR(255),
  IN p_lastdate DATE,
  IN p_benchmarkId INT
)
BEGIN
  UPDATE Stocks
  SET name = p_name,
      lastdate = p_lastdate,
      benchmarkId = p_benchmarkId
  WHERE stockId = p_stockId;
END$$
DELIMITER ;

drop procedure ActualizarStock;

-- Procedimiento para eliminar un registro de la tabla Stock
DELIMITER $$
CREATE PROCEDURE EliminarStock(
  IN p_stockId INT
)
BEGIN
  DELETE FROM Stocks
  WHERE stockId = p_stockId;
END$$
DELIMITER ;

drop procedure EliminarStock;

-- Procedimiento para obtener todos los registros de la tabla Stock
DELIMITER $$
CREATE PROCEDURE ObtenerTodosStocks()
BEGIN
  SELECT * FROM Stocks;
END$$
DELIMITER ;

drop procedure ObtenerTodosStocks;

-- Procedimiento para obtener un registro específico de la tabla Stock
DELIMITER $$
CREATE PROCEDURE ObtenerStock(
  IN p_stockId INT
)
BEGIN
  SELECT * FROM Stocks
  WHERE stockId = p_stockId;
END$$
DELIMITER ;

drop procedure ObtenerStock;




