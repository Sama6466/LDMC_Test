-----6). Create an appropriate executable database object to return the Salary for an Employee.



create or replace FUNCTION RET_SALARY(
      P_EMPLOYEE_ID IN NUMBER)
      RETURN NUMBER
       IS
       V_SALARY NUMBER :=0;
BEGIN
  SELECT SALARY INTO V_SALARY FROM EMPLOYEE WHERE EMPLOYEE_ID=P_EMPLOYEE_ID;
  RETURN V_SALARY;

EXCEPTION 
   WHEN no_data_found THEN 
      V_SALARY :='NO SUCH EMPLOYEE';
      RETURN V_SALARY;
END;
/