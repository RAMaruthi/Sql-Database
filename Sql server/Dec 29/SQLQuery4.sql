select * from Emp

select * from tblDep

select empName , empSalary from Emp

SELECT empName, COALESCE(depId,0) AS depId FROM Emp WHERE depId IS NULL

select max (empSalary) as MaxSalary, min (empSalary) as minsalary,avg (empSalary) as Avgsalary from Emp


select Emp.empAdd ,count(empName) as empCount from Emp
group by Emp.empAdd


select Emp.empAdd ,AVG(empSalary) as Avgsalary from Emp
group by Emp.empAdd


update Emp
set depId=3
where empId %4=0

