﻿
CREATE TABLE productos(

id int primary key,

nombre varchar (10)not null,

fechaCad date not null,

cantidad int not null,

precioUni int not null,

tipoProducto varchar(10)not null
);

insert into productos (nombre,fechaCad,cantidad,
precioUni,tipoProducto)

values ('lapiz',0,100,0.50,'oficina'),
('martillo',05-05-2018,300,3.00,'herramienta'),
('camiseta',15-06-2020,600,10.00,'vestimenta'),
('cloro',12-12-2020,80.2.00,'aseo'),
('lapto',0 ,700,1.700,'tecnologia');

CREATE TABLE tipoProducto(

id int primary key,

nombreTipo varchar (10) not null
);

insert into tiposProductos (nombreTipo)
values('herramienta');


CREATE TABLE detalleFacturas(

id int primary key,

precioDecimal int not null,

cantidad int not null,

valorTotal int not null,

foreign key (idtipoProducto) REFERENCES producto(idtipoProducto)

);
insert into detalleFactura(producto,factura,precioDecimal,cantidad,valorTotal)


values('shampoo',2345677673,6.45,100,12.90),
 ('zapatos',2549874563,120.00,1,125.00),
('libros',164875216,2.40,500,10.60),
('cloro',1234566552,1.30,200,2.50),
('martillo',1235567676,0.70,8,1.19);


CREATE TABLE facturas(

id int primary key,

numFactura int not null,

fechaFactura int not null,

ivaDecimal int not null,

totalDecimal int not null,

idpersona int not null
);

insert into facturas(numFactura,fechaFactura,ivaDecimal,totalDecimal,persona)


values(1,12-05-2018,0.80,1.00,'pedro'),
(2,25-08-2015,0.50,2.10,'andres')

CREATE TABLE persona(

id int primary key,

nombre int not null,

direccion varchar (50)not null,

telefono varchar (10) not null
);


CREATE TABLE proveedores(

id int primary key,

ruc varchar (20)not null,

foreign key (idpersona) references persona(idpersona)
);


CREATE TABLE empleados(

id int primary key,

fechaInicio date not null,

sueldo int not null,

foreign key (idpersona) references persona(idpersona)
);



CREATE TABLE cliente(

id int primary key,

foreign key (idpersona) references persona(idpersona)
);



CREATE TABLE proveedorProducto(

id int primary key,

 foreign key (idproveedor) references proveedor(idproducto)

);



CREATE TABLE proveedorBodegas(

id int primary key,

cantidad int not null,

foreign key (idbodega) references bodega(idproducto)

);



CREATE TABLE bodega(

id  int primary key,

foreign key (idproducto) references producto(idproducto)

);



CREATE TABLE tipoCedula(

id int primary key,

foreign key (cedula) references cedula(idruc)

);



CREATE TABLE naturales (

id int primary key,

foreign key (cedula) references cedula(cedula)
);



CREATE TABLE juridico(

id int primary key,

ruc varchar (20)not null
);