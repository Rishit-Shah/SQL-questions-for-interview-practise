SELECT project_id
FROM project
GROUP BY project_id
HAVING COUNT(employee_id) = (
    SELECT MAX(emp_count)
    FROM (
        SELECT COUNT(employee_id) AS emp_count
        FROM project
        GROUP BY project_id
    ) t
);
