use db_dival;

delete from `detalle_venta`;
alter table `detalle_venta` auto_increment=1;
insert into `detalle_venta`(Id_Venta, Cod_Producto, Cantidad, Status)
values(1, 'BCC50', 5, 'D'),
		(1, 'BCS75', 6, 'D'),
        (1, 'FPN120', 10, 'D'),
        (2, 'BCC50', 5, 'D'),
        (3, 'FPN120', 45, 'D'),
        (4, 'BCS75', 23, 'D'),
        (5, 'BCC50', 34, 'D'),
        (6, 'FPN120', 67, 'D'),
        (6, 'TP1', 98, 'D'),
        (6, 'BCC50', 12, 'D'),
        (7, 'FPN120', 6, 'D'),
        (8, 'BCC50', 21, 'D'),
        (9, 'TP1', 6, 'D'),
        (10, 'FPN120', 1, 'D'),
        (11, 'BCC50', 1, 'D'),
        (12, 'BCS75', 2, 'D'),
        (13, 'FPN120', 3, 'D'),
        (14, 'TP1', 100, 'D'),
        (15, 'BCS75', 5, 'D'),
        (16, 'GCG250', 5, 'D'),
        (17, 'FPN120', 8, 'D'),
        (18, 'BCS75', 9, 'D'),
        (19, 'GCG250', 10, 'D'),
        (20, 'BCC50', 19, 'D'),
        (21, 'FPN120', 20, 'D'),
        (22, 'BCC50', 25, 'D'),
        (23, 'BCS75', 24, 'D'),
        (24, 'BCS75', 23, 'D'),
        (25, 'BCC50', 26, 'D'),
        (26, 'TC50', 28, 'D'),
        (27, 'BCC50', 34, 'D'),
        (28, 'TC50', 43, 'D'),
        (29, 'FPN120', 12, 'D'),
        (30, 'BCC50', 5, 'D'),
        (31, 'TP1', 5, 'D'),
        (32, 'BCC50', 21, 'D'),
        (33, 'FPN120', 2, 'D'),
        (33, 'BCC50', 2, 'D'),
        (34, 'GCG250', 5, 'D'),
        (35, 'BCC50', 6, 'D'),
        (36, 'TC50', 5, 'D');