SELECT
  employees.name AS ename,
  employees.role AS erole,
  departaments.name AS dname
FROM
  `aerobic-gantry-450916-f4.employee_data.employees` AS employees
FULL JOIN
  `aerobic-gantry-450916-f4.employee_data.departaments` AS departaments
  ON employees.department_id = departaments.department_id
  --Retorna as colunas de ambas as tabelas indepente se tem ou não dados.