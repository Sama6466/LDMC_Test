
--RUN INSTRUCTIONS:
--- To run and check if the procedures and function are working Run statements given below after successful compilation
--- To Run requirement 3 please run the below statements
    ----------TO RUN--------------------

SET SERVEROUTPUT ON;
BEGIN
NEW_employee(10,'TEST','MANAGER',NULL,'10-OCT-1994',10000000,2);
END;
---To Run requirement 4 please run the below statements

---------------TO RUN-------------------------------------------------------------

SET SERVEROUTPUT ON;
BEGIN 
INC_OR_DEC_SALARY(90002,'GOOD',1);
end;

-----To Run requirement 5 please run the below statements

------TO RUN----------------------------------------------------------------

SET SERVEROUTPUT ON;
BEGIN
TRANS_DEPT(90001,2);
END;

-----To Run requirement 6 please run the below statements

----TO RUN--------------------
SET SERVEROUTPUT ON;
BEGIN 
DBMS_OUTPUT.PUT_LINE(RET_SALARY(90001));
END;


