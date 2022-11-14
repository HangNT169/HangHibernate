-- DROP SCHEMA dbo;

CREATE DATABASE hibernate_demo;
-- hibernate_demo.dbo.category definition

-- Drop table
USE hibernate_demo;
-- DROP TABLE hibernate_demo.dbo.category;

CREATE TABLE hibernate_demo.category (
	id bigint IDENTITY(0,1) NOT NULL,
	category_code varchar(10)  NULL,
	category_name nvarchar(50)  NULL,
	CONSTRAINT category_PK PRIMARY KEY (id)
);


-- hibernate_demo.dbo.product definition

-- Drop table

-- DROP TABLE hibernate_demo.dbo.product;

CREATE TABLE hibernate_demo.product (
	id bigint IDENTITY(0,1) NOT NULL,
	category_id bigint NULL,
	product_code varchar(20)  NULL,
	product_name nvarchar(50) NULL,
	price float NULL,
	description nvarchar(4000) NULL,
	CONSTRAINT product_PK PRIMARY KEY (id),
	CONSTRAINT product_FK FOREIGN KEY (category_id) REFERENCES category(id)
);

INSERT INTO hibernate_demo.dbo.category
(id, category_code, category_name)
VALUES(0, N'C01', N'Category 1');
INSERT INTO hibernate_demo.dbo.category
(id, category_code, category_name)
VALUES(1, N'C02', N'Category 2');
INSERT INTO hibernate_demo.dbo.category
(id, category_code, category_name)
VALUES(2, N'C03', N'Category 3');

INSERT INTO hibernate_demo.dbo.product
(id, category_id, product_code, product_name, price, description)
VALUES(0, 1, N'P01', N'Product 1', 10.0, N'abc');
INSERT INTO hibernate_demo.dbo.product
(id, category_id, product_code, product_name, price, description)
VALUES(1, 2, N'P02', N'Product 2', 11.0, N'hihi');
INSERT INTO hibernate_demo.dbo.product
(id, category_id, product_code, product_name, price, description)
VALUES(2, 1, N'P03', N'Product 3', 22.0, N'test');
