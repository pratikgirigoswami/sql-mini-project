
-- Add the extra branch
INSERT INTO branch VALUES(4, "Buffalo", NULL, NULL);
select * from branch;

-- find all branches and names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch    -- LEFT JOIN, RIGHT JOIN -- also called inner join
ON employee.emp_id = branch.mgr_id;

-- trying out left and right joins
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id; -- remember we added extra raw in the beginning of the code