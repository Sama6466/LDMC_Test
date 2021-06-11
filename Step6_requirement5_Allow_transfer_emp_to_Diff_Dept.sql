----5)Create an appropriate executable database object to allow the transfer of an Employee to a different Department

create or replace PROCEDURE TRANS_DEPT(
      P_EMPLOYEE_ID NUMBER,
      P_DEPARTMENT_ID NUMBER
) AS
    
    A_DEPARTMENT_ID NUMBER;
    C_DEPT_ID NUMBER;
BEGIN
     A_DEPARTMENT_ID :=P_DEPARTMENT_ID;
     C_DEPT_ID :=0;

     SELECT DEPARTMENT_ID INTO C_DEPT_ID FROM DEPARTMENT WHERE DEPARTMENT_ID=A_DEPARTMENT_ID;
     
  IF C_DEPT_ID IS NOT NULL
  -- A_DEPARTMENT_ID IN (C_DEPT_ID)
  THEN

  UPDATE EMPLOYEE SET DEPARTMENT_ID=A_DEPARTMENT_ID WHERE EMPLOYEE_ID=P_EMPLOYEE_ID;
  DBMS_OUTPUT.PUT_LINE('DEPARTMENT UPDATED');
  END IF; 
  
EXCEPTION 
   WHEN no_data_found THEN 
      dbms_output.put_line('No such DEPARTMENT!'); 
   WHEN others THEN 
      dbms_output.put_line('Error!'); 
END;
/