/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     16/12/2015 13:15:31                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ARTICULOS') and o.name = 'FK_ARTICULO_REFERENCE_TIPO_ART')
alter table ARTICULOS
   drop constraint FK_ARTICULO_REFERENCE_TIPO_ART
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CAT_ESENCIA') and o.name = 'FK_CAT_ESEN_REFERENCE_CAT_CASA')
alter table CAT_ESENCIA
   drop constraint FK_CAT_ESEN_REFERENCE_CAT_CASA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CAT_ESENCIA') and o.name = 'FK_CAT_ESEN_REFERENCE_CAT_TIPO')
alter table CAT_ESENCIA
   drop constraint FK_CAT_ESEN_REFERENCE_CAT_TIPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CAT_FRASCO_ESENCIA') and o.name = 'FK_CAT_FRAS_REFERENCE_CAT_TIPO')
alter table CAT_FRASCO_ESENCIA
   drop constraint FK_CAT_FRAS_REFERENCE_CAT_TIPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLE_FACTURA') and o.name = 'FK_DETALLE__REFERENCE_CAT_FRAS')
alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__REFERENCE_CAT_FRAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLE_FACTURA') and o.name = 'FK_DETALLE__REFERENCE_ARTICULO')
alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__REFERENCE_ARTICULO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLE_FACTURA') and o.name = 'FK_DETALLE__REFERENCE_CAT_ESEN')
alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__REFERENCE_CAT_ESEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLE_FACTURA') and o.name = 'FK_DETALLE__REFERENCE_FACTURA')
alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__REFERENCE_FACTURA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLE_FACTURA') and o.name = 'FK_DETALLE__REFERENCE_CAT_TIPO2')
alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__REFERENCE_CAT_TIPO2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTURA') and o.name = 'FK_FACTURA_REFERENCE_CAT_EMPL')
alter table FACTURA
   drop constraint FK_FACTURA_REFERENCE_CAT_EMPL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FACTURA') and o.name = 'FK_FACTURA_REFERENCE_CAT_CLIE')
alter table FACTURA
   drop constraint FK_FACTURA_REFERENCE_CAT_CLIE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ARTICULOS')
            and   type = 'U')
   drop table ARTICULOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAT_CASA_ESENCIA')
            and   type = 'U')
   drop table CAT_CASA_ESENCIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAT_CLIENTE')
            and   type = 'U')
   drop table CAT_CLIENTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAT_EMPLEADO')
            and   type = 'U')
   drop table CAT_EMPLEADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAT_ESENCIA')
            and   type = 'U')
   drop table CAT_ESENCIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAT_FRASCO_ESENCIA')
            and   type = 'U')
   drop table CAT_FRASCO_ESENCIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAT_TIPO_CONSUMO')
            and   type = 'U')
   drop table CAT_TIPO_CONSUMO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAT_TIPO_ESCENCIA')
            and   type = 'U')
   drop table CAT_TIPO_ESCENCIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAT_TIPO_MEDIDA_FRASCO')
            and   type = 'U')
   drop table CAT_TIPO_MEDIDA_FRASCO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONFIGURACION')
            and   type = 'U')
   drop table CONFIGURACION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DETALLE_FACTURA')
            and   type = 'U')
   drop table DETALLE_FACTURA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FACTURA')
            and   type = 'U')
   drop table FACTURA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPO_ARTICULO')
            and   type = 'U')
   drop table TIPO_ARTICULO
go

