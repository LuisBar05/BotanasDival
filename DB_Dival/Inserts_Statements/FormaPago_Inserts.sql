use db_dival;

delete from `forma_pago`;

alter table `forma_pago` auto_increment=1;

insert into `forma_pago`(Tipo_Pago, Status)
values('Cheque', 'D'),
		('Depósito', 'D'),
        ('Efectivo', 'D');
        
        
