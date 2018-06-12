use db_dival;

alter table recetas auto_increment=1;

insert into Recetas(Id_Categoria, Descripcion, Merma, Id_UniMed, Costo_Kilo, Status)
values(1, 'Cacahuate con Ajo', null, 1, -1, 'D'),
		(1, 'Cacahuate Combinado', null, 1, -1, 'D'),
        (1, 'Cacahuate Enchilado', null, 1, -1, 'D'),
        (1, 'Cacahuate Mixto', null, 1, -1, 'D'),
        (1, 'Cacahuate Sal y Limón', null, 1, -1, 'D'),
        (2, 'Chicharrones', null, 1, -1, 'D'),
        (2, 'Palomitas', 50, 1, -1, 'D'),
        (2, 'Papas Naturales', null, 1, -1, 'D'),
        (3, 'Cacahuate Garapiñado', 200, 1, -1, 'D'),
        (4, 'Pepita', null, 1, -1, 'D'),
        (5, 'Pistache', null, 1, -1, 'D'),
        (5, 'Malanga', null, 1, -1, 'D'),
        (5, 'Camote', null, 1, -1, 'D'),
        (6, 'Arándano', null, 1, -1, 'D');
        