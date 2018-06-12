Use DB_Dival;
Create User 'administracion'@'localhost' Identified by 'admin2';
Grant all privileges on DB_Dival.* to 'administracion'@'localhost' with grant option;
----------------------------------------------------------------------------------------
Flush privileges;