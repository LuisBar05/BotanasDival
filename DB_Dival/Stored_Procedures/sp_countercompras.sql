
Use DB_Dival;
Drop procedure if exists sp_countercompras;
DELIMITER $$
Create Procedure sp_countercompras(in fechacmp DATE)
BEGIN
	
    DECLARE totcmp INT DEFAULT 0;
    DECLARE fecha_cmp Date;
    DECLARE ended BOOLEAN DEFAULT FALSE;
    
	DECLARE tot_compras CURSOR FOR
		SELECT Fecha_Compra as fecha_cmp FROM compras;
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET ended = TRUE;
    
    OPEN tot_compras;
    ciclo_totcmp: LOOP
		FETCH tot_compras INTO fecha_cmp;
        
        IF fecha_cmp=fechacmp THEN
			SET totcmp=totcmp+1;
        END IF;
        
        IF ended THEN
			LEAVE ciclo_totcmp;
        END IF;  
	END LOOP ciclo_totcmp;
    
    SELECT compras.Id_Compra, compras.Total_Compra, compras.Fecha_Compra, compras.Status, detalle_compra.Cantidad
	FROM compras
	INNER JOIN	detalle_compra ON compras.Id_Compra=detalle_compra.Id_Compra
	WHERE Fecha_Compra=fechacmp;
	
    SELECT totcmp as No_Compras_por_Dia;
    
	CLOSE tot_compras;
    
END
$$

call sp_countercompras('2018-05-11');