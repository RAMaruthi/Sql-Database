create procedure insterEmp
(
@empName varchar(50),
@empAdd varchar(50),
@empSalary int,
@depId int,
@empId int output
)

as insert into Emp values(@empName,@empAdd,@empSalary,@depId) set @empId=@@IDENTITY

declare @empId int 

exec insterEmp
@empName='Maruty',
@empAdd='Dvg',
@empSalary=2333300,
@depId=1,
@empId = @empId output

select @empId as '@empId'

go

create function createDate(@date Date)
returns varchar(50)

as begin 
declare @retval varchar(50)
set @retval=DATENAME(day,@date)+DATENAME(month,@date)+DATENAME(year,@date)
return @retval
end

print dbo.createDate(getdate())

create function createage(@dob date)
returns varchar(50)
as 
begin declare @date varchar(50)
set 

select * from Emp


create table tblcustomer (
cstIdx int primary key,cstName varchar(50),cstAdd varchar(50),Billdate Date default getdate(),Billamout money)

create table customer_audit(
Id int primary key identity(1,1),
details varchar(200) )

drop table customer_audit
alter trigger onInsertcust
on tblcustomer
for insert 
as
begin
declare @id int
select @id=cstIdx from inserted
insert into customer_audit values('custumoer with Id'+(CAST(@id as varchar))+'is inserted into database'+ cast(getdate() as varchar(50)))

end
alter  trigger ondeletcust
on tblcustomer
for delete 
as
begin
declare @id int
select @id=cstIdx from deleted
insert into customer_audit values('custumoer with Id'+(CAST(@id as varchar))+'is deleted into database'+ cast(getdate() as varchar(50)))

end

delete from tblcustomer where cstIdx=1438;

insert into tblcustomer values(1438,'Sql manjo','DVG','12/12/2022',355353)

select * from customer_audit

select * from tblcustomer

create table tblcontact(contId int primary key identity(1,1),
contactName varchar(50),
contactCity varchar(200))

insert into tblcontact(contactName,contactCity)
select empName,empAdd from Emp where empId<=100

select * from tblcontact