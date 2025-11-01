 select d.name as Department, e.name as Employee, e.salary as Salary from Employee e join department d on e.departmentId=d.id where (e.departmentId, e.salary)IN (
    select departmentId, max(salary) from employee 
    group by departmentId
 );
