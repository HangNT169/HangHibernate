-- DROP SCHEMA dbo;

CREATE DATABASE hibernate_demo;
-- hibernate_demo.dbo.category definition

-- Drop table
USE hibernate_demo;
-- DROP TABLE hibernate_demo.dbo.category;

CREATE TABLE category (
	id bigint IDENTITY(0,1) NOT NULL,
	category_code varchar(10)  NULL,
	category_name nvarchar(50)  NULL,
	CONSTRAINT category_PK PRIMARY KEY (id)
);


-- hibernate_demo.dbo.product definition

-- Drop table

-- DROP TABLE hibernate_demo.dbo.product;

CREATE TABLE product (
	id bigint IDENTITY(0,1) NOT NULL,
	category_id bigint NULL,
	product_code varchar(20)  NULL,
	product_name nvarchar(50) NULL,
	price float NULL,
	description nvarchar(4000) NULL,
	CONSTRAINT product_PK PRIMARY KEY (id),
	CONSTRAINT product_FK FOREIGN KEY (category_id) REFERENCES category(id)
);

