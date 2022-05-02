
-- Find a list of employee, branch names & client names
# must have same number of columns from all the tables
# must have similar data types
select employee.first_name as My_Table
from employee
UNION
select branch.branch_name
from branch
UNION
select client_name
from client;


-- Find a list of all clients & branch suppliers' names
SELECT client.client_name AS NonEmployee_Entities, client.branch_id AS Branch_ID
FROM client
UNION
SELECT branch_supplier.supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- Find a list of all money spent or earned by company
select salary
from employee
union
select total_sales
from works_with;