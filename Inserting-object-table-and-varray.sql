//INSERTING INTO OBJECT COLUMN

//INSERTING INTO RELATIONAL

INSERT INTO sites(site_id, address)
VALUES (3,address_type('22PARKLANE','LONDON','UK'));

//INSERTING INTO object_tables

INSERT INTO address(street,city,country)
VALUES('HIGHWAY','NORTHAMPTON','UK');

//-----------------------INSERTING INTO TABLE REFERENCE TO OBJECT_TABLE--------------------------------

INSERT INTO students (student_id,address)
	SELECT 1234, REF(a);
	FROM addresses a
	WHERE street="67 KENISNON AVENUE';

//INSERTING REF using UPDATE

INSERT INTO instructors(instructor_id)
	VALUES(123),
	UPDATE instructor SET address=(
		SELECT REF(a)
		FROM addresses a
		WHERE a.street='127 AIRPORT ROAD')
			WHERE instructor_id=123;

//Insert into multidimensional VARRAY (sites_classroom)

INSERT INTO sites_classroom (sites_id, classroom)
VALUES (1, classroom_varray_type(
    classroom_type('A1', 101, 40),
    classroom_type('B1', 102, 35),
    classroom_type('C1', 103, 25)
));

//Insert into VARRAY table (potential_clients)

INSERT INTO potential_clients (client_id, contacts)
VALUES (1, contact_varray_type('EMAIL', 'PHONE', 'WHATSAPP'));


