select * from Emp
select * from tblDep

	SELECT Emp.*, tblDep.depNme 
		FROM Emp LEFT JOIN tblDep ON Emp.depId=tblDep.depId
		
		
