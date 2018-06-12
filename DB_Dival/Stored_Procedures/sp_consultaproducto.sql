use db_dival;

DROP PROCEDURE If EXISTS sp_consultaproducto;
DELIMITER $$
CREATE PROCEDURE sp_consultaproducto(in texto varchar(20))
BEGIN

	DECLARE codproduct VARCHAR(15) DEFAULT '';
    DECLARE des	VARCHAR(50) DEFAULT '';
    DECLARE costunit FLOAT DEFAULT 0;
    DECLARE stat VARCHAR(1) DEFAULT NULL;
    DECLARE ended BOOLEAN DEFAULT FALSE;
    

	DECLARE recordsproduct CURSOR FOR
		SELECT Cod_Producto AS codproduct, Descripcion AS des, Costo_Unit AS costunit,  Status AS stat
        FROM Productos
        WHERE Descripcion LIKE CONCAT('%', texto, '%');
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET ended = TRUE;
    
    DROP TABLE if EXISTS temporalProduct;
    CREATE TEMPORARY TABLE temporalProduct
    (
		Cod_Producto VARCHAR(15) NOT NULL PRIMARY KEY,
        Descricpion VARCHAR(50) NOT NULL,
        Costo_Unit	FLOAT,
        Status VARCHAR(1)
	);
        
	OPEN recordsproduct;
		REPEAT
			FETCH recordsproduct INTO codproduct, des, costunit, stat;
			
            IF !ended THEN
				INSERT INTO temporalProduct
				VALUES(codproduct, des, costunit, stat);
			END IF;
		UNTIL ended END REPEAT;
    CLOSE recordsproduct;
    
    SELECT * FROM temporalProduct;
    
END $$

call sp_consultaproducto('Cacahuate');
    
    
