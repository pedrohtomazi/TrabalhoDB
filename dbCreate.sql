create database fazendasantahelena;
use fazendasantahelena;

create table Rancho (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    coords INT(255),
    dtaCreation datetime NOT NULL
);