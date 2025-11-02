select p.project_id, e.employee_id from project p  join employee e on p.employee_id=e.employee_id 
where (p.project_id, e.experience_years) IN
 (
    select p2.project_id, max(e2.experience_years) from project p2 
    join employee e2 on p2.employee_id = e2.employee_id group by p2.project_id
);
