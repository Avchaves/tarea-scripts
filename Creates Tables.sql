use UH_almacen 

CREATE TABLE clientes (
id INT IDENTITY PRIMARY KEY,     
nombre VARCHAR(50),     
--apellido VARCHAR(50),     
direccion VARCHAR(100),     
telefono VARCHAR(20) );

CREATE TABLE productos (
id_producto INT IDENTITY PRIMARY KEY,
nombre VARCHAR(100),
precio DECIMAL(10,2) );

CREATE TABLE ordenes (     
id_orden INT IDENTITY PRIMARY KEY,     
id_cliente INT,     fecha DATE,     
total DECIMAL(10,2),     
FOREIGN KEY (id_cliente) REFERENCES clientes(id) );

Insert into ordenes 
values ('02/05/2023','')
select * from  ordenes

CREATE TABLE detalles_ordenes (
id_detalle INT IDENTITY PRIMARY KEY,
id_orden INT,
id_producto INT,     
cantidad INT,     
FOREIGN KEY (id_orden) REFERENCES ordenes(id_orden),
 FOREIGN KEY (id_producto) REFERENCES productos(id_producto) );


create procedure Sp_ConsultarProducto
@id_producto int,
@nombre VARCHAR(100),
@precio DECIMAL(10,2)

as
	begin 
	 select * from  productos
	 end
create procedure Sp_IngresarProducto
declare @nombre VARCHAR(100)
declare @precio DECIMAL(10,2)
as

	begin 
	 insert into productos (nombre,precio) values (@nombre,@precio)
	 end

create procedure Sp_ConsultarOrden
@id_orden INT,     
@id_cliente INT,     
@fecha DATE,     
@total DECIMAL(10,2)

as
	begin 
	 select * from  ordenes
	 end





