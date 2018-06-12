Use DB_Dival;
Drop procedure if exists sp_insert_and_generateproductcodes;
DELIMITER $$
CREATE PROCEDURE sp_insert_and_generateproductcodes (in id_rec INT, in id_pres INT, in price float, in costunit float)
BEGIN

	DECLARE categ VARCHAR(20) DEFAULT '';
	DECLARE ingre VARCHAR(50) DEFAULT '';
    DECLARE rece VARCHAR(50) DEFAULT '';
    DECLARE descr VARCHAR(50) DEFAULT '';
    DECLARE cant FLOAT DEFAULT 0;
	DECLARE diff INT DEFAULT 0;

	DECLARE pc VARCHAR(8) DEFAULT '';
    
	DECLARE textidentifier CURSOR FOR 
        Select categorias.Nombre_Categoria as categ, recetas.Descripcion as ingre from categorias
        Inner join recetas using (Id_Categoria)
        Where recetas.Id_Receta = id_rec;

	DECLARE numidentifier CURSOR FOR
		Select cantidad as cant from presentaciones
        where Id_Presentacion=id_pres;        
            
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET @ended = TRUE;    

	OPEN textidentifier;
    ciclo_text: LOOP
		FETCH textidentifier INTO categ, ingre;
        set descr = ingre;
		set rece = ingre;
		set ingre = left(ingre, 1);
		set categ = LEFT(categ,1);
		set diff = char_length(rece)-Locate(" ",rece);
        
        IF diff!=char_length(rece) THEN
			set rece = Right(rece,diff);
			set rece = Left(rece,1);
            set pc = Concat(categ,ingre,rece);
		ELSE
			set pc = Concat(categ,ingre);
		END IF;
        
        IF @ended THEN
			LEAVE ciclo_text;
        END IF;  
    END LOOP ciclo_text;
    
    OPEN numidentifier;
    ciclo_num: LOOP
		FETCH numidentifier INTO cant;
        set pc=Concat(pc,cant);
        
		IF @ended THEN
			LEAVE ciclo_num;
        END IF; 
	END LOOP ciclo_num;
    
    select pc as Cod_Product;
    
    insert into productos(Cod_Producto, Descripcion, Id_Receta, Id_Presentacion, Precio, Costo_Unit, Status)
    values(pc, descr, id_rec, id_pres, price, costunit, 'D');

	CLOSE textidentifier;
    CLOSE numidentifier;
    
END
$$
