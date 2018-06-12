use db_dival;

delete from `productos`;
alter table `productos` auto_increment=1;
call sp_insert_and_generateproductcodes(1, 2, 56.5, 7);
call sp_insert_and_generateproductcodes(2, 1, 100, 11);
call sp_insert_and_generateproductcodes(3, 7, 90, 5);
call sp_insert_and_generateproductcodes(4, 3, 79, 20);
call sp_insert_and_generateproductcodes(5, 2, 34, 14);
call sp_insert_and_generateproductcodes(6, 5, 23, 15);
call sp_insert_and_generateproductcodes(7, 7, 78, 20);
call sp_insert_and_generateproductcodes(8, 4, 28, 10);
call sp_insert_and_generateproductcodes(9, 5, 29, 9);
call sp_insert_and_generateproductcodes(10, 6, 18, 9);
call sp_insert_and_generateproductcodes(11, 7, 28, 8);
call sp_insert_and_generateproductcodes(12, 2, 35, 10);
call sp_insert_and_generateproductcodes(13, 1, 76, 10);
call sp_insert_and_generateproductcodes(14, 1, 100, 7);
