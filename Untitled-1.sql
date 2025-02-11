
begin 
DBMS_OUTPUT.PUT_LINE('hello world');
END;

--variables in PL/sql

/*
    <variable name> <data_type>(length/size)
    **length/ size is optional for more numerical data types


    assigning values 

    variable := new value;
    
*/
DECLARE
    msg VARCHAR(100);
BEGIN
    msg:='hello world';
    FOR i IN 1..3 LOOP
        DBMS_OUTPUT.PUT_LINE(msg);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(msg); 
     DBMS_OUTPUT.PUT_LINE('MESSAGE : '||msg);     
    END;

    ACCEPT _name CHAR PROMPT 'Enter your name: ';
    DECLARE
        name_input CHAR(100);
    BEGIN
        name_input := '&_name';
        DBMS_OUTPUT.PUT_LINE('Hello, ' || name_input);
    END;
    
