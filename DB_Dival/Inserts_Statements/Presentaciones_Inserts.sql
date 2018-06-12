use db_dival;

delete from `presentaciones`;
alter table `presentaciones` auto_increment=1;
insert into `presentaciones`(Cantidad, Id_UniMed, Status)
values(50, 1, 'D'),
		(75, 1, 'D'),
        (100, 1, 'D'),
        (120, 1, 'D'),
        (250, 1, 'D'),
        (500, 1, 'D'),
        (1, 2, 'D');