/*==============================================================*/
/* Table: ARTICULOS                                             */
/*==============================================================*/
create table ARTICULOS (
   ID_ARTICULO          int                  not null,
   ID_TIPO_ARTICULO     int                  null,
   NOMBRE_ARTICULO      varchar(50)          null,
   STOCK                int                  null,
   FECHA_INGRESO        datetime             null,
   PRECIO_VENTA         decimal(10,2)        null,
   PRECIO_COSTO         decimal(10,2)        null,
   constraint PK_ARTICULOS primary key (ID_ARTICULO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('ARTICULOS') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'ARTICULOS' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Se almacenas otros productos diferentes a las losiones y frascos
   Aquí se registran productos diferentes a perfumes y frascos
   ', 
   'user', @CurrentUser, 'table', 'ARTICULOS'
go

/*==============================================================*/
/* Table: CAT_CASA_ESENCIA                                      */
/*==============================================================*/
create table CAT_CASA_ESENCIA (
   ID_CASA              int                  not null,
   CASA                 varchar(50)          null,
   DESCRIPCION          varchar(300)         null,
   constraint PK_CAT_CASA_ESENCIA primary key (ID_CASA)
)
go

/*==============================================================*/
/* Table: CAT_CLIENTE                                           */
/*==============================================================*/
create table CAT_CLIENTE (
   DOCUMENTO_CLIENTE    varchar(20)          not null,
   NOMBRE               varchar(50)          null,
   TELEFONO             varchar(50)          null,
   EMAIL                varchar(50)          null,
   DIRECCION            varchar(50)          null,
   constraint PK_CAT_CLIENTE primary key (DOCUMENTO_CLIENTE)
)
go

/*==============================================================*/
/* Table: CAT_EMPLEADO                                          */
/*==============================================================*/
create table CAT_EMPLEADO (
   DOCUMENTO_EMPLEADO   varchar(50)          not null,
   NOMBRE               varchar(50)          null,
   TELEFONO             varchar(50)          null,
   DIRECCION            varchar(50)          null,
   constraint PK_CAT_EMPLEADO primary key (DOCUMENTO_EMPLEADO)
)
go

/*==============================================================*/
/* Table: CAT_ESENCIA                                           */
/*==============================================================*/
create table CAT_ESENCIA (
   ID_ESCENCIA          char(6)              not null,
   NOMBRE_ESCENCIA      varchar(50)          null,
   ID_CASA              int                  null,
   ID_TIPO_ESCENCIA     int                  null,
   STOCK_GRAMOS         decimal(10,2)        not null,
   constraint PK_CAT_ESENCIA primary key (ID_ESCENCIA)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('CAT_ESENCIA') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'CAT_ESENCIA' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Esta tabla almacena todas las escencias de los perfumes que se venderan
   ', 
   'user', @CurrentUser, 'table', 'CAT_ESENCIA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CAT_ESENCIA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'STOCK_GRAMOS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CAT_ESENCIA', 'column', 'STOCK_GRAMOS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'registra el stock en gramos que tiene cada bala',
   'user', @CurrentUser, 'table', 'CAT_ESENCIA', 'column', 'STOCK_GRAMOS'
go

/*==============================================================*/
/* Table: CAT_FRASCO_ESENCIA                                    */
/*==============================================================*/
create table CAT_FRASCO_ESENCIA (
   ID_FRASCO            int                  not null,
   NOMBRE_FRASCO        varchar(50)          null,
   ID_MEDIDA            int                  null,
   STOCK                int                  null,
   PRECIO_COSTO         decimal(10,2)        null,
   constraint PK_CAT_FRASCO_ESENCIA primary key (ID_FRASCO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('CAT_FRASCO_ESENCIA') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'CAT_FRASCO_ESENCIA' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Se registran los diferentes francos para la escencias', 
   'user', @CurrentUser, 'table', 'CAT_FRASCO_ESENCIA'
go

/*==============================================================*/
/* Table: CAT_TIPO_CONSUMO                                      */
/*==============================================================*/
create table CAT_TIPO_CONSUMO (
   ID_TIPO_CONSUMO      int                  not null,
   TIPO_CONSUMO         varchar(50)          null,
   DESCRIPCION          varchar(300)         null,
   constraint PK_CAT_TIPO_CONSUMO primary key (ID_TIPO_CONSUMO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('CAT_TIPO_CONSUMO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'CAT_TIPO_CONSUMO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'SE REGISTRAN LOS TIPOS DE CONSUMO
   VENTA LOSION
   RECARGA 
   ADICION
   VENTA OTRO PRODUCTO', 
   'user', @CurrentUser, 'table', 'CAT_TIPO_CONSUMO'
go

/*==============================================================*/
/* Table: CAT_TIPO_ESCENCIA                                     */
/*==============================================================*/
create table CAT_TIPO_ESCENCIA (
   ID_TIPO_ESCENCIA     int                  not null,
   TIPO_ESCENCIA        varchar(50)          null,
   DESCRIPCION          varchar(200)         null,
   constraint PK_CAT_TIPO_ESCENCIA primary key (ID_TIPO_ESCENCIA)
)
go

/*==============================================================*/
/* Table: CAT_TIPO_MEDIDA_FRASCO                                */
/*==============================================================*/
create table CAT_TIPO_MEDIDA_FRASCO (
   ID_MEDIDA            int                  not null,
   NOMBRE_MEDIDA        varchar(30)          null,
   CANT_MEDIDA_GRAMOS   decimal(10,2)        null,
   CANT_MEDIDA_ML       decimal(10,2)        null,
   PRECIO_VENTA         decimal(10,2)        null,
   PRECIO_RECARGA       decimal(10,2)        null,
   PROMOCION            bit                  null,
   constraint PK_CAT_TIPO_MEDIDA_FRASCO primary key (ID_MEDIDA)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('CAT_TIPO_MEDIDA_FRASCO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'CAT_TIPO_MEDIDA_FRASCO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Se registran las diferentes medidas de los frascos 
   30ml 60ml 100ml, etc
   ', 
   'user', @CurrentUser, 'table', 'CAT_TIPO_MEDIDA_FRASCO'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CAT_TIPO_MEDIDA_FRASCO')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PROMOCION')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CAT_TIPO_MEDIDA_FRASCO', 'column', 'PROMOCION'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Sirve para indicar si un producto esta en promocion o no y en base a esto se calcula su precio de promocion ',
   'user', @CurrentUser, 'table', 'CAT_TIPO_MEDIDA_FRASCO', 'column', 'PROMOCION'
go

/*==============================================================*/
/* Table: CONFIGURACION                                         */
/*==============================================================*/
create table CONFIGURACION (
   ID_CONFIG            int                  not null,
   IVA                  decimal(10,2)        null,
   PRECIO_ADICION       decimal(10,2)        null,
   PORCENTAJE_PROMOCION decimal(3,2)         null,
   PORCENTAJE_LIMITE_BALAS decimal(3,2)         null,
   constraint PK_CONFIGURACION primary key (ID_CONFIG)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('CONFIGURACION') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'CONFIGURACION' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Esta tabla almacena la configuracion general del sistema', 
   'user', @CurrentUser, 'table', 'CONFIGURACION'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CONFIGURACION')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PORCENTAJE_LIMITE_BALAS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CONFIGURACION', 'column', 'PORCENTAJE_LIMITE_BALAS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Se registra el porcentaje límite para carga de balas según la cantidad de stock',
   'user', @CurrentUser, 'table', 'CONFIGURACION', 'column', 'PORCENTAJE_LIMITE_BALAS'
go

/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA (
   CONS_FACTURA         int                  identity,
   NUM_FACTURA          int                  null,
   ID_ESCENCIA          char(6)              null,
   ID_FRASCO            int                  null,
   ID_TIPO_CONSUMO      int                  null,
   ID_ARTICULO          int                  null,
   CANTIDAD             decimal(10,2)        null,
   TOTAL                decimal(10,2)        null,
   constraint PK_DETALLE_FACTURA primary key (CONS_FACTURA)
)
go

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   NUM_FACTURA          int                  identity,
   DOCUMENTO_EMPLEADO   varchar(50)          null,
   DOCUMENTO_CLIENTE    varchar(20)          null,
   FECHA_FACTURA        datetime             null,
   IVA                  decimal(10,2)        null,
   TOTAL_FACTURA        decimal(10,2)        null,
   constraint PK_FACTURA primary key (NUM_FACTURA)
)
go

/*==============================================================*/
/* Table: TIPO_ARTICULO                                         */
/*==============================================================*/
create table TIPO_ARTICULO (
   ID_TIPO_ARTICULO     int                  not null,
   TIPO_ARTICULO        varchar(50)          null,
   constraint PK_TIPO_ARTICULO primary key (ID_TIPO_ARTICULO)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TIPO_ARTICULO') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'TIPO_ARTICULO' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Cremas
   otros articulos diferentes a los perfumes
   ', 
   'user', @CurrentUser, 'table', 'TIPO_ARTICULO'
go

alter table ARTICULOS
   add constraint FK_ARTICULO_REFERENCE_TIPO_ART foreign key (ID_TIPO_ARTICULO)
      references TIPO_ARTICULO (ID_TIPO_ARTICULO)
go

alter table CAT_ESENCIA
   add constraint FK_CAT_ESEN_REFERENCE_CAT_CASA foreign key (ID_CASA)
      references CAT_CASA_ESENCIA (ID_CASA)
go

alter table CAT_ESENCIA
   add constraint FK_CAT_ESEN_REFERENCE_CAT_TIPO foreign key (ID_TIPO_ESCENCIA)
      references CAT_TIPO_ESCENCIA (ID_TIPO_ESCENCIA)
go

alter table CAT_FRASCO_ESENCIA
   add constraint FK_CAT_FRAS_REFERENCE_CAT_TIPO foreign key (ID_MEDIDA)
      references CAT_TIPO_MEDIDA_FRASCO (ID_MEDIDA)
go

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_CAT_FRAS foreign key (ID_FRASCO)
      references CAT_FRASCO_ESENCIA (ID_FRASCO)
go

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_ARTICULO foreign key (ID_ARTICULO)
      references ARTICULOS (ID_ARTICULO)
go

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_CAT_ESEN foreign key (ID_ESCENCIA)
      references CAT_ESENCIA (ID_ESCENCIA)
go

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_FACTURA foreign key (NUM_FACTURA)
      references FACTURA (NUM_FACTURA)
go

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_CAT_TIPO2 foreign key (ID_TIPO_CONSUMO)
      references CAT_TIPO_CONSUMO (ID_TIPO_CONSUMO)
go

alter table FACTURA
   add constraint FK_FACTURA_REFERENCE_CAT_EMPL foreign key (DOCUMENTO_EMPLEADO)
      references CAT_EMPLEADO (DOCUMENTO_EMPLEADO)
go

alter table FACTURA
   add constraint FK_FACTURA_REFERENCE_CAT_CLIE foreign key (DOCUMENTO_CLIENTE)
      references CAT_CLIENTE (DOCUMENTO_CLIENTE)
go

