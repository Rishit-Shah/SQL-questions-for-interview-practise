select  d.name as Department, e.name as Employee, e.salary as Salary from (
    select *, DENSE_RANK() over (partition by departmentID order by salary desc) as rnk
from Employee
) e
join Department d on d.id=e.departmentID
where e.rnk <=3;
