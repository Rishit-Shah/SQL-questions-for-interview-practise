 
SELECT A.NAME AS "EMPLOYEE" from EMPLOYEE A inner join EMPLOYEE b on A.managerID = b.id where A.salary>b.salary;
