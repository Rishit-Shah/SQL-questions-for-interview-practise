SELECT 
  t.pay_month,
  t.department_id,
  CASE
    WHEN t.dept_avg > (
      SELECT AVG(s2.amount)
      FROM salary s2
      WHERE TO_CHAR(s2.pay_date, 'YYYY-MM') = t.pay_month
    ) THEN 'higher'
    WHEN t.dept_avg < (
      SELECT AVG(s2.amount)
      FROM salary s2
      WHERE TO_CHAR(s2.pay_date, 'YYYY-MM') = t.pay_month
    ) THEN 'lower'
    ELSE 'same'
  END AS comparison
FROM (
  SELECT 
    TO_CHAR(s.pay_date, 'YYYY-MM') AS pay_month,
    e.department_id,
    AVG(s.amount) AS dept_avg
  FROM salary s
  JOIN employee e ON s.employee_id = e.employee_id
  GROUP BY TO_CHAR(s.pay_date, 'YYYY-MM'), e.department_id
) as t
ORDER BY t.pay_month, t.department_id;
