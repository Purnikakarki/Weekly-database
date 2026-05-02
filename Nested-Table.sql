/*Nested Table.

Step 1: Create the object type
*/

CREATE OR REPLACE address_type AS OBJECT(
street VARCHAR2(25),
city VARCHAR2(25),
country VARCHAR2(20);
/
SHOW ERRORS

//Step2: Use the type definition to create the nested table object type.

CREATE TYPE address_table AS TABLE OF address_type;
/


//Step 3: Use the nested table in a relational table.

CREATE TABLE area(
area_id VARCHAR2(10),
address address_table)
NESTED TABLE nested_column_name STORE AS nested_address;


