
/*Object type creation*/ 

CREATE OR REPLACE TYPE address_type AS OBJECT(
street VARCHAR2(25),
city VARCHAR2(25),
country VARCHAR2(20));
/
SHOW ERRORS


/*CREATE TABLE tablename OF object_type_name;*/

CREATE TABLE addressess OF adress_type;

)

/*Instructor table created.*/
CREATE TABLE sites(
site_id NUMBER(6),
address address_type
);

/*DROP object-type type*/
DROP TYPE address_type;

/*DROP Object-table*/
DROP TABLE addressess;


/*--------------VARRAY------------------*/

/* Creating Simple varray*/
CREATE TYPE name_varray_type AS
VARRAY(10) OF VARCHAR2(20);
/

/*CREATING multidimensional varray*/
CREATE TYPE varray_type_name AS
VARRAY(size) OF object_type_name;
/

/*Creating simple dimensional varray*/

CREATE TYPE classroom_varray_type AS
VARRAY (10) OF VARCHAR2(20);
/

/*Relational table varray created */
CREATE TABLE sites
site_id NUMBER(6),
classroom classroom_varray_type);

ALTER TABLE sites
ADD(classroom classroom_varray_type);

