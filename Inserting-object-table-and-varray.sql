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